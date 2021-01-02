<script></script>

<div id="navbar">
  <form id="login">
    <input placeholder="username" />
    <input placeholder="password" />
    <button type="submit">submit</button>
  </form>
  <hr />
  <input id="search" placeholder="search" />
  <hr />
  <nav id="navigation">
    <ul>
      <li><a href="#"><span>home</span></a></li>
      <li><a href="#"><span>blog</span></a></li>
      <li><a href="#"><span>stories</span></a></li>
      <li><a href="#"><span>chat</span></a></li>
      <li><a href="#"><span>streaming</span></a></li>
      <li><a href="#"><span>support</span></a></li>
      <li><a href="#"><span>shop</span></a></li>
    </ul>
  </nav>
  <hr />
  <footer>
    <ul>
      <li><a href="#"><span>about</span></a></li>
      <li><a href="#"><span>privacy</span></a></li>
      <li><a href="#"><span>terms</span></a></li>
    </ul>
  </footer>
</div>

<style>
  #navbar {
    position: fixed;
    top: 0; left: 0; bottom: 0;
    width: 12.5vw;
    padding: .75em;
    display: flex;
    flex-direction: column;
  }

  #navbar > * { position: relative; width: 100%; }

  input:focus {
    border: 0;
  }

  input, button {
    width: 100%;
    padding: 0.5em;
    border: 0;
    transition: .3s;
    border: 0;
    border-bottom: 0 solid black;
  }

  button {
    cursor: pointer;
  }

  nav {
    flex: auto;
  }

  a {
    text-decoration: none;
    color: black;
    flex: auto;
    display: flex;
    align-items: center;
    justify-content: flex-end;
    padding-right: 1em;
    height: 100%;
    transition: .3s;
    border-right: 0 solid black;
  }

  a:hover {
    border-right-width: 0.5em;
  }

  ul {
    list-style: none;
    padding: 0;
    margin: 0;
  }

  li {
    height: 2em;
    margin-bottom: .25em;
    align-items: center;
  }

  #legal {
    display: flex;
    justify-content: space-between;
    padding: .5em;
  }

</style>
