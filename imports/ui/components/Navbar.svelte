<script></script>

<div id="navbar">
  <nav id="navigation">
    <ul>
      <li><a href="/login"><span>login</span></a></li>
      <hr />
      <input id="search" placeholder="search" />
      <hr />
      <li><a href="/home"><span>home</span></a></li>
      <li><a href="/blog"><span>blog</span></a></li>
      <li><a href="/stories"><span>stories</span></a></li>
      <li><a href="/chat"><span>chat</span></a></li>
      <li><a href="/stream"><span>stream</span></a></li>
      <li><a href="/support"><span>support</span></a></li>
      <li><a href="/shop"><span>shop</span></a></li>
      <hr />
      <li><a href="/about"><span>about</span></a></li>
      <li><a href="/privacy"><span>privacy</span></a></li>
      <li><a href="/terms"><span>terms</span></a></li>
    </ul>
  </nav>
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
