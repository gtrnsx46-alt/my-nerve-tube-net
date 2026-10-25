# My Nerve Tube Net — 公開手順

## フォルダ構成
```
index.html              アプリ本体
manifest.webmanifest    ホーム画面追加/PWAの設定（名前・アイコン・全画面表示）
sw.js                   オフライン用キャッシュ（https配信時のみ有効）
icons/                  アイコン一式（apple-touch-icon.png = iPhone用 180px）
start_nerve_net.bat     PCでローカル確認用（http://localhost:8000）
```
**このフォルダ構成のまま**公開してください（index.html と icons/ の位置関係が崩れるとアイコンが出ません）。

## おすすめ：GitHub Pages（無料・ホーム画面アイコンが確実に出る）
1. GitHub で新しいリポジトリを作成（例: `my-nerve-tube-net`、Public）
2. 「Add file → Upload files」でこのフォルダの中身を全部ドラッグ＆ドロップ → Commit
3. Settings → Pages → Branch を `main` / `/(root)` にして Save
4. 数分後に `https://<ユーザー名>.github.io/my-nerve-tube-net/` で公開
5. iPhone の Safari でそのURLを開き、共有ボタン →「ホーム画面に追加」

※ もっと手軽にするなら Netlify Drop（https://app.netlify.com/drop）にフォルダごとドラッグするだけでも公開できます。

## Google サイトを使う場合
Google サイトの「埋め込み → 埋め込みコード」は、貼ったHTMLをサイト内の小さな枠（iframe）の中に表示します。
- `<head>` に書いたアイコン・manifest は Google サイト側には反映されません。
  ホーム画面のアイコンは Google サイトが決めるもの（設定 → ブランド画像 → ファビコン）になり、
  このデザインのアイコンがきれいに出るかは保証できません。
- 埋め込み枠は高さが固定で、全画面アプリのような表示にはなりません。

**組み合わせ案：** 本体は GitHub Pages に置き、Google サイトには
「埋め込み → URL」で GitHub Pages のURLを入れる（または大きなリンクボタンを置く）。
こうすると Google サイトのページとしても見せられ、iPhone では GitHub Pages のURLを直接ホーム画面に追加すれば専用アイコン＋全画面で使えます。

どうしても Google サイトだけで完結させたい場合は、index.html の中身をそのまま「埋め込みコード」に貼り付けてください（アイコン画像は表示されなくても動作します）。ファビコンには `icons/icon-512.png` を指定すると近い見た目になります。

## データについて
ストック・履歴・続きから再生の位置・APIキーは、**開いた端末のブラウザ内**にだけ保存されます。
PCとiPhoneで別々になるので、移行したいときは 設定 → DATA の「書き出し / 読み込み」を使ってください。
ホーム画面から開いたアプリとSafariで開いたページでも保存場所が別になることがあります。
