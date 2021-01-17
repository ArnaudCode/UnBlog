<script>
  import 'normalize.css';
  import { Route } from 'tinro';

  import Navbar from './Navbar.svelte';
  import routes from '../startup/client/routes';

  let appElement = document.getElementById('app');

  function toggleNav() {
    appElement.classList.toggle('navbarHidden');
  }

</script>

<Navbar {routes} />

{#each routes as route}
  <Route path={route.path}>
    <main>
      <h1>{route.name}</h1>
      <button on:click={toggleNav}>toggle</button>
    </main>
  </Route>
{/each}

<style>
  main {
    position: absolute;
    left: 7.5rem;
    padding: 1rem;
    transition: left .3s;
  }

  main h1 {
    text-transform: capitalize;
    margin: 0;
  }

</style>
