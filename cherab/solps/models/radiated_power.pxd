
# Copyright 2014-2017 United Kingdom Atomic Energy Authority
#
# Licensed under the EUPL, Version 1.1 or – as soon they will be approved by the
# European Commission - subsequent versions of the EUPL (the "Licence");
# You may not use this work except in compliance with the Licence.
# You may obtain a copy of the Licence at:
#
# https://joinup.ec.europa.eu/software/page/eupl5
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the Licence is distributed on an "AS IS" basis, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied.
#
# See the Licence for the specific language governing permissions and limitations
# under the Licence.

from raysect.optical cimport Point3D, Vector3D, Spectrum, World, Ray, Primitive, AffineMatrix3D
from raysect.optical.material.emitter cimport InhomogeneousVolumeEmitter

from cherab.core cimport Plasma
from cherab.core.math.function cimport Function3D


cdef class SOLPSTotalRadiatedPower(InhomogeneousVolumeEmitter):

    cdef:
        Function3D total_rad, inside_simulation

    cpdef Spectrum emission_function(self, Point3D point, Vector3D direction, Spectrum spectrum,
                                     World world, Ray ray, Primitive primitive,
                                     AffineMatrix3D world_to_local, AffineMatrix3D local_to_world)
