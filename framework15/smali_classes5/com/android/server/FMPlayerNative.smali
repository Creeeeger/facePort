.class public Lcom/android/server/FMPlayerNative;
.super Lcom/android/server/FMPlayerNativeBase;
.source "FMPlayerNative.java"


# static fields
.field private static final blacklist DEBUGGABLE:Z

.field private static blacklist mService:Lcom/android/server/FMRadioService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-string v1, "FMPlayerNative"

    if-lez v0, :cond_0

    const-string/jumbo v0, "fmradio_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "FMRadio lib loaded"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "FMRadio lib not loaded"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/FMPlayerNativeBase;-><init>(Lcom/android/server/FMRadioService;)V

    sput-object p1, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    return-void
.end method

.method public static blacklist notifyAFDataReceived(J)V
    .locals 3

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyAFDataReceived :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xe

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public static blacklist notifyAFStarted()V
    .locals 3

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NotifyAFStarted :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public static blacklist notifyPIECCEvent(Lcom/android/server/FMPlayerNativeBase$PIECCData;)V
    .locals 0

    return-void
.end method

.method public static blacklist notifyRDSEvent(Lcom/android/server/FMPlayerNativeBase$RDSData;)V
    .locals 2

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got Events :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public static blacklist notifyRTPlusEvent(Lcom/android/server/FMPlayerNativeBase$RTPlusData;)V
    .locals 2

    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got notifyRTPlusEvents :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public native blacklist cancelAFSwitching()V
.end method

.method public native blacklist cancelSeek()V
.end method

.method public native blacklist disableAF()V
.end method

.method public native blacklist disableDNS()V
.end method

.method public native blacklist disableRDS()V
.end method

.method public native blacklist enableAF()V
.end method

.method public native blacklist enableDNS()V
.end method

.method public native blacklist enableRDS()V
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    return-void
.end method

.method public native blacklist getAFRMSSISamples()I
.end method

.method public native blacklist getAFRMSSIThreshold()I
.end method

.method public native blacklist getAFValid_th()I
.end method

.method public native blacklist getAF_th()I
.end method

.method public native blacklist getBlendRmssi()I
.end method

.method public native blacklist getBlendSinr()I
.end method

.method public native blacklist getCFOTh12()I
.end method

.method public native blacklist getCnt_th()I
.end method

.method public native blacklist getCnt_th_2()I
.end method

.method public native blacklist getCurrentChannel()J
.end method

.method public native blacklist getCurrentRSSI()J
.end method

.method public native blacklist getCurrentSNR()J
.end method

.method public native blacklist getDeSenseList()Ljava/lang/String;
.end method

.method public native blacklist getFakeChannel()Ljava/lang/String;
.end method

.method public native blacklist getFrequencyOffsetThreshold()I
.end method

.method public native blacklist getGoodChannelRMSSIThreshold()I
.end method

.method public native blacklist getHybridSearch()Ljava/lang/String;
.end method

.method public native blacklist getMaxVolume()J
.end method

.method public native blacklist getNoisePowerThreshold()I
.end method

.method public native blacklist getOffChannelThreshold()I
.end method

.method public native blacklist getOnChannelThreshold()I
.end method

.method public native blacklist getPilotPowerThreshold()I
.end method

.method public native blacklist getRMSSIFirstStage()I
.end method

.method public native blacklist getRSSI_th()I
.end method

.method public native blacklist getRSSI_th_2()I
.end method

.method public native blacklist getSINRFirstStage()I
.end method

.method public native blacklist getSINRSamples()I
.end method

.method public native blacklist getSINRThreshold()I
.end method

.method public native blacklist getSNR_th()I
.end method

.method public native blacklist getSNR_th_2()I
.end method

.method public native blacklist getSearchAlgoType()I
.end method

.method public native blacklist getSeekDC()I
.end method

.method public native blacklist getSeekQA()I
.end method

.method public native blacklist getSoftMuteMode()Z
.end method

.method public native blacklist getVolume()J
.end method

.method public native blacklist muteOff()V
.end method

