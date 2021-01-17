<script>
  import { active } from 'tinro';
  export let routes;
</script>

<nav on:click|preventDefault role="navigation">
  {#each routes as route}
    <a href={route.path} use:active exact={route.exact}>{route.name}</a>
  {/each}
</nav>

<style>
  nav {
    position: fixed;
    top: 0; left: 0; bottom: 0;
    width: 7.5rem;
    padding-top: .75rem;
    padding-bottom: .75rem;
    background-color: lightgray;
    display: flex;
    flex-flow: column;
    transition: left .3s;
  }

  a {
    text-decoration: none;
    color: black;
    height: 2rem;
    padding-right: 0.75rem;
    display: flex;
    justify-content: flex-end;
    align-items: center;
    margin-bottom: .5rem;
    border-right: 0 solid white;
    transition: border-right .3s;
  }

  a:hover {
    border-right-width: 0.5rem;
  }

  :global(nav a.active) {
    border-right: 0.5rem solid black !important;
  }

</style>
