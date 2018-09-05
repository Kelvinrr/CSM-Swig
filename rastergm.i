%module(package="csmapi") rastergm
%{
    #include "RasterGM.h"
%}

%ignore CSM_RASTER_FAMILY;
%include exception.i
%exception {
    try {
        $action
    } catch (const std::exception &e) {
        SWIG_exception(SWIG_RuntimeError, e.what());
    }
} 


%import model.i
%import geometricmodel.i
%import csm.i

%include RasterGM.h
