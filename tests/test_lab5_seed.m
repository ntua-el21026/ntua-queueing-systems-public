function test_lab5_seed()
% Lightweight Octave RNG checks; no simulator, plots, downloads, or output writes.
  test_dir = fileparts(mfilename('fullpath'));
  addpath(fullfile(test_dir, '..', 'labs', '5th', 'programs'));
  first = lab5_seed_rng(42);
  uniform_first = rand(1, 8);
  normal_first = randn(1, 8);
  second = lab5_seed_rng(42);
  assert(isequal(first, second));
  assert(isequal(uniform_first, rand(1, 8)));
  assert(isequal(normal_first, randn(1, 8)));
  lab5_seed_rng(43);
  assert(~isequal(uniform_first, rand(1, 8)));
  assert(~isequal(normal_first, randn(1, 8)));
  for seed = [0, 4294954950]
    info = lab5_seed_rng(seed);
    assert(info.rand_seed == seed && info.randn_seed == seed + 12345);
  end
  invalid = {-1, 1.5, NaN, Inf, 4294954951, [1 2], '42', 1i};
  for i = 1:length(invalid)
    rejected = false;
    try
      lab5_seed_rng(invalid{i});
    catch problem
      rejected = strcmp(problem.identifier, 'lab5:InvalidSeed');
    end
    assert(rejected);
  end
  legacy = lab5_seed_rng();
  assert(strcmp(legacy.mode, 'clock'));
  assert(isfinite(legacy.rand_seed) && isfinite(legacy.randn_seed));
  fprintf('PASS: deterministic uniform/normal replay, separation, bounds, validation, clock default\n');
end
