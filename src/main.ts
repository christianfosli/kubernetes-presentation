import "./style.css";
import Reveal from "reveal.js";
// @ts-ignore
import Markdown from "reveal.js/plugin/markdown/markdown.esm.js";

let deck = new Reveal({plugins: [Markdown]});
deck.initialize();
