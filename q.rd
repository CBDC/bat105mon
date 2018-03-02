<resource schema="bat105mon">
  <meta name="title">Swift BAT 105-Month Hard X-ray Survey</meta>
  <meta name="creationDate">2018-02-28T21:02:03</meta>
  <meta name="description">
  Swift BAT 105-Month Hard X-ray Survey.
  </meta>
  <meta name="creator.name">Oh et al.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">X-ray sources</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">X-ray</meta>
   </meta>

   <meta name="source">
    2018.in press;
   </meta>

   <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="BAT_NAME">
    <index columns="RA,DEC"/>

    <column name="BAT_NAME" type="text"
      ucd="meta.id;meta.main"
      tablehead="BAT_NAME" verbLevel="1"
      description="Designation"
      required="True"/>

    <column name="RA" type="real"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="R.A." verbLevel="1"
      description="Right Ascension"
      required="True"/>

    <column name="DEC" type="real"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="Dec." verbLevel="1"
      description="Declination"
      required="True"/>

    <column name="SNR" type="real"
        ucd="stat.snr"
       tablehead="SNR" verbLevel="1"
       description="Signal to noise ratio"
      required="True"/>

    <column name="COUNTERPART_NAME" type="text"
      ucd="meta.id.assoc"
      tablehead="COUNTERPART_NAME" verbLevel="1"
      description="Counterpart of BAT"
      required="True"/>

    <column name="CTPT_RA" type="real"
      unit="deg" ucd="pos.eq.ra"
      tablehead="CTPT_RA" verbLevel="1"
      description="Right Ascension of the counterpart"
      required="True"/>

    <column name="CTPT_DEC" type="real"
      unit="deg" ucd="pos.eq.dec"
      tablehead="CTPT_DEC" verbLevel="1"
      description="Declination of the counterpart"
      required="True"/>

    <column name="FLUX" type="real"
      unit="10-12 erg cm-2 s-1" ucd="phot.flux.density;em.X-ray.hard"
      tablehead="FLUX" verbLevel="1"
      description="FLUX in 14 - 195 keV"
      required="True"/>

    <column name="FLUX_LO" type="real"
    unit="10-12 erg cm-2 s-1" ucd="stat.error;phot.flux.density;em.X-ray.hard"
     tablehead="FLUX_LO" verbLevel="1"
     description="FLUX lower limit in 14 - 195 keV"
     required="True"/>

    <column name="FLUX_HI" type="real"
      unit="10-12 erg cm-2 s-1" ucd="stat.error;phot.flux.density;em.X-ray.hard"
      tablehead="FLUX_HI" verbLevel="1"
      description="FLUX upper limit in 14 - 195 keV"
      required="True"/>

   <column name="GAMM" type="real"
    ucd="spect.index"
    tablehead="Gamma" verbLevel="1"
    description="X-ray photon index"
      required="True"/>

   <column name="GAMM_LO" type="real"
     ucd="stat.error;spect.index"
     tablehead="Gamma_LO" verbLevel="1"
     description="X-ray photon index lower limit"
      required="True"/>

   <column name="GAMM_HI" type="real"
    ucd="stat.error;spect.index"
    tablehead="Gamma_HI" verbLevel="1"
    description="X-ray photon index upper limit"
      required="True"/>

    <column name="CHI_SQ_R" type="real"
      ucd="stat.fit.chi2"
      tablehead="CHI_2" verbLevel="1"
      description="Chi Squre"
      required="True"/>

    <column name="REDSHIF" type="real"
      ucd="src.redshift"
      tablehead="REDSHIF" verbLevel="1"
      description="REDSHIF"
      required="True"/>

   <column name="LUM" type="real"
     unit="erg s-1" ucd="phys.luminosity;em.X-ray.hard"
     tablehead="Log Luminosity" verbLevel="1"
     description="Luminosity in 14 - 195 keV"
     required="True"/>

   <column name="CL2" type="integer"
     ucd="src.class"
     tablehead="Source class" verbLevel="1"
     description="Source class"
     required="True"/>

   <column name="TYPE" type="text"
    ucd="src.class"
    tablehead="TYPE" verbLevel="1"
    description="Source type"
    required="True"/>

  </table>

  <data id="import">
    <sources>BAT105.fits</sources>

    <fitsTableGrammar/>

    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">BAT105MON catalog</meta>
    <meta name="shortName">BATPA105MON cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="local"/>
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
