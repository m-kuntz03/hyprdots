"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.activate = void 0;
const vscode = require("vscode");
function activate(context) {
    let disposable = vscode.commands.registerCommand('sludgevs.helpMe', async () => {
        const webViewPanel = vscode.window.createWebviewPanel('videoPlayer', 'STIM Player', vscode.ViewColumn.Two, {
            enableScripts: true,
            retainContextWhenHidden: true,
        });
        webViewPanel.webview.html = getVideoPlayerHTML();
    });
    context.subscriptions.push(disposable);
}
exports.activate = activate;
function getRandomVimeoId() {
    const vimeoVideoIds = [
        '822192824',
        '822195781',
        '823107398',
        '823114138'
    ];
    const randomIndex = Math.floor(Math.random() * vimeoVideoIds.length);
    return vimeoVideoIds[randomIndex];
}
function getVideoPlayerHTML() {
    const vimeoVideoId = getRandomVimeoId();
    return `<!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="Content-Security-Policy" content="default-src 'none'; img-src vscode-resource: https:; script-src 'unsafe-inline'; style-src vscode-resource: 'unsafe-inline'; frame-src https:;">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Video Player</title>
            <style>
                body, html {
                    margin: 0;
                    padding: 0;
                    height: 100%;
                    width: 100%;
                    overflow: hidden;
                    display: flex;
                    flex-direction: column;
                }
                iframe {
                    width: 100%;
                    height: 100%;
                }
                #controls {
                    display: flex;
                    justify-content: center;
                    padding: 5px;
                }
                #new-video-button {
                    padding: 5px 10px;
                    background-color: white;
                    border: none;
                    cursor: pointer;
                }
            </style>
            <script>
                function adjustAspectRatio() {
                    const iframe = document.querySelector('iframe');
                    const aspectRatio = 16 / 9;
                    const width = window.innerWidth;
                    const height = width / aspectRatio;
                    iframe.style.height = \`\${height}px\`;
                }
                function loadNewVideo() {
                    const vimeoVideoId = getRandomVimeoId();
                    const iframe = document.querySelector('iframe');
                    iframe.src = 'https://player.vimeo.com/video/' + vimeoVideoId + '?autoplay=1';
                }
                function getRandomVimeoId() {
                    const vimeoVideoIds = [
                    '822192824', 
                    '822195781',
                    '823107398',
                    '823114138'
                ];
                    const randomIndex = Math.floor(Math.random() * vimeoVideoIds.length);
                    return vimeoVideoIds[randomIndex];
                }
                window.addEventListener('resize', adjustAspectRatio);
            </script>
        </head>
        <body onload="adjustAspectRatio()">
            <iframe src="https://player.vimeo.com/video/${vimeoVideoId}?autoplay=1" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
            <div id="controls">
                <button id="new-video-button" onclick="loadNewVideo()">New video</button>
            </div>
        </body>
        </html>`;
}
//# sourceMappingURL=extension.js.map