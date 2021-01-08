<script>
  import 'normalize.css';
  import { Route, router } from 'tinro';
  import { fade } from 'svelte/transition';
  import Navbar from './Navbar.svelte';
  import Card from './Card.svelte';
</script>

<Navbar/>
<div id="page">
  <main>
    <!-- <Transition> -->
      <Route path="/">hey</Route>
      <Route path="/home">home</Route>
      <Route path="/blog">blog</Route>
    <!-- </Transition> -->
  </main>
</div>

<style>

#page {
  padding-top: 1em;
  padding-bottom: 1em;
  margin-left: 12.5vw;
  position: relative;
}

main {
  width: 37.5vw;
}

aside {
  /* position: fixed;
  top: 0;
  right: 0;
  bottom: 0; */
  width: 50vw;
  padding: 1em;
  background: lightgray;
  /* border: black solid 1px; */
}

</style>
