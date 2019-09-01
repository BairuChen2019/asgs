#!/bin/bash
#----------------------------------------------------------------
# mesh_defaults.sh : Functions required for initializing
# parameters that are mesh dependent.  
#----------------------------------------------------------------
# Copyright(C) 2019 Jason Fleming
#
# This file is part of the ADCIRC Surge Guidance System (ASGS).
#
# The ASGS is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ASGS is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with the ASGS.  If not, see <http://www.gnu.org/licenses/>.
#----------------------------------------------------------------
THIS=config/mesh_defaults.sh
allMessage "$THIS: Setting default values for the mesh ${MESH}."
MESHURL=https://asgs-static-assets.sfo2.digitaloceanspaces.com/meshes
NODALATTRIBUTESURL=https://asgs-static-assets.sfo2.digitaloceanspaces.com/nodal-attributes
#
case $GRIDNAME in
   "LA_v19k-WithUpperAtch_chk")
      #
      INPUTDIR=$SCRIPTDIR/input/meshes/LA_v19k
      GRIDFILE=LA_v19k-WithUpperAtch_chk.grd   # mesh (fort.14) file
      MESHPROPERTIES=${GRIDFILE}.properties
      CONTROLTEMPLATE=LA_v19k-WithUpperAtch.15.template
      # wind at 10m fort.15 template
      CONTROLTEMPLATENOROUGH=LA_v19k-WithUpperAtch.nowindreduction.15.template
      CONTROLPROPERTIES=${CONTROLTEMPLATE}.properties
      ELEVSTATIONS=combined_stations_20190327.txt
      VELSTATIONS=combined_stations_20190327.txt
      METSTATIONS=combined_stations_20190327.txt
      NAFILE=LA_v19k-WithUpperAtch_chk.13
      NAPROPERTIES=${NAFILE}.properties
      SWANTEMPLATE=LA_v19k-WithUpperAtch.26.template   # only used if WAVES=on
      RIVERINIT=null                           # this mesh has no rivers ...
      RIVERFLUX=null
      HINDCASTRIVERFLUX=null
      # interaction between mesh and models:
      TIMESTEPSIZE=1.0           # adcirc time step size (seconds)
      SWANDT=1200                # swan timestep / coupling interval (seconds)
      # intersection between mesh, models, hpc platform, and number of compute cores:
      HINDCASTWALLTIME="18:00:00" # hindcast wall clock time
      ADCPREPWALLTIME="02:00:00"  # adcprep wall clock time, including partmesh
      NOWCASTWALLTIME="07:00:00"  # longest nowcast wall clock time
      FORECASTWALLTIME="07:00:00" # forecast wall clock time
      ;;
      #
   "ec95d")
      #   
      INPUTDIR=$SCRIPTDIR/input/meshes/ec95d
      GRIDFILE=ec_95d.grd   # mesh (fort.14) file
      MESHPROPERTIES=${GRIDFILE}.properties
      CONTROLTEMPLATE=ec_95_fort.15_template   # fort.15 template
      # wind at 10m fort.15 template
      CONTROLTEMPLATENOROUGH=ec_95_nowindreduction.fort.15_template
      CONTROLPROPERTIES=${CONTROLTEMPLATE}.properties
      ELEVSTATIONS=cera_stations.txt
      VELSTATIONS=cera_stations.txt
      METSTATIONS=cera_stations.txt
      NAFILE=null
      NAPROPERTIES=${NAFILE}.properties
      SWANTEMPLATE=fort.26.nolimiter.template   # only used if WAVES=on
      RIVERINIT=null                            # this mesh has no rivers ...
      RIVERFLUX=null
      HINDCASTRIVERFLUX=null
      # interaction between mesh and models:
      TIMESTEPSIZE=30.0           # adcirc time step size (seconds)
      SWANDT=1200                # swan timestep / coupling interval (seconds)
      # intersection between mesh, models, hpc platform, and number of compute cores:
      HINDCASTWALLTIME="01:00:00" # hindcast wall clock time
      ADCPREPWALLTIME="01:00:00"  # adcprep wall clock time, including partmesh
      NOWCASTWALLTIME="01:00:00"  # longest nowcast wall clock time
      FORECASTWALLTIME="01:00:00" # forecast wall clock time
      ;;
   "tx2008_r35h")
      INPUTDIR=$SCRIPTDIR/input/meshes/texas2008_r35h
      GRIDFILE=tx2008_r35h.grd # mesh (fort.14) file
      MESHPROPERTIES=${GRIDFILE}.properties
      CONTROLTEMPLATE=tx2008r35h_template.15   # fort.15 template
      # wind at 10m fort.15 template
      CONTROLTEMPLATENOROUGH=tx2008r35h_norough_template.15
      CONTROLPROPERTIES=${CONTROLTEMPLATE}.properties
      ELEVSTATIONS=tx2008r35h_stations_20170618.txt
      VELSTATIONS=tx2008r35h_stations_20170618.txt
      METSTATIONS=tx2008r35h_stations_20170618.txt
      NAFILE=tx2008_r35h.13
      NAPROPERTIES=${NAFILE}.properties
      SWANTEMPLATE=fort.26.nolimiter.template    # only used if WAVES=on
      RIVERINIT=null                           # this mesh has no rivers ...
      RIVERFLUX=null
      HINDCASTRIVERFLUX=null
      # interaction between mesh and models:
      TIMESTEPSIZE=1.0           # adcirc time step size (seconds)
      SWANDT=1200                # swan timestep / coupling interval (seconds)
      # intersection between mesh, models, hpc platform, and number of compute cores:
      HINDCASTWALLTIME="18:00:00" # hindcast wall clock time
      ADCPREPWALLTIME="02:00:00"  # adcprep wall clock time, including partmesh
      NOWCASTWALLTIME="07:00:00"  # longest nowcast wall clock time
      FORECASTWALLTIME="07:00:00" # forecast wall clock time
      ;;
   "neflga_v12_geo")
      INPUTDIR=$SCRIPTDIR/input/meshes/neflga
      GRIDFILE=neflga_v12_geo.14 # mesh (fort.14) file
      MESHPROPERTIES=${GRIDFILE}.properties
      CONTROLTEMPLATE=neflga_v12_geo_template.15   # fort.15 template
      # wind at 10m fort.15 template
      CONTROLTEMPLATENOROUGH=neflga_v12_geo_norough_template.15
      CONTROLPROPERTIES=${CONTROLTEMPLATE}.properties
      ELEVSTATIONS=neflga_stations_20190809.txt
      VELSTATIONS=${ELEVSTATIONS}
      METSTATIONS=${ELEVSTATIONS}
      NAFILE=neflga_v12.13
      NAPROPERTIES=${NAFILE}.properties
      SWANTEMPLATE=fort.26.nolimiter.template    # only used if WAVES=on
      RIVERINIT=null                           # this mesh has no rivers ...
      RIVERFLUX=null
      HINDCASTRIVERFLUX=null
      # interaction between mesh and models:
      TIMESTEPSIZE=1.0           # adcirc time step size (seconds)
      SWANDT=1200                # swan timestep / coupling interval (seconds)
      # intersection between mesh, models, hpc platform, and number of compute cores:
      HINDCASTWALLTIME="18:00:00" # hindcast wall clock time
      ADCPREPWALLTIME="02:00:00"  # adcprep wall clock time, including partmesh
      NOWCASTWALLTIME="07:00:00"  # longest nowcast wall clock time
      FORECASTWALLTIME="07:00:00" # forecast wall clock time
      ;;
   "nc_inundation_v9.99_w_rivers")
      INPUTDIR=$SCRIPTDIR/input/meshes/nc_v9.99_w_rivers
      GRIDFILE=nc_inundation_v9.99a_w_rivers.grd
      MESHPROPERTIES=${GRIDFILE}.properties
      #CONTROLTEMPLATE=nc_9.99wrivers_vortex_fort.15.template
      CONTROLTEMPLATE=nc_9.99wrivers_vortex_fort.15.template.minbf.eq.0_wcap.eq.002
      # wind at 10m fort.15 template
      CONTROLTEMPLATENOROUGH=nc_9.99wrivers.nowindreduction.fort.15.template
      CONTROLPROPERTIES=fort.15.properties
      ELEVSTATIONS=ncv999_stations_20180907.txt
      VELSTATIONS=${ELEVSTATIONS}
      METSTATIONS=${ELEVSTATIONS}
      NAFILE=nc_inundation_v9.99_rivers.13
      NAPROPERTIES=${NAFILE}.properties
      SWANTEMPLATE=fort.26.template
      RIVERINIT=v6brivers.88
      RIVERFLUX=v6brivers_fort.20_default
      HINDCASTRIVERFLUX=v6brivers_fort.20_hc_default
      # interaction between mesh and models:
      TIMESTEPSIZE=0.5           # adcirc time step size (seconds)
      SWANDT=1200                # swan timestep / coupling interval (seconds)
      # intersection between mesh, models, hpc platform, and number of compute cores:
      HINDCASTWALLTIME="18:00:00" # hindcast wall clock time
      ADCPREPWALLTIME="02:00:00"  # adcprep wall clock time, including partmesh
      NOWCASTWALLTIME="07:00:00"  # longest nowcast wall clock time
      FORECASTWALLTIME="07:00:00" # forecast wall clock time
      ;; 
   "hsofs")
      INPUTDIR=$SCRIPTDIR/input/meshes/hsofs
      GRIDFILE=hsofs.14  # mesh (fort.14) file
      MESHPROPERTIES=${GRIDFILE}.nc.properties
      CONTROLTEMPLATE=hsofs_explicit.15.template
      # wind at 10m fort.15 template
      CONTROLTEMPLATENOROUGH=hsofs.nowindreduction.15.template
      CONTROLPROPERTIES=${CONTROLTEMPLATE}.properties 
      ELEVSTATIONS=hsofs_stations_20180907.txt
      VELSTATIONS=$ELEVSTATIONS
      METSTATIONS=$ELEVSTATIONS
      NAFILE=hsofs.13
      NAPROPERTIES=${NAFILE}.properties
      #SWANTEMPLATE=fort.26.template # only used if WAVES=on
      SWANTEMPLATE=fort.26.nolimiter.template # need to use this with ADCIRC+SWAN v53
      RIVERINIT=null                          # this mesh has no rivers ...RIVERFLUX=null
      HINDCASTRIVERFLUX=null
      # interaction between mesh and models:
      TIMESTEPSIZE=2.0            # adcirc time step size (seconds)
      SWANDT=1800                 # swan timestep / coupling interval (seconds)
      # intersection between mesh, models, hpc platform, and number of compute cores:
      HINDCASTWALLTIME="24:00:00" # hindcast wall clock time
      ADCPREPWALLTIME="02:00:00"  # adcprep wall clock time, including partmesh
      NOWCASTWALLTIME="07:00:00"  # longest nowcast wall clock time
      FORECASTWALLTIME="08:00:00" # forecast wall clock time
      ;;
   "southfl_v11-1_final")
      INPUTDIR=$SCRIPTDIR/input/meshes/southfl    
      GRIDFILE=southfl_v11-1_final.grd
      MESHPROPERTIES=${GRIDFILE}.properties
      CONTROLTEMPLATE=southfl-v11-1.template.15
      # wind at 10m fort.15 template
      CONTROLTEMPLATENOROUGH=southfl-v11-1.nowindreduction.template.15
      CONTROLPROPERTIES=${CONTROLTEMPLATE}.properties
      ELEVSTATIONS=southfl_stations_20190502.txt
      VELSTATIONS=southfl_stations_20190502.txt
      METSTATIONS=southfl_stations_20190502.txt
      NAFILE=southfl_v11-1_final-production.13
      NAPROPERTIES=${NAFILE}.properties
      SWANTEMPLATE=fort.26.nolimiter.template
      RIVERINIT=null                           # this mesh has no rivers ...
      RIVERFLUX=null
      HINDCASTRIVERFLUX=null
      # interaction between mesh and models:
      TIMESTEPSIZE=0.5            # adcirc time step size (seconds)
      SWANDT=1200                 # swan timestep / coupling interval (seconds)
      # intersection between mesh, models, hpc platform, and number of compute cores:
      HINDCASTWALLTIME="18:00:00" # hindcast wall clock time
      ADCPREPWALLTIME="02:00:00"  # adcprep wall clock time, including partmesh
      NOWCASTWALLTIME="07:00:00"  # longest nowcast wall clock time
      FORECASTWALLTIME="07:00:00" # forecast wall clock time
      ;;
   "eccl_v7_geo_z")
      INPUTDIR=$SCRIPTDIR/input/meshes/cenfl    
      GRIDFILE=eccl_v7_geo_z.grd
      MESHPROPERTIES=${GRIDFILE}.properties
      CONTROLTEMPLATE=cenfl.fort.15.template
      # wind at 10m fort.15 template
      CONTROLTEMPLATENOROUGH=cenfl.norough.fort.15.template
      CONTROLPROPERTIES=${CONTROLTEMPLATE}.properties
      ELEVSTATIONS=cenfl_stations_20190809.txt
      VELSTATIONS=${ELEVSTATIONS}
      METSTATIONS=${ELEVSTATIONS}
      NAFILE=cenfl_v7.13
      NAPROPERTIES=${NAFILE}.properties
      SWANTEMPLATE=fort.26.nolimiter.template
      RIVERINIT=null                           # this mesh has no rivers ...
      RIVERFLUX=null
      HINDCASTRIVERFLUX=null
      # interaction between mesh and models:
      TIMESTEPSIZE=1.0            # adcirc time step size (seconds)
      SWANDT=1200                 # swan timestep / coupling interval (seconds)
      # intersection between mesh, models, hpc platform, and number of compute cores:
      HINDCASTWALLTIME="18:00:00" # hindcast wall clock time
      ADCPREPWALLTIME="02:00:00"  # adcprep wall clock time, including partmesh
      NOWCASTWALLTIME="07:00:00"  # longest nowcast wall clock time
      FORECASTWALLTIME="07:00:00" # forecast wall clock time
      ;;
   *)
      warn "cycle $CYCLE: $SCENARIO: $THIS: Mesh GRIDNAME $GRIDNAME was not recognized."
      ;;
esac
