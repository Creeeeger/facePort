.class public final Landroid/media/MediaCas;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCas$Session;,
        Landroid/media/MediaCas$PluginDescriptor;,
        Landroid/media/MediaCas$EventListener;,
        Landroid/media/MediaCas$EventHandler;,
        Landroid/media/MediaCas$OpenSessionCallback;,
        Landroid/media/MediaCas$OpenSession_1_2_Callback;,
        Landroid/media/MediaCas$PluginStatus;,
        Landroid/media/MediaCas$SessionUsage;,
        Landroid/media/MediaCas$ScramblingMode;
    }
.end annotation


# static fields
.field private static final blacklist MEDIA_CAS_HIDL_COOKIE:J = 0x18aL

.field public static final whitelist PLUGIN_STATUS_PHYSICAL_MODULE_CHANGED:I = 0x0

.field public static final whitelist PLUGIN_STATUS_SESSION_NUMBER_CHANGED:I = 0x1

.field public static final whitelist SCRAMBLING_MODE_AES128:I = 0x9

.field public static final whitelist SCRAMBLING_MODE_AES_CBC:I = 0xe

.field public static final whitelist SCRAMBLING_MODE_AES_ECB:I = 0xa

.field public static final whitelist SCRAMBLING_MODE_AES_SCTE52:I = 0xb

.field public static final whitelist SCRAMBLING_MODE_DVB_CISSA_V1:I = 0x6

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA1:I = 0x1

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA2:I = 0x2

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA3_ENHANCE:I = 0x5

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA3_MINIMAL:I = 0x4

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA3_STANDARD:I = 0x3

.field public static final whitelist SCRAMBLING_MODE_DVB_IDSA:I = 0x7

.field public static final whitelist SCRAMBLING_MODE_MULTI2:I = 0x8

.field public static final whitelist SCRAMBLING_MODE_RESERVED:I = 0x0

.field public static final whitelist SCRAMBLING_MODE_TDES_ECB:I = 0xc

.field public static final whitelist SCRAMBLING_MODE_TDES_SCTE52:I = 0xd

.field public static final whitelist SESSION_USAGE_LIVE:I = 0x0

.field public static final whitelist SESSION_USAGE_PLAYBACK:I = 0x1

.field public static final whitelist SESSION_USAGE_RECORD:I = 0x2

.field public static final whitelist SESSION_USAGE_TIMESHIFT:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaCas"

.field private static blacklist sAidlLock:Ljava/lang/Object;

.field private static blacklist sDeathListener:Landroid/os/IBinder$DeathRecipient;

.field private static blacklist sDeathListenerHidl:Landroid/os/IHwBinder$DeathRecipient;

.field private static blacklist sHidlLock:Ljava/lang/Object;

.field private static blacklist sService:Landroid/hardware/cas/IMediaCasService;

.field private static blacklist sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;


# instance fields
.field private final blacklist mBinder:Landroid/hardware/cas/ICasListener$Stub;

.field private final blacklist mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

.field private blacklist mCasSystemId:I

.field private blacklist mClientId:I

.field private greylist-max-o mEventHandler:Landroid/media/MediaCas$EventHandler;

.field private greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mICas:Landroid/hardware/cas/ICas;

.field private blacklist mICasHidl:Landroid/hardware/cas/V1_0/ICas;

.field private blacklist mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

.field private blacklist mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

.field private greylist-max-o mListener:Landroid/media/MediaCas$EventListener;

.field private blacklist mPriorityHint:I

.field private final blacklist mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

.field private final blacklist mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/MediaCas$Session;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field private blacklist mTvInputServiceSessionId:Ljava/lang/String;

