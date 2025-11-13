.class public Landroid/media/tv/tuner/Tuner;
.super Ljava/lang/Object;
.source "Tuner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Tuner$EventHandler;,
        Landroid/media/tv/tuner/Tuner$OnResourceLostListener;,
        Landroid/media/tv/tuner/Tuner$Frontend;,
        Landroid/media/tv/tuner/Tuner$DvrType;,
        Landroid/media/tv/tuner/Tuner$Result;,
        Landroid/media/tv/tuner/Tuner$ScanType;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DVR_TYPE_PLAYBACK:I = 0x1

.field public static final blacklist DVR_TYPE_RECORD:I = 0x0

.field private static final blacklist FILTER_CLEANUP_THRESHOLD:I = 0x100

.field public static final whitelist INVALID_AV_SYNC_ID:I = -0x1

.field public static final whitelist INVALID_FILTER_ID:I = -0x1

.field public static final whitelist INVALID_FILTER_ID_LONG:J = -0x1L

.field public static final whitelist INVALID_FIRST_MACROBLOCK_IN_SLICE:I = -0x1

.field public static final whitelist INVALID_FRONTEND_ID:I = -0x1

.field public static final whitelist INVALID_FRONTEND_SETTING_FREQUENCY:I = -0x1

.field public static final blacklist INVALID_LNB_ID:I = -0x1

.field public static final whitelist INVALID_LTS_ID:I = -0x1

.field public static final whitelist INVALID_MMTP_RECORD_EVENT_MPT_SEQUENCE_NUM:I = -0x1

.field public static final whitelist INVALID_STREAM_ID:I = 0xffff

.field public static final whitelist INVALID_TIMESTAMP:J = -0x1L

.field public static final whitelist INVALID_TS_PID:I = 0xffff

.field private static final blacklist MSG_ON_FILTER_EVENT:I = 0x2

.field private static final blacklist MSG_ON_FILTER_STATUS:I = 0x3

.field private static final blacklist MSG_ON_LNB_EVENT:I = 0x4

.field private static final blacklist MSG_RESOURCE_LOST:I = 0x1

.field public static final whitelist RESULT_INVALID_ARGUMENT:I = 0x4

.field public static final whitelist RESULT_INVALID_STATE:I = 0x3

.field public static final whitelist RESULT_NOT_INITIALIZED:I = 0x2

.field public static final whitelist RESULT_OUT_OF_MEMORY:I = 0x5

.field public static final whitelist RESULT_SUCCESS:I = 0x0

.field public static final whitelist RESULT_UNAVAILABLE:I = 0x1

.field public static final whitelist RESULT_UNKNOWN_ERROR:I = 0x6

.field public static final whitelist SCAN_TYPE_AUTO:I = 0x1

.field public static final whitelist SCAN_TYPE_BLIND:I = 0x2

.field public static final whitelist SCAN_TYPE_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "MediaTvTuner"