.method public native blacklist muteOn()V
.end method

.method public native blacklist off()V
.end method

.method public blacklist offFMService()V
    .locals 0

    return-void
.end method

.method public native blacklist on()J
.end method

.method public native blacklist preInitialize()J
.end method

.method public native blacklist searchAll()J
.end method

.method public native blacklist searchDown()J
.end method

.method public native blacklist searchUp()J
.end method

.method public native blacklist seekDown()J
.end method

.method public native blacklist seekUp()J
.end method

.method public native blacklist setAFRMSSISamples(I)V
.end method

.method public native blacklist setAFRMSSIThreshold(I)V
.end method

.method public native blacklist setAFValid_th(I)V
.end method

.method public native blacklist setAF_th(I)V
.end method

.method public native blacklist setATJ(I)V
.end method

.method public native blacklist setBand(I)V
.end method

.method public native blacklist setBlendPAMD_th(I)V
.end method

.method public native blacklist setBlendRSSI_th(I)V
.end method

.method public native blacklist setBlendRmssi(I)V
.end method

.method public native blacklist setBlendSinr(I)V
.end method

.method public native blacklist setCFOTh12(I)V
.end method

.method public native blacklist setChannelSpacing(I)V
.end method

.method public native blacklist setCnt_th(I)V
.end method

.method public native blacklist setCnt_th_2(I)V
.end method

.method public native blacklist setDEConstant(J)V
.end method

.method public native blacklist setDeSenseList(Ljava/lang/String;)V
.end method

.method public native blacklist setFMIntenna(Z)V
.end method

.method public native blacklist setFakeChannel(Ljava/lang/String;)V
.end method

.method public native blacklist setFrequencyOffsetThreshold(I)V
.end method

.method public native blacklist setGoodChannelRMSSIThreshold(I)V
.end method

.method public native blacklist setHybridSearch(Ljava/lang/String;)V
.end method

.method public native blacklist setIFCount1(I)V
.end method

.method public native blacklist setIFCount2(I)V
.end method

.method public native blacklist setMono()V
.end method

.method public native blacklist setNoisePowerThreshold(I)V
.end method

.method public native blacklist setOffChannelThreshold(I)V
.end method

.method public native blacklist setOnChannelThreshold(I)V
.end method

.method public native blacklist setPilotPowerThreshold(I)V
.end method

.method public native blacklist setRMSSIFirstStage(I)V
.end method

.method public native blacklist setRSSI_th(I)V
.end method

.method public native blacklist setRSSI_th_2(I)V
.end method

.method public native blacklist setRecordMode(I)V
.end method

.method public native blacklist setSINRFirstStage(I)V
.end method

.method public native blacklist setSINRSamples(I)V
.end method

.method public native blacklist setSINRThreshold(I)V
.end method

.method public native blacklist setSNR_th(I)V
.end method

.method public native blacklist setSNR_th_2(I)V
.end method

.method public native blacklist setScanning(Z)V
.end method

.method public native blacklist setSearchAlgoType(I)V
.end method

.method public native blacklist setSeekDC(I)V
.end method

.method public native blacklist setSeekDesenseRSSI(I)V
.end method

.method public native blacklist setSeekQA(I)V
.end method

.method public native blacklist setSeekRSSI(J)V
.end method

.method public native blacklist setSeekSMG(I)V
.end method

.method public native blacklist setSeekSNR(J)V
.end method

.method public native blacklist setSlimbusEnable(I)V
.end method

.method public native blacklist setSoftMuteCoeff(J)V
.end method

.method public native blacklist setSoftStereoBlendCoeff(J)V
.end method

.method public native blacklist setSoftStereoBlendRef(J)V
.end method

.method public native blacklist setSoftmute(Z)V
.end method

.method public native blacklist setSoftmute_th(I)V
.end method

.method public native blacklist setSpeakerOn(Z)V
.end method

.method public native blacklist setStereo()V
.end method

.method public native blacklist setVolume(J)V
.end method

.method public native blacklist tune(J)V
.end method
