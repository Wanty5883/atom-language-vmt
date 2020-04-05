describe "Vmt grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-vmt")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.vmt")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.vmt"
