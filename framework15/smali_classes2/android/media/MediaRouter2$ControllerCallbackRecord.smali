.class final Landroid/media/MediaRouter2$ControllerCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControllerCallbackRecord"
.end annotation


# instance fields
.field public final blacklist mCallback:Landroid/media/MediaRouter2$ControllerCallback;

.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    iput-object p1, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    iget-object v3, v3, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
