# Notebooks


>**TLDR:** A notebook is a web-based interface to a document that contains runnable code, visualizations, and narrative text.

A notebook is a document that contains the inputs and outputs of a interactive session as well as additional text that accompanies the code but is not meant for execution. In this way, notebook files can serve as a complete computational record of a session, interleaving executable code with explanatory text, mathematics, and rich representations of resulting objects. These documents are internally JSON files and are saved with the .ipynb extension. Since JSON is a plain text format, they can be version-controlled and shared with colleagues.

# Representation of a notebook in Security Hub

While navigating on Security Hub, users have access to the list all notebooks available per folder. Notebooks are represented under the form of cards with different fields.

![Drag Racing](/img/notebook_card.png)

The information available on the cards are:
- Active users
- Tags
- Notebook title
- Created by and Last Modified

Actions that can be done from the cards are:
- Rename notebook
- Clear output
- Delete notebook


# Layout
Each notebook is composed of 1 .. N paragraphs. The notebook can be viewed as a paragraph container.

![Drag Racing](/img/notebook_layout.png)

## Paragraph
Each paragraph consists of 2 sections: code section where you put your source code and result section where you can see the result of the code execution.

![Drag Racing](/img/paragraph_layout.png)

On the top-right corner of each paragraph there are some commands to:
- execute the paragraph code
- hide/show `code section`
- hide/show `result section`
- configure the paragraph

To configure the paragraph, just click on the gear icon:
![Drag Racing](/img/paragraph_configuration_dialog.png)

From this dialog, you can (in descending order):
- find the **paragraph id** ( 20150924-163507_134879501 )
- control paragraph width. Since Security Hub is using the grid system of **Twitter Bootstrap**, each paragraph width can be changed from 1 to 12
- move the paragraph 1 level up
- move the paragraph 1 level down
- create a new paragraph
- change paragraph title
- show/hide line number in the `code section`
- disable the run button for this paragraph
- export the current paragraph as an **iframe** and open the **iframe** in a new window
- clear the `result section`
- delete the current paragraph

## Notebook toolbar
At the top of the note, you can find a toolbar which exposes command buttons as well as configuration, security and display options.

![Drag Racing](/img/note_toolbar.png)

On the far right is displayed the notebook name, just click on it to reveal the input form and update it.

In the middle of the toolbar you can find the command buttons:
- execute all the paragraphs **sequentially**, in their display order
- hide/show code section of all paragraphs
- hide/show `result section` of all paragraphs
- clear the `result section` of all paragraphs
- clone the current note
- export the current notebook to a JSON file. _Please notebook that the code section and result section of all paragraphs will be exported. If you have heavy data in the result section of some paragraphs, it is recommended to clean them before exporting
- commit the current node content
- delete the note
- schedule the execution of **all paragraph** using a CRON syntax

<img src="/img/note_commands.png" alt="drawing" width="300"/>

On the right of the notebook tool bar you can find configuration icons:
- display all the keyboard shorcuts
- configure the interpreters binding to the current note
- configure the notebook permissions
- switch the node display mode between `default`, `simple` and `report`
 


