.class public final Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;-><init>()V

    return-void
.end method

.method public static setReviewedConsentIfNeeded(IZLandroid/media/projection/IMediaProjection;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->service:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {p1, p0, p2}, Landroid/media/projection/IMediaProjectionManager;->setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaProjectionServiceHelper"

    const-string p2, "Unable to set required consent result for token re-use"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
