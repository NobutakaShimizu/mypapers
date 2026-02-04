---
title: Conference Proceedings
nav_order: 3
---

# Conference Proceedings (Peer-Reviewed)

<div class="papers-list">
<div class="paper" markdown="1">**Optimal Random Self-Reductions for All Linear Problems**<br>
  Shuichi Hirahara, Nobutaka Shimizu<br>
  *Symposium on Theory of Computing (**STOC 2026**)*<br>
  <span class="paper-tag complexity">Average-Case Complexity</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
    <p>
    The linear problem $\calL_M$ for a matrix $M\in\F^{n\times n}$ asks one to compute $Mx$ for a given vector $x\in\F^n$.
    Given an average-case solver $\calO$ for $\calL_M$ such that
    \[
      \Pr_{x\sim\F^n}[\calO(x)=Mx]\ge\varepsilon,
    \]
    can we solve $\calL_M$ correctly on <b>every</b> input with almost the same running time?
    </p>

    <p>
    This paper presents both positive and negative results on worst-case-to-average-case reductions for this problem.
    </p>

    <ul>
    <li>
    First, we present a surprisingly simple worst-case-to-average-case <b>nonuniform</b> reduction that uses $\Theta(n)$ bits of advice.
    </li>
    <li>
    Second, if the field size satisfies $p=|\F|>1/\varepsilon+1$, then there exists a <b>uniform</b> worst-case-to-average-case reduction.
    </li>
    <li>
    Third, if the field size satisfies $p=|\F|\le1/\varepsilon$, then any worst-case-to-average-case reduction requires $\Omega(\log_p(1/\varepsilon)\cdot\log n)$ bits of advice.
    Moreover, this lower bound is tight: there exists a worst-case-to-average-case reduction that uses $O(\log_p(1/\varepsilon)\cdot\log n)$ bits of advice.
    </li>
    </ul>
  </div>
  </details></div>

<div class="paper" markdown="1">**Hardness Amplification Beyond Boolean Functions**<br>
  Nobutaka Shimizu, Kenji Yasunaga<br>
  *Symposium on Theory of Computing (**STOC 2026**)*<br>
  <span class="paper-tag complexity">Average-Case Complexity</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
    <p>
    We prove an XOR lemma for $\F_p$-valued functions for every prime $p$, using the characterization of weak hardness in terms of <b>pseudo min-average entropy (PAME)</b> due to Zheng (2014) and Vadhan and Zheng (2012).
    Specifically, if $f\colon\{0,1\}^n\to\F_p$ is hard to compute on more than a $(1+\varepsilon)/p$ fraction of instances for any circuit of size $s$, then
    \[
      f^{+k}\colon (x_1,\dots,x_k)\mapsto f(x_1)+\dots+f(x_k)
    \]
    is hard to compute on more than a $(1-\delta)$ fraction of instances for circuits of size
    $\Omega\!\left(s\cdot\frac{\varepsilon^2}{pk^2\log(k/\varepsilon)}\right)$,
    where $k=O(p^2\log(p/\varepsilon)/\delta)$.
    As an application, we present an error-tolerant worst-case-to-average-case <b>nonuniform</b> reduction for triangle counting over Erdős–Rényi graphs.
    </p>

    <p>
    We also prove a query lower bound for adaptive black-box hardness amplification for $\F_p$-valued functions.
    This lower bound does not match the upper bound achieved by our XOR-lemma reduction.
    It is obtained via the framework of Shaltiel and Viola (2010) and Grinberg, Shaltiel, and Viola (2018) by considering a coin problem over $\F_p$.
    We also present a conceptually simpler proof of the fixed-set lemma using KL-divergence.
    </p>
  </div>
  </details></div>

