# AGW
Learning Rust by following the wasm wgpu tutorial:
https://sotrh.github.io/learn-wgpu/


## Web
Use the following html to load the wasm file:
```html
<body id="agw-wasm">
  <script type="module">
      import init from "./pkg/AGW.js";
      init().then(() => {
          console.log("WASM Loaded");
      });
  </script>
</body>
```