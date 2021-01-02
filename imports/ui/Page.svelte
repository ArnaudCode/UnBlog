<script>
  import Card from './Card.svelte';
</script>

<div id="page">
  <main>
    <Card />
    <Card />
    <Card />
    <Card />
    <Card />
    <Card />
    <Card />
  </main>
  <aside>
    <p>aside</p>
  </aside>
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
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    width: 50vw;
    padding: 1em;
    background: lightgray;
    border: black solid 1px;
  }

</style>
