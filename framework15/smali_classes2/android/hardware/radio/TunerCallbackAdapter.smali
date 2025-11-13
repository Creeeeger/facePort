.class final Landroid/hardware/radio/TunerCallbackAdapter;
.super Landroid/hardware/radio/ITunerCallback$Stub;
.source "TunerCallbackAdapter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BroadcastRadio.TunerCallbackAdapter"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/radio/RadioTuner$Callback;

.field blacklist mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field private blacklist mDelayedCompleteCallback:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field blacklist mIsAntennaConnected:Z

.field blacklist mLastCompleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field blacklist mProgramList:Landroid/hardware/radio/ProgramList;


# direct methods
.method public static synthetic blacklist $r8$lambda$1z8SZrGuPUxGVv7_VNEmAPbDr9Y(Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onError$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4JJkgS1W_B7EH0wpfxrrGUuY7FA(Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onTuneFailed$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7a_n6tedil5Bl5LuujmhznY88z8(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$setProgramListObserver$0(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7f9UTGy7bGXdiVewCDDHP0SVZk8(Landroid/hardware/radio/TunerCallbackAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$sendBackgroundScanCompleteLocked$11()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OPO-WBZTX7OwNdxIjoS1deJYsu4(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onBackgroundScanAvailabilityChange$10(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PUJ0Qe-lVz1Ng0ChJ59I9sESsk0(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onTrafficAnnouncement$7(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$T_sIl6RmmOf1QUD78Ukx-DZqHao(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onConfigurationChanged$5(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XMs0-pe67307qCxgprhh1z00EUM(Landroid/hardware/radio/TunerCallbackAdapter;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onParametersUpdated$15(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dmJO-to1kKP7C8Lm6mqLRcl0fi0(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onEmergencyAnnouncement$8(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eHjZO_miEdWM7BJCF0l1isPI9M4(Landroid/hardware/radio/TunerCallbackAdapter;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onConfigFlagUpdated$14(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$enLsEMT_b3QbsRGgOnWl2UBOWjE(Landroid/hardware/radio/TunerCallbackAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onProgramListChanged$12()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tn-Gc6Hared96WGpaTZ8nxmV1Z0(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onProgramListUpdated$13(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uER2XkiEmiQ-35KpNWqF6wG9sDM(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onAntennaState$9(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v0HEq8fnlZwVmBYjDRoA9qx4S5M(Landroid/hardware/radio/TunerCallbackAdapter;ILandroid/hardware/radio/ProgramSelector;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onTuneFailed$3(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vpTCfcW5zZD1jM-AF8-5sx5iUk0(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$setProgramListObserver$1(Landroid/hardware/radio/ProgramList;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$y1ut7YMgV05Qolos8IIFRn41Ng0(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onCurrentProgramInfoChanged$6(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/radio/ITunerCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioTuner$Callback;

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$onAntennaState$9(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onAntennaState(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onBackgroundScanAvailabilityChange$10(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigFlagUpdated$14(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioTuner$Callback;->onConfigFlagUpdated(IZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$5(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCurrentProgramInfoChanged$6(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v1, v0}, Landroid/hardware/radio/RadioTuner$Callback;->onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyAnnouncement$8(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$2(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onParametersUpdated$15(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProgramListChanged$12()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramListChanged()V

    return-void
.end method

.method private synthetic blacklist lambda$onProgramListUpdated$13(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    const-string v2, "Chunk cannot be null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramList;->apply(Landroid/hardware/radio/ProgramList$Chunk;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onTrafficAnnouncement$7(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onTuneFailed$3(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioTuner$Callback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTuneFailed$4(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$sendBackgroundScanCompleteLocked$11()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanComplete()V

    return-void
.end method

.method private synthetic blacklist lambda$setProgramListObserver$0(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eq v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Landroid/hardware/radio/ProgramList$OnCloseListener;->onClose()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$setProgramListObserver$1(Landroid/hardware/radio/ProgramList;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eq v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList;->toList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    iget-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    if-eqz v1, :cond_1

    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Sending delayed onBackgroundScanComplete callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->sendBackgroundScanCompleteLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist sendBackgroundScanCompleteLocked()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method blacklist clearLastCompleteList()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist close()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist getCurrentProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist getLastCompleteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist isAntennaConnected()Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onAntennaState(Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onBackgroundScanAvailabilityChange(Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onBackgroundScanComplete()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Got onBackgroundScanComplete callback, but the program list didn\'t get through yet. Delaying it..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->sendBackgroundScanCompleteLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onConfigFlagUpdated(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "BroadcastRadio.TunerCallbackAdapter"

    const-string v1, "ProgramInfo must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onEmergencyAnnouncement(Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda15;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onError(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onParametersUpdated(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda11;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onProgramListChanged()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda13;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onTrafficAnnouncement(Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda14;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;ILandroid/hardware/radio/ProgramSelector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got an error with no mapping to the legacy API ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), doing a best-effort conversion to ERROR_SCAN_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x3

    :goto_1
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        -0x26 -> :sswitch_2
        -0x20 -> :sswitch_1
        -0x16 -> :sswitch_2
        -0x13 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method blacklist setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .locals 3

    const-string v0, "CloseListener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_0

    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Previous program list observer wasn\'t properly closed, closing it..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    :cond_0
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    invoke-virtual {p1, v1}, Landroid/hardware/radio/ProgramList;->setOnCloseListener(Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;)V

    invoke-virtual {p1, v1}, Landroid/hardware/radio/ProgramList;->addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
