.class public final Lcom/android/settingslib/avatarpicker/AvatarPhotoController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAvatarUi:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;

.field public final mContextInjector:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;

.field public final mCropPictureUri:Landroid/net/Uri;

.field public final mImagesDir:Ljava/io/File;

.field public final mPhotoSize:I

.field public final mPreCropPictureUri:Landroid/net/Uri;

.field public final mTakePictureUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;

    iput-object p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mContextInjector:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;

    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "multi_user"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mImagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    xor-int/lit8 p3, p3, 0x1

    const-string v1, "PreCropEditUserPhoto.jpg"

    invoke-virtual {p2, v0, v1, p3}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->createTempImageUri(Ljava/io/File;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mPreCropPictureUri:Landroid/net/Uri;

    const-string v1, "CropEditUserPhoto.jpg"

    invoke-virtual {p2, v0, v1, p3}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->createTempImageUri(Ljava/io/File;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mCropPictureUri:Landroid/net/Uri;

    const-string v1, "TakeEditUserPhoto.jpg"

    invoke-virtual {p2, v0, v1, p3}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->createTempImageUri(Ljava/io/File;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mTakePictureUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0708ea

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mPhotoSize:I

    return-void
.end method


# virtual methods
.method public final copyAndCropPhoto(Landroid/net/Uri;Z)V
    .locals 3

    invoke-static {}, Lcom/android/settingslib/avatarpicker/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPhotoController;Landroid/net/Uri;I)V

    check-cast v0, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$1;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPhotoController;Z)V

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mContextInjector:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {p2, p1, v0}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p1, p2, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cropPhoto(Landroid/net/Uri;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mCropPictureUri:Landroid/net/Uri;

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2, v1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "scaleUpIfNeeded"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputX"

    iget v2, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mPhotoSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    iget-object v1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;

    iget-object v1, v1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x100000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v0, "No system package activity could be found for code 1003"

    const-string v1, "AvatarPhotoController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    invoke-static {}, Lcom/android/settingslib/avatarpicker/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPhotoController;Landroid/net/Uri;I)V

    check-cast v0, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mContextInjector:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v1, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {v1, p1, v0}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p1, v1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    throw p0
.end method
