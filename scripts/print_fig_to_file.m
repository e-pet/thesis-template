function print_fig_to_file(fig, filename, driver, x_width_in, y_width_in)
% Prints Matlab figure to graphics file.
%
% The generated file should be included in a LaTeX file using
%     \includegraphics[width=XXXXin]{./filename.ext}
% where "XXXX" = x_width_in, and "ext" specifies the file extension of the 
% generated graphics file.
%
% Arguments: 
% fig - Figure to export.
% filename - Char vector specifying filename (including path) to write to.
%            Directory must already exist. Should not contain the file
%            extension.
% driver - Image driver to use, e.g. '-depsc' (to print to eps file with
%          color) or '-dpng' (to print to png). For more options, refer to
%          the doc page of the 'print' function.
% x_width_in - Target width of the figure including axes and margins in the
%              final document in inches.
% y_width_in - Target heigth of the figure including axes and margins in
%              the final document in inches. If not provided, is set to 
%              x_width_in / 1.618 (Golden Ratio).

    set(fig, 'PaperUnits', 'inches');
    if nargin < 5
        % Golden Ratio for plotting
        GR=1.618;
        y_width_in = x_width_in / GR;
    end

    set(fig, 'PaperPosition', [0 0 x_width_in y_width_in]);
    print(fig, filename, driver);