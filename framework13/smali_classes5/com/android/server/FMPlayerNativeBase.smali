.class public Lcom/android/server/FMPlayerNativeBase;
.super Ljava/lang/Object;
.source "FMPlayerNativeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMPlayerNativeBase$PIECCData;,
        Lcom/android/server/FMPlayerNativeBase$RTPlusData;,
        Lcom/android/server/FMPlayerNativeBase$RDSData;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/FMRadioService;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public blacklist cancelAFSwitching()V
    .locals 0

    .line 141
    return-void
.end method

.method public blacklist cancelSeek()V
    .locals 0

    .line 105
    return-void
.end method

.method public blacklist disableAF()V
    .locals 0

    .line 139
    return-void
.end method

.method public blacklist disableRDS()V
    .locals 0

    .line 135
    return-void
.end method

.method public blacklist enableAF()V
    .locals 0

    .line 137
    return-void
.end method

.method public blacklist enableRDS()V
    .locals 0

    .line 133
    return-void
.end method

.method public blacklist getAFRMSSISamples()I
    .locals 1

    .line 287
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAFRMSSIThreshold()I
    .locals 1

    .line 281
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAFValid_th()I
    .locals 1

    .line 218
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAF_th()I
    .locals 1

    .line 212
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getBlendRmssi()I
    .locals 1

    .line 305
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getBlendSinr()I
    .locals 1

    .line 311
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCFOTh12()I
    .locals 1

    .line 263
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCnt_th()I
    .locals 1

    .line 194
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCnt_th_2()I
    .locals 1

    .line 206
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCurrentChannel()J
    .locals 2

    .line 108
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getCurrentRSSI()J
    .locals 2

    .line 162
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getCurrentSNR()J
    .locals 2

    .line 166
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getDeSenseList()Ljava/lang/String;
    .locals 1

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFakeChannel()Ljava/lang/String;
    .locals 1

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFrequencyOffsetThreshold()I
    .locals 1

    .line 335
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getGoodChannelRMSSIThreshold()I
    .locals 1

    .line 293
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getHybridSearch()Ljava/lang/String;
    .locals 1

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaxVolume()J
    .locals 2

    .line 156
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getNoisePowerThreshold()I
    .locals 1

    .line 341
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getOffChannelThreshold()I
    .locals 1

    .line 251
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getOnChannelThreshold()I
    .locals 1

    .line 245
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getPilotPowerThreshold()I
    .locals 1

    .line 338
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getRMSSIFirstStage()I
    .locals 1

    .line 269
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getRSSI_th()I
    .locals 1

    .line 186
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getRSSI_th_2()I
    .locals 1

    .line 198
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSINRFirstStage()I
    .locals 1

    .line 275
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSINRSamples()I
    .locals 1

    .line 239
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSINRThreshold()I
    .locals 1

    .line 257
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSNR_th()I
    .locals 1

    .line 190
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSNR_th_2()I
    .locals 1

    .line 202
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSearchAlgoType()I
    .locals 1

    .line 233
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSeekDC()I
    .locals 1

    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSeekQA()I
    .locals 1

    .line 325
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSoftMuteMode()Z
    .locals 1

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVolume()J
    .locals 2

    .line 126
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist muteOff()V
    .locals 0

    .line 131
    return-void
.end method

.method public blacklist muteOn()V
    .locals 0

    .line 129
    return-void
.end method

.method public blacklist off()V
    .locals 0

    .line 93
    return-void
.end method

.method public blacklist offFMService()V
    .locals 0

    .line 95
    return-void
.end method

.method public blacklist on()J
    .locals 2

    .line 86
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist preInitialize()J
    .locals 2

    .line 90
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist searchAll()J
    .locals 2

    .line 120
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist searchDown()J
    .locals 2

    .line 112
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist searchUp()J
    .locals 2

    .line 116
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist seekDown()J
    .locals 2

    .line 102
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist seekUp()J
    .locals 2

    .line 98
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist setAFRMSSISamples(I)V
    .locals 0
    .param p1, "value"    # I

    .line 284
    return-void
.end method

.method public blacklist setAFRMSSIThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .line 278
    return-void
.end method

.method public blacklist setAFValid_th(I)V
    .locals 0
    .param p1, "value"    # I

    .line 215
    return-void
.end method

.method public blacklist setAF_th(I)V
    .locals 0
    .param p1, "value"    # I

    .line 209
    return-void
.end method

.method public blacklist setATJ(I)V
    .locals 0
    .param p1, "bATJOn"    # I

    .line 364
    return-void
.end method

.method public blacklist setBand(I)V
    .locals 0
    .param p1, "band"    # I

    .line 143
    return-void
.end method

.method public blacklist setBlendPAMD_th(I)V
    .locals 0
    .param p1, "value"    # I

    .line 355
    return-void
.end method

.method public blacklist setBlendRSSI_th(I)V
    .locals 0
    .param p1, "value"    # I

    .line 354
    return-void
.end method

.method public blacklist setBlendRmssi(I)V
    .locals 0
    .param p1, "value"    # I

    .line 302
    return-void
.end method

.method public blacklist setBlendSinr(I)V
    .locals 0
    .param p1, "value"    # I

    .line 308
    return-void
