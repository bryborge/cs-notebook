fn binary_search(list: &[i32], target: i32) -> Option<usize> {
    let mut low: usize = 0;
    let mut high: usize = list.len() - 1;

    while low <= high {
        let mid = (low + high) / 2;
        let current_val = list[mid];

        if current_val == target {
            return Some(mid);
        } else if current_val > target {
            // Prevent overflow when `mid` is 0
            if mid == 0 { break; }

            high = mid - 1;
        } else {
            low = mid + 1;
        }
    }

    None
}

fn main() {
    let list = [1, 3, 5, 7, 9];
    let target = 7;

    match binary_search(&list, target) {
        Some(index) => println!("Index of target {} is {}", target, index),
        None => println!("Target {} not found in the list", target),
    }
}