<div class="paper" markdown="1">**3-Majority and 2-Choices with Many Opinions** <br>
  Nobutaka Shimizu, Takeharu Shiraga  <br>
  *Symposium on Principles of Distributed Computing (**PODC 2025**)* <br>
  [DOI:10.1145/3732772.3733511](https://dl.acm.org/doi/10.1145/3732772.3733511) | [arXiv:2503.02426](https://arxiv.org/abs/2503.02426) <br>
  <span class="paper-tag graphs">Graph Theory</span> <span class="paper-tag consensus">Consensus Dynamics</span> <span class="paper-tag randomized">Stochastic Processes</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
    <p>
    This paper presents the first tight bound on the consensus time of 3-Majority and 2-Choices with an arbitrary number of opinions in the parallel gossip model, resolving our <b>seven-year-old private open problem</b>.
    </p>

    <p>
    The proof relies on multi-step concentration via the Freedman inequality framework developed in our SODA’25 paper.
    The main technical challenge is that, in the gossip model, all vertices <b>simultaneously</b> update their opinions.
    As a result, we cannot exploit the locality of updates from the sequential model, which was crucial in our SODA’25 analysis
    (in martingale terms, the bounded-jump condition is no longer applicable).
    </p>

    <p>
    We overcome this difficulty by observing that, in each round, all vertices <b>independently</b> choose their next opinion.
    This observation leads us to introduce the notion of a <b>Bernstein condition</b>, which allows us to transfer concentration bounds from the sequential model to the parallel gossip model.
    </p>

  </div>
  </details></div>

<div class="paper" markdown="1">**An Optimal Error-Correcting Reduction for Matrix Multiplication**<br>
  Shuichi Hirahara, Nobutaka Shimizu<br>
  *International Colloquium on Automata, Languages, and Programming (**ICALP 2025**)* <br>
  [DOI: 10.4230/LIPIcs.ICALP.2025.97](https://drops.dagstuhl.de/entities/document/10.4230/LIPIcs.ICALP.2025.97) | [Slide](https://nobutakashimizu.github.io/icalp25_slide/1) | [ECCC](https://eccc.weizmann.ac.il/report/2025/066/) <br>
  <span class="paper-tag complexity">Average-Case Complexity</span> <span class="paper-tag code">Error-Correcting Code</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
    <p>
    This paper is a follow-up to our STOC’25 paper below, which presents a <b>uniform</b> worst-case-to-average-case and exact-to-approximation reduction for matrix multiplication.
    Specifically, we show that there exists a randomized oracle algorithm $M^{\calO}$ such that, for any oracle $\calO$ satisfying
    \[
      \Pr_{\substack{A,B\sim\F^{n\times n} \\ i,j\sim[n]}}[\calO(A,B)_{i,j} = (AB)_{i,j}] \ge \frac{1}{|\F|}+\varepsilon,
    \]
    the algorithm $M^{\calO}$ satisfies
    \[
      \forall A,B\in\F^{n\times n}, \quad \Pr_{M^{\calO}}[M^{\calO}(A,B)=AB] \ge \frac{2}{3}.
    \]
    This oracle algorithm makes only $\Otilde(1)$ queries.
    </p>

    <p>
    The key idea is to encode matrix multiplication using <b>derandomized direct sum</b> over expander walks, and then apply a recent linear-time approximate list-decoding algorithm for this code due to Jeronimo (2023).
    </p>
  </div>
  </details></div>

<div class="paper" markdown="1">**Error-Correction of Matrix Multiplication Algorithms**<br>
  Shuichi Hirahara, Nobutaka Shimizu<br>
  *Symposium on Theory of Computing (**STOC 2025**)*<br>
  [DOI: 10.1145/3717823.3718244](https://dl.acm.org/doi/10.1145/3717823.3718244) |
  [ECCC](https://eccc.weizmann.ac.il/report/2024/026/) | [Slide](https://nobutakashimizu.github.io/stoc25_slide)  <br>
  <span class="paper-tag complexity">Average-Case Complexity</span> <span class="paper-tag code">Error-Correcting Code</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
    <p>
    Given an efficient algorithm $\calO$ that computes an $\alpha$ fraction of the entries of $AB$ for two uniformly random matrices $A,B\sim\F^{n\times n}$, can we design an efficient algorithm that computes <b>all</b> entries of $AB$?
    </p>

    <p>
    We answer this question affirmatively when $|\F|\ge n/\alpha^2$.
    Specifically, there exists a randomized oracle algorithm $M^{\calO}$ such that, for any oracle $\calO$ satisfying
    \[
      \Pr_{\substack{A,B\sim\F^{n\times n} \\ i,j\sim[n]}}[\calO(A,B)_{i,j} = (AB)_{i,j}] \ge \alpha,
    \]
    the algorithm $M^{\calO}$ satisfies
    \[
      \forall A,B\in\F^{n\times n}, \quad \Pr_{M^{\calO}}[M^{\calO}(A,B)=AB] \ge \frac{2}{3}.
    \]
    Moreover, if $\calO$ runs in time $T(n)$, then $M^{\calO}$ runs in time $\Otilde(T(n)\cdot\log|\F|\cdot\log(1/\alpha))$.
    </p>

    <p>
    We also consider the case where the field size $|\F|$ is constant.
    We present a <b>nonuniform</b> reduction when $\alpha>1/|\F|+\varepsilon$
    (note that outputting a random matrix achieves $\alpha=1/|\F|$, so this bound is nearly tight),
    and a uniform reduction when $\alpha>2/|\F|+\varepsilon$.
    </p>

    <p>
    The key idea is to encode matrices using a linear <b>tensor</b> code.
    Such a code encodes a matrix $C\in\F^{n\times n}$ as
    \[
      LCL^\top \in \F^{N\times N},
    \]
    for a carefully designed matrix $L\in\F^{N\times n}$.
    Under this encoding, the product $AB$ is mapped to $LABL^\top$,
    and we obtain a noisy codeword $\widetilde{C}$ that is close to $LABL^\top$ by running the approximation solver on the inputs
    \[
      LA \text{ and } BL^\top.
    \]
    </p>
  </div>
  </details></div>

<div class="paper" markdown="1">**Asynchronous 3-Majority Dynamics with Many Opinions**<br>
  Colin Cooper, Frederik Mallmann-Trenn, Tomasz Radzik, Nobutaka Shimizu, Takeharu Shiraga<br>
  *Symposium on Discrete Algorithms (**SODA 2025**)*<br>
  [DOI: 10.1137/1.9781611978322.140](https://epubs.siam.org/doi/10.1137/1.9781611978322.140) | [arXiv:2503.02426](https://arxiv.org/abs/2503.02426) | [Slide](https://nobutakashimizu.github.io/SODA25_slide/)  <br>
  <span class="paper-tag graphs">Graph Theory</span> <span class="paper-tag consensus">Consensus Dynamics</span> <span class="paper-tag randomized">Stochastic Processes</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
    <p>
    This paper bounds the consensus time of 3-Majority in the sequential update model (i.e., at each round, only one randomly chosen vertex updates its opinion), where each vertex holds an opinion from the set $\{1,\dots,k\}$.
    We prove that the consensus time is $\Otilde(\min(k,\sqrt{n}))$ with high probability for <b>any $2\le k\le n$</b>, using Freedman’s inequality (a Bernstein-type concentration inequality for martingales).
    </p>
  </div>
  </details></div>

<div class="paper" markdown="1">**Planted Clique Conjectures Are Equivalent**<br>
  Shuichi Hirahara, Nobutaka Shimizu<br>
  *Symposium on Theory of Computing (**STOC 2024**)*<br>
  [DOI: 10.1145/3618260.3649751](https://dl.acm.org/doi/abs/10.1145/3618260.3649751) | [ECCC](https://eccc.weizmann.ac.il/report/2024/058/) | [Slide](https://speakerdeck.com/nobushimi/planted-clique-conjectures-are-equivalent)  
  <span class="paper-tag complexity">Average-Case Complexity</span> <span class="paper-tag graphs">Graph Theory</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
    <p>
    We study the hardness self-amplification problem for planted clique, for both the search and decision versions.
    For example, we show that if we can find an $n^{1/2-\alpha}$-clique hidden in the Erdős–Rényi graph $G(n,1/2)$ with success probability $\varepsilon$ in polynomial time, then we can find an $n^{1/2-\alpha-o(1)}$-clique in $G(n,1/2)$ in polynomial time.
    </p>

    <p>
    As a corollary, we present the first <b>search-to-decision</b> reduction for the planted clique problem in a <b>high-error regime</b>,
    meaning that any algorithm that decides planted clique with a <b>small</b> advantage can be transformed into a search algorithm with a <b>large</b> success probability.
    </p>

    <p>
    The core idea of our reductions is to <b>embed</b> an instance of planted clique into a slightly larger Erdős–Rényi random graph and then <b>shrink</b> the graph by taking a random induced subgraph.
    Correctness follows from the <b>sampler property</b>, via a read-$k$ concentration inequality due to Gavinsky, Lovett, Saks, and Srinivasan (2015).
    </p>
  </div>
  </details></div>

<div class="paper" markdown="1">**Hardness Self-Amplification: Simplified, Optimized, and Unified**<br>
  Shuichi Hirahara, Nobutaka Shimizu<br>
  *Symposium on Theory of Computing (**STOC 2023**)*<br>
  [DOI: 10.1145/3564246.3585189](https://dl.acm.org/doi/10.1145/3564246.3585189) | [ECCC](https://eccc.weizmann.ac.il/report/2023/026/) | [Slide](https://speakerdeck.com/nobushimi/hardness-self-amplification-simplified-optimized-and-unified)  
  <span class="paper-tag complexity">Average-Case Complexity</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
<p> Hardness amplification is a general technique for turning a problem $\Pi$ that is only weakly hard on average into one that is hard on average with high probability. In <b>hardness self-amplification</b>, the goal is more ambitious: the amplified problem $\Pi'$ is required to be identical to the original problem $\Pi$, unlike classical approaches such as the direct product theorem or the XOR lemma, which inherently modify the problem. </p>

 <p> I proved such self-amplification results for several natural computational problems, including matrix multiplication, triangle counting modulo $2$, and the planted clique problem. The unifying idea behind these results is <b>upward self-reduction</b>, which embeds a given instance into a slightly larger random instance. Correctness follows from the fact that the reduction exhibits a <b>sampler</b> property of the bipartite graph specified this embedding.</p>
 
  <p> As a particularly simple example, I obtained an error-tolerant worst-case-to-average-case reduction for matrix multiplication based on the direct product theorem. Despite its simplicity, this reduction already captures many of the key ideas behind self-amplification and remains one of my favorite constructions. </p>
 </div>
  </details></div>

<div class="paper" markdown="1">**Hardness Self-Amplification from Feasible Hard-Core Sets**<br>
  Shuichi Hirahara, Nobutaka Shimizu<br>
  *Foundations of Computer Science (**FOCS 2022**)*<br>
  [DOI: 10.1109/FOCS54457.2022.00083](https://ieeexplore.ieee.org/document/9996925) | [ECCC](https://eccc.weizmann.ac.il/report/2022/108/) | [Slide](https://speakerdeck.com/nobushimi/hardness-self-amplification-from-feasible-hard-core-sets)  
  <span class="paper-tag complexity">Average-Case Complexity</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
  under construction
  </div>
  </details></div>

<div class="paper" markdown="1">**Nearly Optimal Average-Case Complexity of Counting Bicliques Under SETH**<br>
  Shuichi Hirahara, Nobutaka Shimizu<br>
  *Symposium on Discrete Algorithms (**SODA 2021**)*<br>
  [DOI: 10.1137/1.9781611976465.140](https://epubs.siam.org/doi/10.1137/1.9781611976465.140) | [arXiv:2010.05822](https://arxiv.org/abs/2010.05822) | [Slide](https://speakerdeck.com/nobushimi/nearly-optimal-average-case-complexity-of-counting-bicliques-under-seth)  
  <span class="paper-tag complexity">Average-Case Complexity</span> <span class="paper-tag graphs">Graph Theory</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
We prove an error-tolerant worst-case-to-average-case reduction for computing the parity of the biclique-counting problem on a random bipartite graph, and we also show that this problem is SETH-hard.
A key observation is that the worst-case-to-average-case reduction of Boix-Adserà, Brennan, and Bresler (2021) for the clique-counting problem extends naturally to general (colorful) subgraph-counting problems.
We then apply an XOR lemma to make the reduction error-tolerant.
The main technical ingredient is to design a <b>doubly efficient interactive proof system</b> for subgraph counting in order to eliminate the nonuniform advice required by the XOR lemma.

  </div>
  </details></div>

<div class="paper" markdown="1">**How Many Vertices Does a Random Walk Miss in a Network with Moderately Increasing the Number of Vertices?**<br>
  Shuji Kijima, Nobutaka Shimizu, Takeharu Shiraga<br>
  *Symposium on Discrete Algorithms (**SODA 2021**)*<br>
  [DOI: 10.1137/1.9781611976465.8](https://epubs.siam.org/doi/abs/10.1137/1.9781611976465.8?mobileUi=0) | [arXiv:2008.10837](https://arxiv.org/abs/2008.10837) | [Slide](https://speakerdeck.com/nobushimi/how-many-vertices-does-a-random-walk-miss-in-a-network-with-moderately-increasing-the-number-of-vertices)  
  <span class="paper-tag graphs">Graph Theory</span> <span class="paper-tag randomized">Random Walks</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
    We consider a random walk on a sequence of graphs $\calG=(G_i)_{i=0,1,\dots}$ whose vertex set grows over time.
    Specifically, for each $i=0,1,\dots$, we perform a $t(i)$-step random walk on $G_i$ and investigate the number $U$ of unvisited vertices for complete graphs and path graphs.
    We also prove that if $t(i)$ is sufficiently large compared to the mixing time of $G_i$, then $U$ is small.

  </div>
  </details></div>

<div class="paper" markdown="1">**Quasi-majority Functional Voting on Expander Graphs**<br>
  Nobutaka Shimizu, Takeharu Shiraga<br>
  *International Colloquium on Automata, Languages, and Programming (**ICALP 2020**)*<br>
  [DOI: 10.4230/LIPIcs.ICALP.2020.97](https://drops.dagstuhl.de/entities/document/10.4230/LIPIcs.ICALP.2020.97) | [arXiv:2002.07411](https://arxiv.org/abs/2002.07411)  
  <span class="paper-tag graphs">Graph Theory</span> <span class="paper-tag consensus">Consensus Dynamics</span> <span class="paper-tag randomized">Stochastic Processes</span> <span class="paper-tag expander">Expander</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
    <p>We introduce the notion of quasi-majority functional voting, which is a broad class of consensus dynamics including 3-Majority and 2-Choices, and we bound the consensus time on expander graphs.</p>
  </div>
  </details></div>

<div class="paper" markdown="1">**Phase Transitions of Best-of-Two and Best-of-Three on Stochastic Block Models**<br>
  Nobutaka Shimizu, Takeharu Shiraga<br>
  *International Symposium on Distributed Computing (**DISC 2019**)*<br>
  [DOI: 10.4230/LIPIcs.DISC.2019.32](https://drops.dagstuhl.de/entities/document/10.4230/LIPIcs.DISC.2019.32) | [arXiv:1907.12212](https://arxiv.org/abs/1907.12212)  
  <span class="paper-tag graphs">Graph Theory</span> <span class="paper-tag consensus">Consensus Dynamics</span> <span class="paper-tag randomized">Stochastic Processes</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
  <p>
    We consider 3-Majority and 2-Choices (in the synchronous gossip model) on a stochastic block model $G(n,p,q)$.
    We show that there exists a threshold $\theta\in(0,1)$ such that
    <ul>
      <li>if $q/p>\theta$, then the dynamics converges to consensus within $O(\log n)$ rounds.</li>
      <li>if $q/p<\theta$, then there exists an initial configuration such that the consensus time is exponentially large.</li>
    </ul>
  </p>
  </div>
  </details></div>

<div class="paper" markdown="1">**The Diameter of Dense Random Regular Graphs**<br>
  Nobutaka Shimizu<br>
  *Symposium on Discrete Algorithms (**SODA 2018**)*<br>
  [DOI: 10.1137/1.9781611975031.126](https://epubs.siam.org/doi/10.1137/1.9781611975031.126)  
  <span class="paper-tag graphs">Graph Theory</span> <span class="paper-tag randomized">Random Graphs</span>
  <details class="paper-abstract"><summary>Abstract</summary>
  <div class="paper-abstract-body">
    We prove that the diameter of a random regular graph $G_{n,d}$ for $d = n^{\alpha}$ is $\lfloor \alpha^{-1} \rfloor+1$ by first-order and second-order methods. The main technical difficulty is to evaluate the second moment of the number of $st$-paths (for fixed $s,t$).
  </div>
  </details></div>

<div class="paper" markdown="1">**Average Shortest Path Length of Graphs of Diameter 3**<br>
  Nobutaka Shimizu, Ryuhei Mori<br>
  *Symposium on Networks-on-Chip (**NOCS 2016**)*<br>
  [DOI: 10.1109/NOCS.2016.7579335](https://ieeexplore.ieee.org/document/7579335/) | [arXiv:1606.05119](https://arxiv.org/abs/1606.05119)  
  <span class="paper-tag graphs">Graph Theory</span>
</div>
