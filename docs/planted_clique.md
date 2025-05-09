---
title: Planted Clique Conjectures Are Equivalent
nav_order: 2
---

# Planted Clique Conjectures Are Equivalent

In this note, I will explain my STOC'24 paper "Planed Clique Conjectures Are Equivalent", a joint work with Shuichi Hirahara.

## Background

In **Planted Clique Problem**, we are given a random graph obtained by the following procedure:

Sample a graph $G$ from the Erdős-Rényi model $G(n, 1/2)$ with $n$ vertices. Then, choose a set of $k$ vertices $C\subseteq [n]$ uniformly at random and add edges between all pairs of vertices in $C$, making $C$ a $k$-clique in $G$. The distribution of the resulting graph is denoted as $\PC(n, k)$.

The goal is to find the planted clique $C$ given a graph drawn from $\PC(n,k)$.

The complexity of recovering the planted clique in a graph drawn from $\PC(n,k)$ crucially depends on the size $k$ of the planted clique.

- It is well known that the maximum clique in a random graph $G\sim G(n,1/2)$ is of size $(2+o(1))\log_2 n$ with high probability. Thus, if $k\le 2\log_2 n$, then we cannot recover $C$.
- On the other hand, if $k\gg 2\log_2 n$, we can recover $C$ with high probability by the brute-force search over all $k$-cliques in $G$.

Therefore, the threshold $k=2\log_2 n$ is the information-theoretic limit for solvability of the planted clique problem.
However, the brute-force search for $k\gg2\log_2 n$ is not efficient.
So the natural question is:

*Can we recover the planted clique $C$ given $G\sim\PC(n,k)$ when $k\gg 2\log_2 n$?*

This question was initially studied by Jerrum[1] and Kučera[2]. Jerrum[1] proved that a class of algorithms based on Metropolis process cannot recover the planted clique when $k\ll \sqrt{n}$.
Kučera[2] showed that if $k\ge c\sqrt{n\log n}$ for a sufficiently large constant $c>0$, then vertices with top-$k$ largest degrees in $G$ form the planted clique $C$ with high probability.
In a seminal work, Alon, Krivelevich, and Sudakov[3] presented a polynomial-time algorithm that recovers the planted clique with high probability when $k\ge c\sqrt{n}$ for an arbitrary constant $c>0$.

Despite a long line of research from 1990s, no polynomial-time algorithm is known for Planted Clique Problem for $k\ll \sqrt{n}$.
Moreover, several works have shown that Planted Clique Problem with $k\ll \sqrt{n}$ is hard against various natural classes of algorithms, including Lovász–Schrijver semidefinite programming hierarchy[4], sum-of-squares hierarchy[5], statistical query algorithms[6], and constant depth circuits[7].

This raises the conjecture asserting the hardness of Planted Clique Problem for $k\ll \sqrt{n}$.

{: .conjecture-title}
>**Conjecture 1(Planted Clique Conjecture)**
>
> There exists a constant $\alpha>0$ such that for $k = n^{1/2-\alpha}$, no polynomial-time algorithm can recover the planted clique $C$ from $G\sim\PC(n,k)$ with probability $2/3$, where the probability is taken over the choice of $G$.

Assuming Conjecture 1, we can see that Planted Clique Problem exhibits a **computational-statistical gap**: The information-theoretical threshold is $k=2\log_2 n$, whereas the computational threshold is $k=\sqrt{n}$.
This kind of gap appears in a variety of problems in high-dimensional statistical inference.

## Motivation of Planted Clique

Why do we care about the hardness of Planted Clique Problem?
For computational complexity theorists, Planted Clique Problem can be seen as a natural average-case problem that is conjectured to be hard.
Moreover, this problem can be seen as the average-case variant of the maximum clique problem, which is a well-known NP-hard problem.

In the area of high-dimensional statistics, Planted Clique Conjecture serves as a hypothetical hardness assumption for various statistical inference problems, including community detection[8], sparse PCA[9], and approximate Nash Equilibria[10], to name a few.
Assuming Planted Clique Conjecture, we can prove computational lower bounds for these problems.

Interestingly, based on Planted Clique Conjecture, we can construct a one-way function, a fundamental building block of cryptography [11].
Roughly speaking, a one-way function is a function $f$ that can be easy to compute $f(x)$ given $x$ but hard to invert $x$ for given $f(x)$ for random $x$.
For example, consider a function $f(G,C)$ that outputs the graph obtained by making $C$ a clique in $G$, which is easy to compute given $G$ and $C$.
If $G$ is drawn from $G(n,1/2)$ and $C$ is a random $k$-vertex set, then distribution of $f(G,C)$ coincides with $\PC(n,k)$.
Thus, assuming Planted Clique Conjecture, it is hard to invert $f(G,C)$ for random $G$ and $C$.
A variant of Planted Clique Problem is shown to be useful in the context of secret sharing[12] and public-key cryptography[13].

## Planted Clique Conjectures Are Equivalent

