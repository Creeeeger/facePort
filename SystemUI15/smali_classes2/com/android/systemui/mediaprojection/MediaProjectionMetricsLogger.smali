.class public final Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final service:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/projection/IMediaProjectionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->service:Landroid/media/projection/IMediaProjectionManager;

    return-void
.end method


# virtual methods
.method public final notifyPermissionRequestDisplayed(I)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->service:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {p0, p1}, Landroid/media/projection/IMediaProjectionManager;->notifyPermissionRequestDisplayed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaProjectionMetricsLogger"

    const-string v0, "Error notifying server of projection displayed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final notifyProjectionInitiated(ILcom/android/systemui/mediaprojection/SessionCreationSource;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->service:Landroid/media/projection/IMediaProjectionManager;

    sget-object v0, Lcom/android/systemui/mediaprojection/SessionCreationSource$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    invoke-interface {p0, p1, v0}, Landroid/media/projection/IMediaProjectionManager;->notifyPermissionRequestInitiated(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "MediaProjectionMetricsLogger"

    const-string p2, "Error notifying server of projection initiated"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
