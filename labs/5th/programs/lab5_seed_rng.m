function info = lab5_seed_rng(seed)
% Initialize both streams used by the Lab 5 DES; return replay metadata.
% No argument retains the two historical clock-based seed expressions.
  if nargin == 0
    info.mode = 'clock';
    info.rand_seed = sum(100 * clock);
    rand('state', info.rand_seed);
    info.randn_seed = sum(100 * clock) + 12345;
    randn('state', info.randn_seed);
  else
    if ~isnumeric(seed) || ~isreal(seed) || ~isscalar(seed) || ...
       ~isfinite(seed) || seed < 0 || seed ~= fix(seed) || seed > (2^32 - 1 - 12345)
      error('lab5:InvalidSeed', 'seed must be an integer in [0, 4294954950].');
    end
    info.mode = 'deterministic';
    info.rand_seed = double(seed);
    info.randn_seed = double(seed) + 12345;
    rand('state', info.rand_seed);
    randn('state', info.randn_seed);
  end
end
