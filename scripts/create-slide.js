#!/usr/bin/env node
import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'fs';
import { join } from 'path';
import { execSync } from 'child_process';
import readline from 'readline';

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function question(query) {
  return new Promise(resolve => rl.question(query, resolve));
}

async function createSlide() {
  console.log('📝 新規スライドを作成します\n');

  // Get current date
  const now = new Date();
  const currentYear = now.getFullYear();
  const currentMonth = String(now.getMonth() + 1).padStart(2, '0');
  const suggestedDate = `${currentYear}-${currentMonth}`;

  // Get date
  const dateInput = await question(`📅 日付 (YYYY-MM形式, デフォルト: ${suggestedDate}): `);
  const date = dateInput.trim() || suggestedDate;

  // Validate date format
  if (!/^\d{4}-\d{2}$/.test(date)) {
    console.error('❌ 日付形式が正しくありません (YYYY-MM)');
    rl.close();
    process.exit(1);
  }

  // Get topic
  const topic = await question('🎯 トピック名: ');
  if (!topic.trim()) {
    console.error('❌ トピック名は必須です');
    rl.close();
    process.exit(1);
  }

  rl.close();

  const presentationName = `${date}-${topic.trim()}`;
  const presentationDir = join(process.cwd(), 'presentations', presentationName);

  // Check if directory already exists
  if (existsSync(presentationDir)) {
    console.error(`❌ ディレクトリが既に存在します: presentations/${presentationName}`);
    process.exit(1);
  }

  console.log(`\n🚀 プレゼンテーション作成中: ${presentationName}`);

  // Create directories
  mkdirSync(presentationDir, { recursive: true });
  mkdirSync(join(presentationDir, 'public', 'images'), { recursive: true });

  // Create package.json
  const packageJson = {
    "name": presentationName,
    "type": "module",
    "private": true,
    "scripts": {
      "dev": "slidev --open",
      "build": "slidev build",
      "export": "slidev export",
      "export:pdf": "slidev export --format pdf",
      "export:png": "slidev export --format png",
      "clean": "rimraf dist node_modules/.slidev"
    }
  };

  writeFileSync(
    join(presentationDir, 'package.json'),
    JSON.stringify(packageJson, null, 2)
  );

  // Create empty slides.md
  const slidesContent = `---
# Write your slides here
---

`;

  writeFileSync(join(presentationDir, 'slides.md'), slidesContent);

  console.log('✅ ファイル作成完了');

  // Install dependencies
  console.log('📦 依存関係をインストール中...');
  try {
    execSync('npm install', { 
      cwd: presentationDir, 
      stdio: 'inherit' 
    });
    console.log('✅ 依存関係のインストール完了');
  } catch (error) {
    console.error('❌ 依存関係のインストールに失敗しました:', error.message);
    process.exit(1);
  }

  console.log(`\n🎉 新規スライド作成完了!`);
  console.log(`\n📂 作成されたディレクトリ: presentations/${presentationName}`);
  console.log(`\n🚀 開発を始めるには:`);
  console.log(`   cd presentations/${presentationName}`);
  console.log(`   npm run dev`);
}

createSlide().catch(error => {
  console.error('❌ エラーが発生しました:', error.message);
  process.exit(1);
});