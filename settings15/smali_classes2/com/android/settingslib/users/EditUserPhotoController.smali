.class public final Lcom/android/settingslib/users/EditUserPhotoController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

.field public mCachedDrawablePath:Ljava/lang/String;

.field public final mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public final mImageView:Landroid/widget/ImageView;

.field public final mImagesDir:Ljava/io/File;

.field public mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

.field public mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static -$$Nest$monPhotoProcessed(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;)V

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    check-cast v0, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0713ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    invoke-direct {v1, p1, v0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/android/settingslib/drawable/CircleFramedDrawable;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "multi_user"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    iput-object p3, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    new-instance p1, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p6}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;Z)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p4, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x3ec

    if-ne p1, p2, :cond_2

    const-string p1, "default_icon_tint_color"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    iget-object v1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz p2, :cond_1

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;I)V

    check-cast v1, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {v1, p2}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserPhotoController$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/users/EditUserPhotoController$1;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;I)V

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p3, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {p3, p1, p2}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p1, p3, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/net/Uri;)V

    check-cast v1, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {v1, p2}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserPhotoController$1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/users/EditUserPhotoController$1;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;I)V

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p3, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {p3, p1, p2}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p1, p3, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_2
    return-void
.end method

.method public final saveNewUserPhotoBitmap()Ljava/io/File;
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    const-string v3, "NewUserPhoto.png"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "EditUserPhotoController"

    const-string v2, "Cannot create temp file"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
