import flashcards from './flashcard-library.js';
import askQuestion from './ask-question.js';
import speak from './speak.js';

(async () => {
  flashcards.openDeck('newDeck');
  flashcards.addCards(
    ['What is Big O notation for ?', ['big O notation is used to *classify* functions (usually algorithms in comp sci) by how they respond (example, in their processing time or working space requirements) to changes in input size. *efficiency*, normally of its *upper-bound* (worst case).']],
    ['What part of code is Big O used to describe ?', ['It focuses on the part of an algorithm that grows in time or space as we increase the size of the *input data* that we are operating on.']],
    [`How Does Big O Notation Make a Runtime Analysis of an Algorithm?`, [`In order to analyze and calculate an algorithm's performance, we must calculate and compare the worst-case runtime complexities of the algorithm. The order of O(1) - known as the Constant Running Time - is the fastest running time for an algorithm, with the time taken by the algorithm being equal for different input sizes. Although the Constant Running Time is the ideal runtime for an algorithm, it can be rarely achieved because the runtime depends on the size of n inputted.`]],
    ['Runtime Complexity for Linear Search?', ['O(n)']],
    ['Runtime Complexity for Binary Search', ['O(log n)']],
    ['Runtime Complexity for Bubble Sort, Insertion Sort, Selection Sort, Bucket Sort', ['O(n^c)']],
    ['Runtime Complexity for Exponential algorithms like Tower of Hanoi', ['O(c^n)']],
    ['Runtime Complexity for Heap Sort, Merge Sort', ['O(n log n)']],
    // ['', ['']],
    // ['', ['']],
    // ['', ['']],
    // ['', ['']],
    // ['', ['']],
  );
  flashcards.shuffle();
  var currentCard = flashcards.drawNext();
  console.log('');
  console.log(currentCard.question[0])
  await speak(currentCard.question[0])
  console.log('');
  console.log('');
  askQuestion("Enter to show the answer").then(async (answer) => {
    console.log('');
    console.log(flashcards.revealAnswer().answers[0])
    await speak(flashcards.revealAnswer().answers[0])
    process.exit()
  })
})()
