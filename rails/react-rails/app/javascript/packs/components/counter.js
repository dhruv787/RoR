import React, { useState } from 'react'
const Counter = (props) => {
    const [counter, setCounter] = useState(0);
    return (
        <div>
            <h2>Counter: {counter}</h2>
            <button onClick={(e) => setCounter(counter + 1)}>+</button>
            <button onClick={(e) => setCounter(counter - 1)}>-</button>

        </div>
    )
}

export default Counter;