func readInput() -> [String]{
    var unsorted = [String]()
    while let line = readLine() {
        unsorted.append(line)
    }
    return unsorted
}

func printSelectionSort(_ array:[String]) {
    var passes = 0;
    var totalSwaps = 0;
    var swaps = 0;
    var arr = array;
    
    for x in 0..<arr.count-1 {
        var min = x;
         swaps = 0;
         passes += 1;
        for y in x + 1..<arr.count {
            if (arr[y] < arr[min]) {
                min = y;
            }
        }
        if x != min {
            arr.swapAt(x, min)
        }
        swaps += 1;
        totalSwaps += 1;
    }
    for x in arr{
        print(x)
    }
    
}

printSelectionSort(readInput())