.field private blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCasSystemId(Landroid/media/MediaCas;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaCas;->mCasSystemId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmICasHidl11(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionMap(Landroid/media/MediaCas;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTunerResourceManager(Landroid/media/MediaCas;)Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSessionFromResourceMap(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->removeSessionFromResourceMap(Landroid/media/MediaCas$Session;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtoByteArray(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toBytes(Ljava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAidlLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/media/MediaCas;->sAidlLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDeathListener()Landroid/os/IBinder$DeathRecipient;
    .locals 1

    sget-object v0, Landroid/media/MediaCas;->sDeathListener:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsHidlLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/media/MediaCas;->sHidlLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsService()Landroid/hardware/cas/IMediaCasService;
    .locals 1

    sget-object v0, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsService(Landroid/hardware/cas/IMediaCasService;)V
    .locals 0

    sput-object p0, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsServiceHidl(Landroid/hardware/cas/V1_0/IMediaCasService;)V
    .locals 0

    sput-object p0, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/media/MediaCas;->sAidlLock:Ljava/lang/Object;

    new-instance v1, Landroid/media/MediaCas$1;

    invoke-direct {v1}, Landroid/media/MediaCas$1;-><init>()V

    sput-object v1, Landroid/media/MediaCas;->sDeathListener:Landroid/os/IBinder$DeathRecipient;

    sput-object v0, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->sHidlLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/MediaCas$2;

    invoke-direct {v0}, Landroid/media/MediaCas$2;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->sDeathListenerHidl:Landroid/os/IHwBinder$DeathRecipient;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    new-instance v0, Landroid/media/MediaCas$4;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$4;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    new-instance v0, Landroid/media/MediaCas$5;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$5;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->createPlugin(I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    new-instance v0, Landroid/media/MediaCas$4;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$4;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    new-instance v0, Landroid/media/MediaCas$5;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$5;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/media/MediaCas;->createPlugin(I)V

    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaCas;->registerClient(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/lang/String;ILandroid/os/Handler;Landroid/media/MediaCas$EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    new-instance v0, Landroid/media/MediaCas$4;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$4;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    new-instance v0, Landroid/media/MediaCas$5;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$5;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p6, p5}, Landroid/media/MediaCas;->setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V

    invoke-direct {p0, p2}, Landroid/media/MediaCas;->createPlugin(I)V

    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaCas;->registerClient(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private greylist-max-o cleanupAndRethrowIllegalState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private blacklist createPlugin(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    const-string v0, "Unsupported casSystemId "

    const-string v1, "MediaCas"

    :try_start_0
    iput p1, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p0, Landroid/media/MediaCas;->mUserId:I

    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/IMediaCasService;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "Use CAS AIDL interface to create plugin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    invoke-interface {v2, p1, v3}, Landroid/hardware/cas/IMediaCasService;->createPlugin(ILandroid/hardware/cas/ICasListener;)Landroid/hardware/cas/ICas;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/media/MediaCas;->getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v3

    nop

    invoke-static {v3}, Landroid/hardware/cas/V1_2/IMediaCasService;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_2/IMediaCasService;

    move-result-object v4

    if-nez v4, :cond_2

    nop

    invoke-static {v3}, Landroid/hardware/cas/V1_1/IMediaCasService;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_1/IMediaCasService;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v6, "Used cas@1_0 interface to create plugin"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    invoke-interface {v3, p1, v6}, Landroid/hardware/cas/V1_0/IMediaCasService;->createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v6

    iput-object v6, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    goto :goto_0

    :cond_1
    const-string v6, "Used cas@1.1 interface to create plugin"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    invoke-interface {v5, p1, v6}, Landroid/hardware/cas/V1_1/IMediaCasService;->createPluginExt(ILandroid/hardware/cas/V1_1/ICasListener;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v6

    iput-object v6, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v6, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    :goto_0
    goto :goto_1

    :cond_2
    const-string v5, "Used cas@1.2 interface to create plugin"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    invoke-interface {v4, p1, v5}, Landroid/hardware/cas/V1_2/IMediaCasService;->createPluginExt(ILandroid/hardware/cas/V1_1/ICasListener;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/cas/V1_2/ICas;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_2/ICas;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v5, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v5, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    return-void

    :goto_3
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-nez v2, :cond_6

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    throw v1
.end method

.method public static whitelist enumeratePlugins()[Landroid/media/MediaCas$PluginDescriptor;
    .locals 8

    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/IMediaCasService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/cas/IMediaCasService;->enumeratePlugins()[Landroid/hardware/cas/AidlCasPluginDescriptor;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    array-length v3, v2

    new-array v3, v3, [Landroid/media/MediaCas$PluginDescriptor;

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    new-instance v5, Landroid/media/MediaCas$PluginDescriptor;

    aget-object v6, v2, v4

    invoke-direct {v5, v6}, Landroid/media/MediaCas$PluginDescriptor;-><init>(Landroid/hardware/cas/AidlCasPluginDescriptor;)V

    aput-object v5, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :catch_0
    move-exception v2

    const-string v3, "MediaCas"

    const-string v4, "Some exception while enumerating plugins"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/media/MediaCas;->getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/hardware/cas/V1_0/IMediaCasService;->enumeratePlugins()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/media/MediaCas$PluginDescriptor;

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_4

    new-instance v6, Landroid/media/MediaCas$PluginDescriptor;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;

    invoke-direct {v6, v7}, Landroid/media/MediaCas$PluginDescriptor;-><init>(Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;)V

    aput-object v6, v4, v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v4

    :catch_1
    move-exception v3

    :cond_5
    return-object v1
.end method

.method static blacklist getService()Landroid/hardware/cas/IMediaCasService;
    .locals 4

    sget-object v0, Landroid/media/MediaCas;->sAidlLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    invoke-interface {v1}, Landroid/hardware/cas/IMediaCasService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :cond_0
    :try_start_1
    const-string v1, "MediaCas"

    const-string v2, "Trying to get AIDL service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/cas/IMediaCasService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/cas/IMediaCasService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/cas/IMediaCasService;

    move-result-object v1

    sput-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    sget-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    invoke-interface {v1}, Landroid/hardware/cas/IMediaCasService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Landroid/media/MediaCas;->sDeathListener:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "MediaCas"

    const-string v3, "Failed to get cas AIDL service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static blacklist getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;
    .locals 7

    sget-object v0, Landroid/media/MediaCas;->sHidlLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const-wide/16 v1, 0x18a

    const/4 v3, 0x1

    :try_start_1
    const-string v4, "MediaCas"

    const-string v5, "Trying to get cas@1.2 service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-static {v3}, Landroid/hardware/cas/V1_2/IMediaCasService;->getService(Z)Landroid/hardware/cas/V1_2/IMediaCasService;

    move-result-object v4

    if-eqz v4, :cond_1

    sput-object v4, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    sget-object v5, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    sget-object v6, Landroid/media/MediaCas;->sDeathListenerHidl:Landroid/os/IHwBinder$DeathRecipient;

    invoke-interface {v5, v6, v1, v2}, Landroid/hardware/cas/V1_0/IMediaCasService;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    sget-object v1, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "MediaCas"

    const-string v6, "Failed to get cas@1.2 service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    const-string v4, "MediaCas"

    const-string v5, "Trying to get cas@1.1 service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-static {v3}, Landroid/hardware/cas/V1_1/IMediaCasService;->getService(Z)Landroid/hardware/cas/V1_1/IMediaCasService;

    move-result-object v4

    if-eqz v4, :cond_2

    sput-object v4, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    sget-object v5, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    sget-object v6, Landroid/media/MediaCas;->sDeathListenerHidl:Landroid/os/IHwBinder$DeathRecipient;

    invoke-interface {v5, v6, v1, v2}, Landroid/hardware/cas/V1_0/IMediaCasService;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    sget-object v1, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "MediaCas"

    const-string v6, "Failed to get cas@1.1 service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    const-string v4, "MediaCas"

    const-string v5, "Trying to get cas@1.0 service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-static {v3}, Landroid/hardware/cas/V1_0/IMediaCasService;->getService(Z)Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v3

    sput-object v3, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    sget-object v3, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    if-eqz v3, :cond_3

    sget-object v3, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    sget-object v4, Landroid/media/MediaCas;->sDeathListenerHidl:Landroid/os/IHwBinder$DeathRecipient;

    invoke-interface {v3, v4, v1, v2}, Landroid/hardware/cas/V1_0/IMediaCasService;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    :cond_3
    sget-object v1, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v0

    return-object v1

    :catch_2
    move-exception v1

    const-string v2, "MediaCas"

    const-string v3, "Failed to get cas@1.0 service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method private blacklist getSessionResourceHandle()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;-><init>()V

    iget v3, p0, Landroid/media/MediaCas;->mClientId:I

    iput v3, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    iget v3, p0, Landroid/media/MediaCas;->mCasSystemId:I

    iput v3, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget-object v3, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v3, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/media/MediaCasException$InsufficientResourceException;

    const-string v3, "insufficient resource to Open Session"

    invoke-direct {v2, v3}, Landroid/media/MediaCasException$InsufficientResourceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    aget v1, v0, v2

    return v1
.end method

.method public static whitelist isSystemIdSupported(I)Z
    .locals 4

    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/IMediaCasService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Landroid/hardware/cas/IMediaCasService;->isSystemIdSupported(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    return v1

    :cond_0
    invoke-static {}, Landroid/media/MediaCas;->getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2, p0}, Landroid/hardware/cas/V1_0/IMediaCasService;->isSystemIdSupported(I)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception v3

    :cond_1
    return v1
.end method

.method private blacklist registerClient(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    nop

    const-string v0, "tv_tuner_resource_mgr"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    iput-object p2, v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    iput p3, v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    iget-object v2, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Landroid/media/MediaCas;->mClientId:I

    :cond_0
    return-void
.end method

.method private blacklist removeSessionFromResourceMap(Landroid/media/MediaCas$Session;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCas;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCasSession(II)V

    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method private greylist-max-o toByteArray([B)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o toByteArray([BII)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private greylist-max-o toBytes(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private greylist-max-o validateInternalStates()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/ICas;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    throw v0

    :catch_0
    move-exception v0

    :goto_0
    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->release()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    throw v0

    :catch_1
    move-exception v0

    :goto_1
    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    nop

    :cond_1
    :goto_2
    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v2, p0, Landroid/media/MediaCas;->mClientId:I

    invoke-virtual {v0, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->unregisterClientProfile(I)V

    iput-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    :cond_2
    iget-object v0, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_3
    return-void
.end method

.method blacklist createFromSessionId([B)Landroid/media/MediaCas$Session;
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaCas$Session;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCas$Session;-><init>(Landroid/media/MediaCas;[B)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaCas;->close()V

    return-void
.end method

.method public blacklist forceResourceLost()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-virtual {v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;->onReclaimResources()V

    :cond_0
    return-void
.end method

.method greylist-max-o getBinder()Landroid/os/IHwBinder;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isAidlHal()Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist openSession()Landroid/media/MediaCas$Session;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    const-string v0, "MediaCas"

    invoke-direct {p0}, Landroid/media/MediaCas;->getSessionResourceHandle()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x118

    :try_start_0
    iget-object v4, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    const-string v6, "Write Stats Log for succeed to Open Session."

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v4}, Landroid/hardware/cas/ICas;->openSessionDefault()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v7

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Landroid/media/MediaCas;->mUserId:I

    iget v8, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {v3, v6, v8, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v7

    :catch_0
    move-exception v4

    :try_start_2
    iget v5, v4, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v5}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/media/MediaCas$OpenSessionCallback;

    invoke-direct {v4, p0, v2}, Landroid/media/MediaCas$OpenSessionCallback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas$OpenSessionCallback-IA;)V

    iget-object v7, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v7, v4}, Landroid/hardware/cas/V1_0/ICas;->openSession(Landroid/hardware/cas/V1_0/ICas$openSessionCallback;)V

    iget v7, v4, Landroid/media/MediaCas$OpenSessionCallback;->mStatus:I

    invoke-static {v7}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    iget-object v7, v4, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;

    invoke-direct {p0, v7, v1}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Landroid/media/MediaCas;->mUserId:I

    iget v7, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {v3, v6, v7, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iget-object v0, v4, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v4

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_1
    const-string v4, "Write Stats Log for fail to Open Session."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/media/MediaCas;->mUserId:I

    iget v4, p0, Landroid/media/MediaCas;->mCasSystemId:I

    const/4 v5, 0x2

    invoke-static {v3, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-object v2
.end method

.method public whitelist openSession(II)Landroid/media/MediaCas$Session;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->getSessionResourceHandle()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    const/4 v2, 0x1

    const-string v3, "Write Stats Log for succeed to Open Session."

    const/16 v4, 0x118

    const-string v5, "MediaCas"

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v1, p1, p2}, Landroid/hardware/cas/ICas;->openSession(II)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Landroid/media/MediaCas;->mUserId:I

    iget v8, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {v4, v7, v8, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v1

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :cond_0
    iget-object v1, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    new-instance v6, Landroid/media/MediaCas$OpenSession_1_2_Callback;

    invoke-direct {v6, p0, v1}, Landroid/media/MediaCas$OpenSession_1_2_Callback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas$OpenSession_1_2_Callback-IA;)V

    iget-object v7, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    invoke-interface {v7, p1, p2, v6}, Landroid/hardware/cas/V1_2/ICas;->openSession_1_2(IILandroid/hardware/cas/V1_2/ICas$openSession_1_2Callback;)V

    iget v7, v6, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mStatus:I

    invoke-static {v7}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    iget-object v7, v6, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mSession:Landroid/media/MediaCas$Session;

    invoke-direct {p0, v7, v0}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/media/MediaCas;->mUserId:I

    iget v7, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {v4, v3, v7, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iget-object v1, v6, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v2

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    const-string v2, "Write Stats Log for fail to Open Session."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/media/MediaCas;->mUserId:I

    iget v3, p0, Landroid/media/MediaCas;->mCasSystemId:I

    const/4 v5, 0x2

    invoke-static {v4, v2, v3, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-object v1

    :cond_1
    const-string v1, "Open Session with scrambling mode is only supported by cas@1.2+ interface"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    const-string v2, "Open Session with scrambling mode is not supported"

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist processEmm([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaCas;->processEmm([BII)V

    return-void
.end method

.method public whitelist processEmm([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/ICas;->processEmm([B)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->processEmm(Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_2
    return-void
.end method

.method public whitelist provision(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v0, p1}, Landroid/hardware/cas/ICas;->provision(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/ICas;->provision(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_2
    return-void
.end method

.method public whitelist refreshEntitlements(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [B

    move-object p2, v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v0, p1, p2}, Landroid/hardware/cas/ICas;->refreshEntitlements(I[B)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-direct {p0, p2}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/cas/V1_0/ICas;->refreshEntitlements(ILjava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_2
    return-void
.end method

.method public whitelist sendEvent(II[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [B

    move-object p3, v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/cas/ICas;->sendEvent(II[B)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-direct {p0, p3}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/hardware/cas/V1_0/ICas;->sendEvent(IILjava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_2
    return-void
.end method

.method public whitelist setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V
    .locals 4

    iput-object p1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    iget-object v0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    :cond_1
    move-object v0, v1

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MediaCasEventThread"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_3
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_4
    new-instance v1, Landroid/media/MediaCas$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCas$EventHandler;-><init>(Landroid/media/MediaCas;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-void
.end method

.method public whitelist setPrivateData([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v0, p1}, Landroid/hardware/cas/ICas;->setPrivateData([B)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->setPrivateData(Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_2
    return-void
.end method
