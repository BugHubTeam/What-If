import { AppError } from "./AppError.js";

export const asyncHandler = (fn) => {
  return (req, res, next) => {
    fn(req, res, next).catch((err) => {
      return next(new AppError(err.message, err.statusCode));
    });
  };
};

export const globalErrorHandler = (err, req, res, next) => {
  res
    .status(err.statusCode || 500)
    .json({
      message: err.message,
      statusCode: err.statusCode || 500,
      success: false,
    });
};
