import "./style.css";
import Reveal from "reveal.js";
// @ts-ignore
import Markdown from "reveal.js/plugin/markdown/markdown.esm.js";
// @ts-ignore
import RevealHighlight from "reveal.js/plugin/highlight/highlight.js";

let deck = new Reveal({plugins: [Markdown, RevealHighlight]});
deck.initialize();
