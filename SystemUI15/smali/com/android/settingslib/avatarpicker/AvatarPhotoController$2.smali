.class public final Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/avatarpicker/AvatarPhotoController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;->this$0:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "AvatarPhotoController"

    const-string v0, "Error performing internal crop"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;->this$0:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    iget-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$AvatarUi;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mCropPictureUri:Landroid/net/Uri;

    check-cast p1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$AvatarUiImpl;

    iget-object p1, p1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
