.class public final Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

.field public final synthetic val$delayBeforeCrop:Z


# direct methods
.method public constructor <init>(Lcom/android/settingslib/avatarpicker/AvatarPhotoController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1;->this$0:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    iput-boolean p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1;->val$delayBeforeCrop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "AvatarPhotoController"

    const-string v0, "Error performing copy-and-crop"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1;)V

    iget-boolean v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1;->val$delayBeforeCrop:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1;->this$0:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mContextInjector:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjector;

    check-cast p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1$$ExternalSyntheticLambda0;->run()V

    :goto_0
    return-void
.end method
