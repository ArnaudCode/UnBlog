<script>
  import 'normalize.css';
  import { Route } from 'tinro';
  import Navbar from './Navbar.svelte';
  import Page from './Page.svelte';
</script>

<Navbar/>
<!-- <Page /> -->
<main>
  <Route path="/">home</Route>
  <Route path="/blog">blog</Route>
  <Route path="/stories">stories</Route>
  <Route path="/chat">chat</Route>
</main>

<style>

  main {
    padding-top: 1em;
    padding-bottom: 1em;
    margin-left: 12.5vw;
    position: relative;
    width: 37.5vw;
  }

</style>
