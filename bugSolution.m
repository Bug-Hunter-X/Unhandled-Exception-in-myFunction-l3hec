function result = myFunction(input)
  % Improved error handling
  if input < 0
    error('myFunction:NegativeInput', 'Input must be non-negative. Input value was: %f', input);
    return; % added return statement
  end
  % ... more code ...
  result = input * 2; % added result
end

% Example usage
try
    input = -1;
    result = myFunction(input);
    disp(['Result: ', num2str(result)]);
catch exception
    disp(['Error: ', exception.identifier]);
    disp(['Message: ', exception.message]);
end

try
    input = 5;
    result = myFunction(input);
    disp(['Result: ', num2str(result)]);
catch exception
    disp(['Error: ', exception.identifier]);
    disp(['Message: ', exception.message]);
end