.end method

.method public blacklist setCFOTh12(I)V
    .locals 0
    .param p1, "value"    # I

    .line 260
    return-void
.end method

.method public blacklist setChannelSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .line 145
    return-void
.end method

.method public blacklist setCnt_th(I)V
    .locals 0
    .param p1, "value"    # I

    .line 177
    return-void
.end method

.method public blacklist setCnt_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .line 183
    return-void
.end method

.method public blacklist setDEConstant(J)V
    .locals 0
    .param p1, "value"    # J

    .line 159
    return-void
.end method

.method public blacklist setDeSenseList(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 360
    return-void
.end method

.method public blacklist setFMIntenna(Z)V
    .locals 0
    .param p1, "setFMIntenna"    # Z

    .line 221
    return-void
.end method

.method public blacklist setFakeChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 356
    return-void
.end method

.method public blacklist setFrequencyOffsetThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .line 331
    return-void
.end method

.method public blacklist setGoodChannelRMSSIThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .line 290
    return-void
.end method

.method public blacklist setHybridSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 296
    return-void
.end method

.method public blacklist setIFCount1(I)V
    .locals 0
    .param p1, "value"    # I

    .line 344
    return-void
.end method

.method public blacklist setIFCount2(I)V
    .locals 0
    .param p1, "value"    # I

    .line 345
    return-void
.end method

.method public blacklist setMono()V
    .locals 0

    .line 149
    return-void
.end method

.method public blacklist setNoisePowerThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .line 333
    return-void
.end method

.method public blacklist setOffChannelThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .line 248
    return-void
.end method

.method public blacklist setOnChannelThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .line 242
    return-void
.end method

.method public blacklist setPilotPowerThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .line 332
    return-void
.end method

.method public blacklist setRMSSIFirstStage(I)V
    .locals 0
    .param p1, "value"    # I

    .line 266
    return-void
.end method

.method public blacklist setRSSI_th(I)V
    .locals 0
    .param p1, "value"    # I

    .line 173
    return-void
.end method

.method public blacklist setRSSI_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .line 179
    return-void
.end method

.method public blacklist setRecordMode(I)V
    .locals 0
    .param p1, "is_record"    # I

    .line 153
    return-void
.end method

.method public blacklist setSINRFirstStage(I)V
    .locals 0
    .param p1, "value"    # I

    .line 272
    return-void
.end method

.method public blacklist setSINRSamples(I)V
    .locals 0
    .param p1, "value"    # I

    .line 236
    return-void
.end method

.method public blacklist setSINRThreshold(I)V
    .locals 0
    .param p1, "value"    # I

    .line 254
    return-void
.end method

.method public blacklist setSNR_th(I)V
    .locals 0
    .param p1, "value"    # I

    .line 175
    return-void
.end method

.method public blacklist setSNR_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .line 181
    return-void
.end method

.method public blacklist setScanning(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 329
    return-void
.end method

.method public blacklist setSearchAlgoType(I)V
    .locals 0
    .param p1, "value"    # I

    .line 230
    return-void
.end method

.method public blacklist setSeekDC(I)V
    .locals 0
    .param p1, "value"    # I

    .line 316
    return-void
.end method

.method public blacklist setSeekDesenseRSSI(I)V
    .locals 0
    .param p1, "value"    # I

    .line 351
    return-void
.end method

.method public blacklist setSeekQA(I)V
    .locals 0
    .param p1, "value"    # I

    .line 322
    return-void
.end method

.method public blacklist setSeekRSSI(J)V
    .locals 0
    .param p1, "value"    # J

    .line 169
    return-void
.end method

.method public blacklist setSeekSMG(I)V
    .locals 0
    .param p1, "value"    # I

    .line 352
    return-void
.end method

.method public blacklist setSeekSNR(J)V
    .locals 0
    .param p1, "value"    # J

    .line 171
    return-void
.end method

.method public blacklist setSlimbusEnable(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 371
    return-void
.end method

.method public blacklist setSoftMuteCoeff(J)V
    .locals 0
    .param p1, "value"    # J

    .line 347
    return-void
.end method

.method public blacklist setSoftStereoBlendCoeff(J)V
    .locals 0
    .param p1, "value"    # J

    .line 346
    return-void
.end method

.method public blacklist setSoftStereoBlendRef(J)V
    .locals 0
    .param p1, "value"    # J

    .line 348
    return-void
.end method

.method public blacklist setSoftmute(Z)V
    .locals 0
    .param p1, "setSoftmute"    # Z

    .line 223
    return-void
.end method

.method public blacklist setSoftmute_th(I)V
    .locals 0
    .param p1, "value"    # I

    .line 353
    return-void
.end method

.method public blacklist setSpeakerOn(Z)V
    .locals 0
    .param p1, "setSpeakerOn"    # Z

    .line 151
    return-void
.end method

.method public blacklist setStereo()V
    .locals 0

    .line 147
    return-void
.end method

.method public blacklist setVolume(J)V
    .locals 0
    .param p1, "volume"    # J

    .line 123
    return-void
.end method

.method public blacklist tune(J)V
    .locals 0
    .param p1, "freq"    # J

    .line 83
    return-void
.end method
