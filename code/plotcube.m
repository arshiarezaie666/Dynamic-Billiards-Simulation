function plotcube(varargin)

inArgs(1:nargin) = varargin;
[edges,origin,alpha,clr,a] = deal(inArgs{:});

XYZ = { [0 0 0 0]  [0 0 1 1]  [0 1 1 0] ; [1 1 1 1]  [0 0 1 1]  [0 1 1 0] ; [0 1 1 0]  [0 0 0 0]  [0 0 1 1] ;  [0 1 1 0]  [1 1 1 1]  [0 0 1 1] ;  [0 1 1 0]  [0 0 1 1]  [0 0 0 0] ;  [0 1 1 0]  [0 0 1 1]  [1 1 1 1]};

XYZ = mat2cell( cellfun( @(x,y,z) x*y+z ,   XYZ ,  repmat(mat2cell(edges,1,[1 1 1]),6,1) ,  repmat(mat2cell(origin,1,[1 1 1]),6,1) ,  'UniformOutput',false), 6,[1 1 1]);
if a==0
cellfun(@patch,XYZ{1},XYZ{2},XYZ{3}, repmat({clr},6,1), repmat({'FaceAlpha'},6,1),repmat({alpha},6,1),repmat({'Linestyle'},6,1),repmat({'none'},6,1));
% patch(XYZ{1},XYZ{2},XYZ{3}, repmat({clr},6,1), repmat({'FaceAlpha'},6,1),repmat({alpha},6,1) );
end
if a==1
cellfun(@patch,XYZ{1},XYZ{2},XYZ{3}, repmat({clr},6,1), repmat({'FaceAlpha'},6,1),repmat({alpha},6,1));
% patch(XYZ{1},XYZ{2},XYZ{3}, repmat({clr},6,1), repmat({'FaceAlpha'},6,1),repmat({alpha},6,1) );
end