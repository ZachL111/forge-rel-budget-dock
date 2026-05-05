// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(71, 81, 9, 16, 6);
        require(scorer.score(signal) == 145, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_2() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(95, 97, 14, 19, 5);
        require(scorer.score(signal) == 175, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
    function test_case_3() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(88, 94, 22, 13, 10);
        require(scorer.score(signal) == 208, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
}