In my STOC'24 paper with Shuichi [14], we show that several variant of Planted Clique Conjectures are equivalent.
The variants are as follows:
- **Decision version**: In the decision version of Planted Clique Problem, our task is to distinguish two distributions: $\PC(n,k)$ and $G(n,1/2)$. Specifically, we are given a graph $G$ that is drawn from either $\PC(n,k)$ or $G(n,1/2)$, and we are asked to decide which distribution from which $G$ is drawn. We say that an algorithm $A$ has **advantage** $\beta$ if
  
  $$
    \begin{align*}
    \left|\Pr_{G\sim\PC(n,k)}[A(G)=1] - \Pr_{G\sim G(n,1/2)}[A(G)=1]\right| \geq \beta.
    \end{align*}
  $$

  Our goal is to design an algorithm with as high advantage as possible.
  
- **Search version**: In the search version of Planted Clique Problem, we are given a graph $G$ that is drawn from $\PC(n,k)$, and our task is to find the planted clique $C$ (this coincides with the definition above). We say that an algorithm $A$ has **success probability $\beta$** if

  $$
    \begin{align*}
      \Pr_{G\sim\PC(n,k)}[A(G)=C] \geq \beta,
    \end{align*}
  $$

  where $C$ denotes the planted clique in $G$.
  Conjecture 1 says that any polynomial-time algorithm has success probability at most $2/3$ for $k=n^{1/2-\alpha}$.

