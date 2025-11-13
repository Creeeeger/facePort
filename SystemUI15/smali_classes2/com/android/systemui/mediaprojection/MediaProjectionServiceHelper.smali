.class public final Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;

.field public static final service:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->Companion:Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;

    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->service:Landroid/media/projection/IMediaProjectionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createOrReuseProjection(ILjava/lang/String;Z)Landroid/media/projection/IMediaProjection;
    .locals 1

    sget-object v0, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->Companion:Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->service:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {p2, p0, p1}, Landroid/media/projection/IMediaProjectionManager;->getProjection(ILjava/lang/String;)Landroid/media/projection/IMediaProjection;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->service:Landroid/media/projection/IMediaProjectionManager;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0, v0}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object p2

    :cond_1
    return-object p2
.end method
