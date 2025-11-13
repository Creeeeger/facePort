.class final Landroid/media/projection/MediaProjection$CallbackRecord;
.super Landroid/media/projection/MediaProjection$Callback;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/projection/MediaProjection$Callback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$Ijj6D8MLZSoM5QjoIuvto0-l_TA(Landroid/media/projection/MediaProjection$CallbackRecord;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/projection/MediaProjection$CallbackRecord;->lambda$onCapturedContentVisibilityChanged$1(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$S6Ap43uT2mtCkQyn-LjZu06WLlQ(Landroid/media/projection/MediaProjection$CallbackRecord;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/projection/MediaProjection$CallbackRecord;->lambda$onCapturedContentResize$0(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/projection/MediaProjection$CallbackRecord;)Landroid/media/projection/MediaProjection$Callback;
    .locals 0

    iget-object p0, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mCallback:Landroid/media/projection/MediaProjection$Callback;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    iput-object p1, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mCallback:Landroid/media/projection/MediaProjection$Callback;

    iput-object p2, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic blacklist lambda$onCapturedContentResize$0(II)V
    .locals 1

    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mCallback:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/media/projection/MediaProjection$Callback;->onCapturedContentResize(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onCapturedContentVisibilityChanged$1(Z)V
    .locals 1

    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mCallback:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v0, p1}, Landroid/media/projection/MediaProjection$Callback;->onCapturedContentVisibilityChanged(Z)V

    return-void
.end method


# virtual methods
.method public whitelist onCapturedContentResize(II)V
    .locals 2

    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda0;-><init>(Landroid/media/projection/MediaProjection$CallbackRecord;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onCapturedContentVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda1;-><init>(Landroid/media/projection/MediaProjection$CallbackRecord;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onStop()V
    .locals 2

    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjection$CallbackRecord$1;

    invoke-direct {v1, p0}, Landroid/media/projection/MediaProjection$CallbackRecord$1;-><init>(Landroid/media/projection/MediaProjection$CallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