.field public static final whitelist VOID_KEYTOKEN:[B

.field private static blacklist sTunerVersion:I


# instance fields
.field private final blacklist mClientId:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDemuxHandle:Ljava/lang/Integer;

.field private final blacklist mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mDescramblers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/tuner/Descrambler;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

.field private blacklist mDesiredFrontendId:Ljava/lang/Integer;

.field private blacklist mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

.field private blacklist mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/tuner/filter/Filter;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

.field private blacklist mFrontendCiCamHandle:Ljava/lang/Integer;

.field private blacklist mFrontendCiCamId:Ljava/lang/Integer;

.field private final blacklist mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mFrontendHandle:Ljava/lang/Integer;

.field private blacklist mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

.field private final blacklist mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mFrontendType:I

.field private blacklist mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

.field private blacklist mLnb:Landroid/media/tv/tuner/Lnb;

.field private blacklist mLnbHandle:Ljava/lang/Integer;

.field private final blacklist mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mNativeContext:J

.field private blacklist mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

.field private blacklist mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mOnResourceLostListenerLock:Ljava/lang/Object;

.field private blacklist mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

.field private final blacklist mOnTuneEventLock:Ljava/lang/Object;

.field private blacklist mRequestedCiCamId:I

.field private final blacklist mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

.field private blacklist mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

.field private blacklist mScanCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mScanCallbackLock:Ljava/lang/Object;

.field private final blacklist mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field private blacklist mUserId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$1FObZ3CERPVOPa1dcmg6A4yAn-4(Landroid/media/tv/tuner/Tuner;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbcAnnexReported$19(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2wXmNMFxPN1j99hJDmzZBh07zpo(Landroid/media/tv/tuner/Tuner;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onModulationReported$17(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3vuKWhUUdhyAGNZZTdMnyg5Dv6E(Landroid/media/tv/tuner/Tuner;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onProgress$5(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5EE8ncAM389a4Jnu4EaV6NF-etM(Landroid/media/tv/tuner/Tuner;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onSymbolRates$7([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BRPd0v6_-VbCJ-I3euTfqTwbuHc(Landroid/media/tv/tuner/Tuner;[J)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onFrequenciesReport$6([J)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Hn3qU9yDoocXI1gWspAVhHRORNQ(Landroid/media/tv/tuner/Tuner;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onHierarchy$8(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KGZwtHNzLMH1twiG5SiaoiJ12qs(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onAtsc3PlpInfos$16([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ONFwCOtHJXJxWyttyRlOgXoLaqo(Landroid/media/tv/tuner/Tuner;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->lambda$onUnlocked$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YYbuCNGUDUZ9-HAWxkgMZzP9KaA(Landroid/media/tv/tuner/Tuner;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onPlpIds$10([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aCPFQ9KrsvwBRnRb1ceUm-9aP44(Landroid/media/tv/tuner/Tuner;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onInputStreamIds$12([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$alis4wXVAgjfxQAS_mK5biVyY_0(Landroid/media/tv/tuner/Tuner;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbsStandard$13(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dcL51-O3EH6PqbIRJD55bfQv6Oc(Landroid/media/tv/tuner/Tuner;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onPriorityReported$18(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eGHlVKOctaOVkJ8S5U6E6mR9QMw(Landroid/media/tv/tuner/Tuner;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onSignalType$9(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eN8P2Pn8nsoBFjSiRDs0gK4Z_a4(Landroid/media/tv/tuner/Tuner;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onFrontendEvent$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iRo7M-Sb-xnNgUFrBFffQgYSqgE(Landroid/media/tv/tuner/Tuner;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbtCellIdsReported$20([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iwPivbDfgHkgq-fYgjRgREw8mfI(Landroid/media/tv/tuner/Tuner;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->lambda$onScanStopped$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k3mPxd60d1g7ohUjrF79Yek8DV8(Landroid/media/tv/tuner/Tuner;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbtStandard$14(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sxlvg9gtqfSlysj7t9T1KGQT97w(Landroid/media/tv/tuner/Tuner;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onAnalogSifStandard$15(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tyfkoqhPBmBorDf0xHlPulphvdI(Landroid/media/tv/tuner/Tuner;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onGroupIds$11([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v5bxOz0OYS2vWKwvrX3P_PhIezI(Landroid/media/tv/tuner/Tuner;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->lambda$onLocked$2()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrontend(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$Frontend;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnResourceLostListener(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnResourceLostListenerExecutor(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnResourceLostListenerLock(Landroid/media/tv/tuner/Tuner;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/tuner/Tuner;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseAll(Landroid/media/tv/tuner/Tuner;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseAll()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Landroid/media/tv/tuner/Tuner;->VOID_KEYTOKEN:[B

    const/4 v0, 0x3

    const-string v2, "MediaTvTuner"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    :try_start_0
    const-string/jumbo v0, "media_tv_tuner"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/tv/tuner/Tuner;->nativeInit()V

    const-class v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "MediaCodec class not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v3, "tuner JNI library not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    sput v1, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/tv/tuner/DemuxInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/DemuxInfo;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    new-instance v0, Landroid/media/tv/tuner/Tuner$1;

    invoke-direct {v0, p0}, Landroid/media/tv/tuner/Tuner$1;-><init>(Landroid/media/tv/tuner/Tuner;)V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeSetup()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetTunerVersion()I

    move-result v0

    sput v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    const-string v2, "MediaTvTuner"

    if-nez v0, :cond_0

    const-string v0, "Unknown Tuner version!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Tuner version is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    invoke-static {v3}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    invoke-static {v4}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {v2}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    iput-object p2, v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    iput p3, v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v4, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V

    aget v1, v0, v1

    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tuner instance is created, but the device doesn\'t have tuner feature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist acquireTRMSLock(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTEMPT:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->acquireLock(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - this can cause deadlock between Tuner API calls and onReclaimResources()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private blacklist checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :pswitch_2
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :pswitch_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :pswitch_4
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist closeLnb()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_1

    :try_start_1
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling mLnb.close() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v0}, Landroid/media/tv/tuner/Lnb;->closeInternal()V

    goto :goto_0

    :cond_1
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT calling mLnb.close() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist configureDemuxInternal(Landroid/media/tv/tuner/DemuxInfo;Z)I
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFilters()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDemux()V

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v2}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    if-eqz p2, :cond_2

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v2, v1}, Landroid/media/tv/tuner/DemuxInfo;->setFilterTypes(I)V

    :cond_2
    return v0

    :cond_3
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;

    move-result-object v2

    const-string v3, "MediaTvTuner"

    const/4 v4, 0x1

    if-nez v2, :cond_4

    const-string v0, "configureDemuxInternal:failed to get DemuxCapabilities"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    invoke-virtual {v2}, Landroid/media/tv/tuner/DemuxCapabilities;->getFilterTypeCapabilityList()[I

    move-result-object v5

    array-length v6, v5

    if-gtz v6, :cond_5

    const-string v0, "configureDemuxInternal: getFilterTypeCapabilityList() returned an empty array"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    const/4 v6, 0x0

    array-length v7, v5

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_7

    aget v9, v5, v8

    and-int v10, v1, v9

    if-ne v10, v1, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    if-nez v6, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureDemuxInternal: requested caps:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " is not supported by the system"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_8
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxInfo(I)Landroid/media/tv/tuner/DemuxInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v4

    and-int/2addr v4, v1

    if-eq v4, v1, :cond_9

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFilters()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDemux()V

    :cond_9
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v3, v1}, Landroid/media/tv/tuner/DemuxInfo;->setFilterTypes(I)V

    return v0
.end method

.method private blacklist createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner$EventHandler-IA;)V

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner$EventHandler-IA;)V

    return-object v0

    :cond_1
    return-object v2
.end method

.method private blacklist getFrontendInfoListInternal()[Landroid/media/tv/tuner/frontend/FrontendInfo;
    .locals 7

    invoke-virtual {p0}, Landroid/media/tv/tuner/Tuner;->getFrontendIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get a FrontendInfo on frontend id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaTvTuner"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    return-object v2
.end method

.method public static blacklist getTunerVersion()I
    .locals 1

    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    return v0
.end method

.method private blacklist isFrontendOwner()Z
    .locals 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "MediaTvTuner"

    const-string/jumbo v3, "transferOwner() - cannot be called on the non-owner"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v1
.end method

.method private blacklist isNewOwnerQualifiedForTransfer(Landroid/media/tv/tuner/Tuner;)Z
    .locals 5

    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "MediaTvTuner"

    if-nez v0, :cond_1

    const-string/jumbo v1, "transferOwner() - new owner must be the current sharee"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v4, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    if-nez v4, :cond_3

    iget-object v4, p1, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v1

    :goto_2
    if-eqz v4, :cond_4

    const-string/jumbo v1, "transferOwner() - new owner cannot be holding CiCam nor Lnb resource"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    return v1
.end method

.method static synthetic blacklist lambda$getFrontendInfoListInternal$0(I)[Landroid/media/tv/tuner/frontend/FrontendInfo;
    .locals 1

    new-array v0, p0, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    return-object v0
.end method

.method private synthetic blacklist lambda$onAnalogSifStandard$15(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onAnalogSifStandardReported(I)V

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

.method private synthetic blacklist lambda$onAtsc3PlpInfos$16([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onAtsc3PlpInfosReported([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

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

.method private synthetic blacklist lambda$onDvbcAnnexReported$19(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbcAnnexReported(I)V

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

.method private synthetic blacklist lambda$onDvbsStandard$13(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbsStandardReported(I)V

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

.method private synthetic blacklist lambda$onDvbtCellIdsReported$20([I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbtCellIdsReported([I)V

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

.method private synthetic blacklist lambda$onDvbtStandard$14(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbtStandardReported(I)V

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

.method private synthetic blacklist lambda$onFrequenciesReport$6([J)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onFrequenciesLongReported([J)V

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

.method private synthetic blacklist lambda$onFrontendEvent$1(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/OnTuneEventListener;->onTuneEvent(I)V

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

.method private synthetic blacklist lambda$onGroupIds$11([I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onGroupIdsReported([I)V

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

.method private synthetic blacklist lambda$onHierarchy$8(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onHierarchyReported(I)V

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

.method private synthetic blacklist lambda$onInputStreamIds$12([I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onInputStreamIdsReported([I)V

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

.method private synthetic blacklist lambda$onLocked$2()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onLocked()V

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

.method private synthetic blacklist lambda$onModulationReported$17(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onModulationReported(I)V

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

.method private synthetic blacklist lambda$onPlpIds$10([I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onPlpIdsReported([I)V

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

.method private synthetic blacklist lambda$onPriorityReported$18(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onPriorityReported(Z)V

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

.method private synthetic blacklist lambda$onProgress$5(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onProgress(I)V

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

.method private synthetic blacklist lambda$onScanStopped$4()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onScanStopped()V

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

.method private synthetic blacklist lambda$onSignalType$9(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onSignalTypeReported(I)V

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

.method private synthetic blacklist lambda$onSymbolRates$7([I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onSymbolRatesReported([I)V

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

.method private synthetic blacklist lambda$onUnlocked$3()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onUnlocked()V

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

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeCloseDemux(I)I
.end method

.method private native blacklist nativeCloseFrontend(I)I
.end method

.method private native blacklist nativeConnectCiCam(I)I
.end method

.method private native blacklist nativeDisconnectCiCam()I
.end method

.method private native blacklist nativeGetAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)Ljava/lang/Integer;
.end method

.method private native blacklist nativeGetAvSyncTime(I)Ljava/lang/Long;
.end method

.method private native blacklist nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;
.end method

.method private native blacklist nativeGetDemuxInfo(I)Landroid/media/tv/tuner/DemuxInfo;
.end method

.method private native blacklist nativeGetFrontendHardwareInfo()Ljava/lang/String;
.end method

.method private native blacklist nativeGetFrontendIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private native blacklist nativeGetFrontendInfo(I)Landroid/media/tv/tuner/frontend/FrontendInfo;
.end method

.method private native blacklist nativeGetFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;
.end method

.method private native blacklist nativeGetFrontendStatusReadiness([I)[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
.end method

.method private native blacklist nativeGetMaxNumberOfFrontends(I)I
.end method

.method private native blacklist nativeGetTunerVersion()I
.end method

.method private static native blacklist nativeInit()V
.end method

.method private native blacklist nativeIsLnaSupported()Z
.end method

.method private native blacklist nativeLinkCiCam(I)I
.end method

.method private native blacklist nativeOpenDemuxByhandle(I)I
.end method

.method private native blacklist nativeOpenDescramblerByHandle(I)Landroid/media/tv/tuner/Descrambler;
.end method

.method private native blacklist nativeOpenDvrPlayback(J)Landroid/media/tv/tuner/dvr/DvrPlayback;
.end method

.method private native blacklist nativeOpenDvrRecorder(J)Landroid/media/tv/tuner/dvr/DvrRecorder;
.end method

.method private native blacklist nativeOpenFilter(IIJ)Landroid/media/tv/tuner/filter/Filter;
.end method

.method private native blacklist nativeOpenFrontendByHandle(I)Landroid/media/tv/tuner/Tuner$Frontend;
.end method

.method private native blacklist nativeOpenLnbByHandle(I)Landroid/media/tv/tuner/Lnb;
.end method

.method private native blacklist nativeOpenLnbByName(Ljava/lang/String;)Landroid/media/tv/tuner/Lnb;
.end method

.method private static native blacklist nativeOpenSharedFilter(Ljava/lang/String;)Landroid/media/tv/tuner/filter/SharedFilter;
.end method

.method private native blacklist nativeOpenTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;
.end method

.method private native blacklist nativeRegisterFeCbListener(J)V
.end method

.method private native blacklist nativeRemoveOutputPid(I)I
.end method

.method private native blacklist nativeScan(ILandroid/media/tv/tuner/frontend/FrontendSettings;I)I
.end method

.method private native blacklist nativeSetLna(Z)I
.end method

.method private native blacklist nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I
.end method

.method private native blacklist nativeSetMaxNumberOfFrontends(II)I
.end method

.method private native blacklist nativeSetup()V
.end method

.method private native blacklist nativeShareFrontend(I)I
.end method

.method private native blacklist nativeStopScan()I
.end method

.method private native blacklist nativeStopTune()I
.end method

.method private native blacklist nativeTune(ILandroid/media/tv/tuner/frontend/FrontendSettings;)I
.end method

.method private native blacklist nativeUnlinkCiCam(I)I
.end method

.method private native blacklist nativeUnregisterFeCbListener(J)V
.end method

.method private native blacklist nativeUnshareFrontend()I
.end method

.method private native blacklist nativeUpdateFrontend(J)V
.end method

.method private blacklist onAnalogSifStandard(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onAtsc3PlpInfos([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;-><init>(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onDvbcAnnexReported(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda5;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onDvbsStandard(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda9;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onDvbtCellIdsReported([I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onDvbtStandard(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onFrequenciesReport([J)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/tuner/Tuner;[J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onFrontendEvent(I)V
    .locals 3

    const-string v0, "MediaTvTuner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got event from tuning. Event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda21;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for the events from tuning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/16 v1, 0x114

    if-nez p1, :cond_1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist onGroupIds([I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda7;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onHierarchy(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda8;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onInputStreamIds([I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onLocked()V
    .locals 3

    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for locked event from scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v1, 0x2

    const/16 v2, 0x114

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda19;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onModulationReported(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onPlpIds([I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda18;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onPriorityReported(Z)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda10;-><init>(Landroid/media/tv/tuner/Tuner;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onProgress(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onScanStopped()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda20;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onSignalType(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda14;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onSymbolRates([I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda16;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method private blacklist onUnlocked()V
    .locals 3

    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for unlocked event from scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v1, 0x2

    const/16 v2, 0x114

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda6;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

.method public static whitelist openSharedFilter(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/filter/SharedFilterCallback;)Landroid/media/tv/tuner/filter/SharedFilter;
    .locals 2

    const-string/jumbo v0, "sharedFilterToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "SharedFilterCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "android.permission.ACCESS_TV_SHARED_FILTER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/media/tv/tuner/Tuner;->nativeOpenSharedFilter(Ljava/lang/String;)Landroid/media/tv/tuner/filter/SharedFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p2}, Landroid/media/tv/tuner/filter/SharedFilter;->setCallback(Landroid/media/tv/tuner/filter/SharedFilterCallback;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must have ACCESS_TV_SHAREDFILTER permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist registerFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeRegisterFeCbListener(J)V

    return-void
.end method

.method private blacklist releaseAll()V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseCiCam()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFrontend()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->closeLnb()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDescramblers()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFilters()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDemux()V

    return-void
.end method

.method private blacklist releaseCiCam()V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlinking CiCam : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeUnlinkCiCam(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCiCam(II)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeUnlinkCiCam("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for mClientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed with result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_2
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT unlinking CiCam : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist releaseDemux()V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeCloseDemux(I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "failed to close demux"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDemux(II)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist releaseDescramblers()V
    .locals 7

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tuner/Descrambler;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/media/tv/tuner/Descrambler;->close()V

    :cond_0
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDescrambler(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist releaseFilters()V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tuner/filter/Filter;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/media/tv/tuner/filter/Filter;->close()V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist releaseFrontend()V
    .locals 4

    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_0

    const-string v0, "Tuner#releaseFrontend"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mFrontendHandle not null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "mFeOwnerTuner not null - sharee"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    invoke-direct {v0, p0}, Landroid/media/tv/tuner/Tuner;->unregisterFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeUnshareFrontend()I

    goto :goto_0

    :cond_3
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "mFeOwnerTuner null - owner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeCloseFrontend(I)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v3, "failed to close frontend"

    invoke-static {v0, v3}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    :cond_5
    :goto_0
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call TRM#releaseFrontend :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseFrontend(II)V

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/16 v1, 0x114

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist releaseTRMSLock()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLock(I)Z

    return-void
.end method

.method private blacklist replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_1

    :try_start_0
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetting CiCamParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying CiCamParams from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFrontendCiCamHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFrontendCiCamId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_1

    :try_start_0
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetting Frontend params for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    goto :goto_0

    :cond_1
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying Frontend params from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    iget v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_1

    :try_start_0
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "resetting Lnb params"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying Lnb params from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist requestDemux()Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;-><init>()V

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v2}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v2

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenDemuxByhandle(I)I

    :cond_0
    return v2
.end method

.method private blacklist requestDescrambler()Landroid/media/tv/tuner/Descrambler;
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;-><init>()V

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->clientId:I

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenDescramblerByHandle(I)Landroid/media/tv/tuner/Descrambler;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v6, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v5, v3, v6}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDescrambler(II)V

    :goto_0
    return-object v4
.end method

.method private blacklist requestFrontend()Z
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    invoke-direct {v3}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;-><init>()V

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v4, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iput v4, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    if-nez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    iput v4, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v4, v3, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v1, v4

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    nop

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->nativeOpenFrontendByHandle(I)Landroid/media/tv/tuner/Tuner$Frontend;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    :cond_1
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    :cond_2
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    :cond_4
    return v1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :catchall_1
    move-exception v3

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    throw v3
.end method

.method private blacklist requestFrontendCiCam(I)Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;-><init>()V

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    iput p1, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    :cond_0
    return v2
.end method

.method private blacklist requestLnb()Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;-><init>()V

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenLnbByHandle(I)Landroid/media/tv/tuner/Lnb;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    :cond_0
    return v2
.end method

.method private blacklist requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "local lock must be locked beforehand"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestResource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    nop

    if-eqz v1, :cond_a

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    goto :goto_4

    :pswitch_1
    :try_start_1
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mRequestedCiCamId:I

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->requestFrontendCiCam(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    :cond_5
    return v0

    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestLnb()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    :cond_6
    return v0

    :pswitch_3
    :try_start_3
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestDemux()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    :cond_7
    return v0

    :pswitch_4
    :try_start_4
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestFrontend()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_8

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    :cond_8
    return v0

    :goto_3
    if-eqz v1, :cond_9

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    :cond_9
    throw v0

    :cond_a
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist setLnb(Landroid/media/tv/tuner/Lnb;)I
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist transferCiCamOwner(Landroid/media/tv/tuner/Tuner;)I
    .locals 6

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v4, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x6

    return v1
.end method

.method private blacklist transferFeOwner(Landroid/media/tv/tuner/Tuner;)I
    .locals 4

    invoke-virtual {p0}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUpdateFrontend(J)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUpdateFrontend(J)V

    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/media/tv/tuner/Tuner;->setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x6

    return v0
.end method

.method private blacklist transferLnbOwner(Landroid/media/tv/tuner/Tuner;)I
    .locals 6

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v2, p1}, Landroid/media/tv/tuner/Lnb;->setOwner(Landroid/media/tv/tuner/Tuner;)V

    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v4, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x6

    return v1
.end method

.method private blacklist unregisterFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUnregisterFeCbListener(J)V

    return-void
.end method


# virtual methods
.method public whitelist applyFrontend(Landroid/media/tv/tuner/frontend/FrontendInfo;)I
    .locals 3

    const-string v0, "desiredFrontendInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "Operation connot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "A frontend has been opened before"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying frontend with type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :cond_3
    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist cancelScanning()I
    .locals 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_0

    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x3

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x6

    const/16 v3, 0x114

    invoke-static {v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeStopScan()I

    move-result v1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist cancelTuning()I
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_0

    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x3

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeStopTune()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist clearOnTuneEventListener()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist clearResourceLostListener()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 2

    const-string v0, "close()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseAll()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->unregisterClientProfile(I)V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeClose()I

    move-result v0

    const-string v1, "failed to close tuner"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    throw v0
.end method

.method public whitelist closeFrontend()V
    .locals 1

    const-string v0, "closeFrontend()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFrontend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    throw v0
.end method

.method public whitelist configureDemux(Landroid/media/tv/tuner/DemuxInfo;)I
    .locals 5

    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v0

    sget v1, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    const/high16 v2, 0x30000

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const-string v1, "MediaTvTuner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configureDemux() is not supported for tuner version:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    invoke-static {v4}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    invoke-static {v4}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, v3}, Landroid/media/tv/tuner/Tuner;->configureDemuxInternal(Landroid/media/tv/tuner/DemuxInfo;Z)I

    move-result v2

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist connectCiCam(I)I
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeConnectCiCam(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_0
    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist connectFrontendToCiCam(I)I
    .locals 3

    const-string v0, "connectFrontendToCiCam()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "Operation cannot be done without frontend"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_1

    const-string v0, "Operation cannot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_1
    :try_start_3
    const-string/jumbo v0, "linkFrontendToCiCam"

    const v1, 0x10001

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput p1, p0, Landroid/media/tv/tuner/Tuner;->mRequestedCiCamId:I

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeLinkCiCam(I)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_2
    nop

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist disconnectCiCam()I
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeDisconnectCiCam()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_0
    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist disconnectFrontendToCiCam(I)I
    .locals 4

    const-string v0, "disconnectFrontendToCiCam()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "Operation cannot be done without frontend"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    return v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_3

    const-string v0, "Operation cannot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    return v1

    :cond_3
    :try_start_3
    const-string/jumbo v0, "unlinkFrontendToCiCam"

    const v1, 0x10001

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_6

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeUnlinkCiCam(I)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCiCam(II)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    nop

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    return v0

    :cond_6
    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_7
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_8
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    throw v0
.end method

.method public whitelist getAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist getAvSyncTime(I)J
    .locals 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetAvSyncTime(I)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist getAvailableFrontendInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/frontend/FrontendInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoListInternal()[Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getClientId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    return v0
.end method

.method public whitelist getCurrentDemuxInfo()Landroid/media/tv/tuner/DemuxInfo;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxInfo(I)Landroid/media/tv/tuner/DemuxInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist getCurrentFrontendHardwareInfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "Get Frontend hardware info"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendHardwareInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist getDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist getDesiredDemuxInfo()Landroid/media/tv/tuner/DemuxInfo;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    return-object v0
.end method

.method public blacklist getFrontendIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendIds()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist getFrontendInfo()Landroid/media/tv/tuner/frontend/FrontendInfo;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner$Frontend;->-$$Nest$fgetmId(Landroid/media/tv/tuner/Tuner$Frontend;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    :cond_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendInfo(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist getFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist getFrontendStatusReadiness([I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "Get fronted status readiness"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendStatusReadiness([I)[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_1
    :try_start_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist getMaxNumberOfFrontends(I)I
    .locals 4

    const/high16 v0, 0x20000

    const-string v1, "Set maximum Frontends"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetMaxNumberOfFrontends(I)I

    move-result v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v1, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->getMaxNumberOfFrontends(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "max num of usable frontend is out-of-sync b/w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaTvTuner"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method blacklist getNativeContext()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/Tuner;->mNativeContext:J

    return-wide v0
.end method

.method blacklist getTunerResourceManager()Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    return-object v0
.end method

.method public whitelist hasUnusedFrontend(I)Z
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v0, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->hasUnusedFrontend(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isLnaSupported()Z
    .locals 3

    const/high16 v0, 0x30000

    const-string/jumbo v1, "isLnaSupported"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeIsLnaSupported()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tuner HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/media/tv/tuner/TunerVersionChecker;->getTunerVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support this method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isLowestPriority(I)Z
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->isLowestPriority(II)Z

    move-result v0

    return v0
.end method

.method public whitelist openDescrambler()Landroid/media/tv/tuner/Descrambler;
    .locals 2

    const-string/jumbo v0, "openDescrambler()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    nop

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestDescrambler()Landroid/media/tv/tuner/Descrambler;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist openDvrPlayback(JLjava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)Landroid/media/tv/tuner/dvr/DvrPlayback;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "OnPlaybackStatusChangedListener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeOpenDvrPlayback(J)Landroid/media/tv/tuner/dvr/DvrPlayback;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/media/tv/tuner/dvr/DvrPlayback;->setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist openDvrRecorder(JLjava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)Landroid/media/tv/tuner/dvr/DvrRecorder;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "OnRecordStatusChangedListener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeOpenDvrRecorder(J)Landroid/media/tv/tuner/dvr/DvrRecorder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/media/tv/tuner/dvr/DvrRecorder;->setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist openFilter(IIJLjava/util/concurrent/Executor;Landroid/media/tv/tuner/filter/FilterCallback;)Landroid/media/tv/tuner/filter/Filter;
    .locals 7

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v0

    sget v1, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    const/high16 v2, 0x30000

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/media/tv/tuner/DemuxInfo;

    invoke-direct {v1, p1}, Landroid/media/tv/tuner/DemuxInfo;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/media/tv/tuner/Tuner;->configureDemuxInternal(Landroid/media/tv/tuner/DemuxInfo;Z)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v4, "MediaTvTuner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "openFilter called for unsupported mainType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    nop

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :cond_1
    nop

    :try_start_2
    invoke-static {p1, p2}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v1

    invoke-direct {p0, p1, v1, p3, p4}, Landroid/media/tv/tuner/Tuner;->nativeOpenFilter(IIJ)Landroid/media/tv/tuner/filter/Filter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1, p2}, Landroid/media/tv/tuner/filter/Filter;->setType(II)V

    invoke-virtual {v1, p6, p5}, Landroid/media/tv/tuner/filter/Filter;->setCallback(Landroid/media/tv/tuner/filter/FilterCallback;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    if-nez v2, :cond_2

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    :cond_2
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x100

    if-le v4, v5, :cond_4

    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_3
    goto :goto_0

    :cond_4
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    :goto_1
    nop

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist openLnb(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)Landroid/media/tv/tuner/Lnb;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "LnbCallback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v0, p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v0, p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->setLnb(Landroid/media/tv/tuner/Lnb;)I

    :cond_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_2
    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist openLnbByName(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)Landroid/media/tv/tuner/Lnb;
    .locals 3

    const-string/jumbo v0, "openLnbByName"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "LNB name must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "LnbCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeOpenLnbByName(Ljava/lang/String;)Landroid/media/tv/tuner/Lnb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v1}, Landroid/media/tv/tuner/Lnb;->closeInternal()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    :cond_0
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v1, p0, p2, p3}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v1}, Landroid/media/tv/tuner/Tuner;->setLnb(Landroid/media/tv/tuner/Lnb;)I

    :cond_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist openTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeOpenTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method blacklist releaseLnb()V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MediaTvTuner"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "releasing Lnb"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLnb(II)V

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "NOT releasing Lnb because mLnbHandle is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist removeOutputPid(I)I
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "Remove output PID"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_1

    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x3

    return v0

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeRemoveOutputPid(I)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist scan(Landroid/media/tv/tuner/frontend/FrontendSettings;ILjava/util/concurrent/Executor;Landroid/media/tv/tuner/frontend/ScanCallback;)I
    .locals 4

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_0

    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x3

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-ne v1, p4, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-ne v1, p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Different Scan session already in progress.  stopScan must be called before a new scan session can be started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    const-string v1, "Scan with DTMB Frontend"

    const v2, 0x10001

    invoke-static {v2, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_4
    :try_start_3
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    const-string v1, "Tuner with IPTV Frontend"

    const/high16 v2, 0x30000

    invoke-static {v2, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_5
    :try_start_4
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object p4, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    iput-object p3, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/16 v2, 0x114

    const/4 v3, 0x5

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeScan(ILandroid/media/tv/tuner/frontend/FrontendSettings;I)I

    move-result v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_6
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist setLnaEnabled(Z)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeSetLna(Z)I

    move-result v0

    return v0
.end method

.method public whitelist setMaxNumberOfFrontends(II)I
    .locals 2

    const/high16 v0, 0x20000

    const-string v1, "Set maximum Frontends"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_2

    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeSetMaxNumberOfFrontends(II)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->setMaxNumberOfFrontends(II)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x4

    :cond_3
    return v0
.end method

.method public whitelist setOnTuneEventListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/frontend/OnTuneEventListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p2, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setResourceLostListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/Tuner$OnResourceLostListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "OnResourceLostListener must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "executor must not be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist shareFrontendFromTuner(Landroid/media/tv/tuner/Tuner;)V
    .locals 3

    const-string/jumbo v0, "shareFrontendFromTuner()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    invoke-direct {v0, p0}, Landroid/media/tv/tuner/Tuner;->unregisterFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeUnshareFrontend()I

    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->shareFrontend(II)V

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    invoke-direct {v0, p0}, Landroid/media/tv/tuner/Tuner;->registerFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    iget-object v0, v0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    iget-object v0, v0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner$Frontend;->-$$Nest$fgetmId(Landroid/media/tv/tuner/Tuner$Frontend;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeShareFrontend(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist transferOwner(Landroid/media/tv/tuner/Tuner;)I
    .locals 2

    const-string/jumbo v0, "transferOwner()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->isFrontendOwner()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->isNewOwnerQualifiedForTransfer(Landroid/media/tv/tuner/Tuner;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferFeOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    nop

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferCiCamOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    if-eqz v0, :cond_2

    nop

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    return v0

    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferLnbOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    if-eqz v0, :cond_3

    nop

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    return v0

    :cond_3
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    nop

    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    const/4 v0, 0x3

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    throw v0
.end method

.method public whitelist tune(Landroid/media/tv/tuner/frontend/FrontendSettings;)I
    .locals 5

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "Operation cannot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v0

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    if-eq v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontend was opened with type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tune to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getFrequencyLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    const-string v1, "Tuner with DTMB Frontend"

    const v3, 0x10001

    invoke-static {v3, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    nop

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    :cond_2
    :try_start_4
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_3

    const-string v1, "Tuner with IPTV Frontend"

    const/high16 v3, 0x30000

    invoke-static {v3, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_3

    nop

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    :cond_3
    :try_start_5
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    const-string v1, "Write Stats Log for tuning."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/16 v2, 0x114

    invoke-static {v2, v1, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/media/tv/tuner/Tuner;->nativeTune(ILandroid/media/tv/tuner/frontend/FrontendSettings;)I

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_4
    nop

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public whitelist updateResourcePriority(II)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->updateClientPriority(III)Z

    return-void
.end method