In view of this, the formal statement of "Planted Clique Conjecture" relies on 
  - whether we care about the decision version or search version, and
  - the choice of the parameter $\beta$ (the success probability or advantage).

  In our paper [14], we show that the choice above (decision or search, and the choice of $\beta$) does **not** matter for a wide range of $\beta$.
  Specifically, we prove the following result.

  {: .theorem-title}
  >**Theorem 2 (informal)**
  >
  > The following statements are equivalent:
  > 1. There exist a constant $\alpha>0$ and a polynomial-time algorithm $A$ that recovers the planted clique $C$ from $G\sim\PC(n,n^{1/2-\alpha})$ with probability $2/3$.
  > 2. There exist constants $\alpha,\gamma>0$ and a polynomial-time algorithm $A$ that recovers the planted clique $C$ from $G\sim\PC(n,n^{1/2-\alpha})$ with probability $1-\exp(-n^\gamma)$.
  > 3. There exist constants $\alpha,\gamma>0$ and a polynomial-time algorithm $A$ that recovers the planted clique $C$ from $G\sim\PC(n,n^{1/2-\alpha})$ with success probability $1/n^\gamma$.
  > 4. There exist a constant $\alpha>0$ and a polynomial-time algorithm $A$ that distinguishes $\PC(n,n^{1/2-\alpha})$ from $G(n,1/2)$ with advantage $1/3$.
  > 5. There exist constants $\alpha,\gamma>0$ and a polynomial-time algorithm $A$ that distinguishes $\PC(n,n^{1/2-\alpha})$ from $G(n,1/2)$ with advantage $1-\exp(-n^\gamma)$.
  > 6. There exist constants $\alpha,\gamma>0$ and a polynomial-time algorithm $A$ that distinguishes $\widetilde{\PC}(n,n^{1/2-\alpha})$ from $G(n,1/2)$ with advantage $k^{2+\gamma}/n$.
  >
  >Here, the distribution $\widetilde{\PC}(n,k)$ is called **binomial-$k$ model**, defined as the distribution of the following random graph:
  > Sample $G\sim G(n,1/2)$ and let $C\subseteq [n]$ be a random subset that contains each vertex with probability $k/n$ independently.
  >Then, add edges between all pairs of vertices in $C$, making $C$ a clique in $G$.
  
  The first three statements says that the choice of the success probability $\beta$ does not matter for the search version of Planted Clique Conjecture for any $1/\poly(n) \le \beta \le 1-\exp(-\poly(n))$.
  Similarly, the last three statements say that the choice of the advantage $\beta$ does not matter for the decision version of Planted Clique Conjecture as long as $k^{2+\gamma}/n \le \beta \le 1-\exp(-\poly(n)) $.

  In the binomial-$k$ model, the size of the planted clique is random with mean $k$. But the Chernoff bound yields that the clique size is concentrated around $k$ with high probability.


  As an immediate but interesting corollary, we can obtain the following statement:

  {: .corollary-title}
  >**Corollary 3 (informal)**
  >
  > If there is a polynomial-time algorithm that distinguishes $\widetilde{PC}(n,k)$ and $G(n,1/2)$ with advantage $k^{2+\gamma}/n$ for some constant $\gamma>0$, then there is a polynomial-time algorithm that recovers the planted clique for a graph drawn from $\PC(n,n^{1/2-\alpha'})$ with advantage $1-\exp(-n^{\gamma'})$ for some constants $\alpha',\gamma'>0$.

  Indeed, by counting the number of edges, we can distinguish $\widetilde{\PC}(n,k)$ with $G(n,1/2)$ with advantage $\Omega(k^/n)$ (see, e.g., [Luca's blog](https://lucatrevisan.wordpress.com/2018/05/06/search-vs-decision-vs-certification-for-planted-problems/)).
  Therefore, Corollary 3 implies that assuming Planted Clique Conjecture, **the edge counting algorithm is almost optimal** for the decision version of Planted Clique Problem.

  **Update News**: A very recent paper [15] further closed the gap between $k^{2+\gamma}/n$ and $k^2/n$. Actually, they showed that assuming Conjecture 1, a low-degree algorithm achieves an optimal advantage for the decision version of Planted Clique Problem.




## References

1. Mark Jerrum. 1992. Large Cliques Elude the Metropolis Process. *Random Structures & Algorithms*, 3(4), 347–360. [doi: 10.1002/rsa.3240030402](https://onlinelibrary.wiley.com/doi/10.1002/rsa.3240030402).
2. Luděk Kučera. 1995. Expected Complexity of Graph Partitioning Problems. *Discrete Applied Mathematics*, 57, 2-3, 193–212. doi: [10.1016/0166-218X(94)00103-K](https://www.sciencedirect.com/science/article/pii/0166218X9400103K).
3. Noga Alon, Michael Krivelevich, and Benny Sudakov. 1998. Finding a Large Hidden Clique in a Random Graph. *Random Structures & Algorithms*, 13(3-4), 457–466. [doi: 10.1002/(SICI)1098-2418(199810/12)13:3/4<457::AID-RSA14>3.0.CO;2-W](https://onlinelibrary.wiley.com/doi/10.1002/(SICI)1098-2418(199810/12)13:3/4%3C457::AID-RSA14%3E3.0.CO;2-W).
4. Uriel Feige and Robert Krauthgamer. 2003. The Probable Value of the Lovász–Schrijver Relaxations for Maximum Independent Set. *SIAM Journal of Computing*, 32(2), 345–370. [doi: 10.1137/S009753970240118X](https://epubs.siam.org/doi/10.1137/S009753970240118X).
5. Boaz Barak, Samuel B. Hopkins, Jonathan A. Kelner, Pravesh K. Kothari, Ankur Moitra, and Aaron Potechin. 2019. A Nearly Tight Sum-of-Squares Lower Bound for the Planted Clique roblem. *SIAM Journal on Computing*, 48(2), 687–735. [doi:10.1137/17M1138236](https://epubs.siam.org/doi/10.1137/17M1138236).
6. Vitaly Feldman, Elena Grigorescu, Lev Reyzin, Santosh S. Vempala, and Ying Xiao. 2017. Statistical Algorithms and a Lower Bound for Detecting Planted Cliques. *Journal of the ACM*, 64(2), 8:1–8:37. [doi: 10.1145/3046674](https://dl.acm.org/doi/10.1145/3046674).
7. Benjamin Rossman. 2008. On the constant-depth complexity of k-clique. *In Proceedings of the Symposium on Theory of Computing (STOC)*, 721–730. [doi:10.1145/1374376.1374480](https://dl.acm.org/doi/10.1145/1374376.1374480).
8. Bruce Hajek, Yihong Wu, and Jiaming Xu. 2015. Computational Lower Bounds for Community Detection on Random Graphs, *In Proceedings of Conference on Learning Theory (COLT)*, PMLR 40:899-928.
9. Quentin Berthet, Philippe Rigollet. 2013. Complexity Theoretic Lower Bounds for Sparse Principal Component Detection. *In Proceedings of Conference on Learning Theory*, PMLR 30:1046-1066.
10. Lorenz Minder and Dan Vilenchik. 2009. Small Clique Detection and Approximate Nash Equilibria. *In Proceedings of Approximation, Randomization, and Combinatorial Optimization (APPROX-RANDOM)*. [doi:10.1007/978-3-642-03685-9_50](https://link.springer.com/chapter/10.1007/978-3-642-03685-9_50).
11. Ari Juels and Marcus Peinado. 1997. Hiding cliques for cryptographic security. *Designs Codes and Cryptography*, 20(11), [doi:10.1023/A:1008374125234](https://link.springer.com/article/10.1023/A:1008374125234).
12. Damiano Abram, Amos Beimel, Yuval Ishai, Eyal Kushilevitz, and Varun Narayanan. 2023. Cryptography from Planted Graphs: Security with Logarithmic-Size Messages. *In Proceedings of Theory of Cryptography (TCC)*, [doi:10.1007/978-3-031-48615-9_11](https://link.springer.com/chapter/10.1007/978-3-031-48615-9_11).
13. Benny Applebaum, Boaz Barak, and Avi Wigderson. 2010. Public-Key Cryptography from Different Assumptions. *In Proceedings of Symposium on Theory of Computing*. [doi:10.1145/1806689.1806715](https://dl.acm.org/doi/10.1145/1806689.1806715).
14. Shuichi Hirahara and Nobutaka Shimizu. 2024. Planted Clique Conjectures Are Equivalent. *In Proceedings of Symposium on Theory of Computing (STOC)*. [doi:10.1145/3618260.3649751](https://dl.acm.org/doi/10.1145/3632754.3632950).
15. Ansh Nagda and Prasad Raghavendra. 2025. On optimal distinguishers for Planted Clique. [arXiv:2505.01990](https://arxiv.org/abs/2505.01990).