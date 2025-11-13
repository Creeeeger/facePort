.class public final Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z

.field public static sInstance:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;


# instance fields
.field public final mCoverStateListeners:Ljava/util/ArrayList;

.field public mCoverType:I

.field public mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field public mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

.field public mSwitchState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;
    .locals 2

    const-class v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->sInstance:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-direct {v1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;-><init>()V

    sput-object v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->sInstance:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
