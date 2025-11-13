.class public final Lcom/android/settingslib/users/EditUserPhotoController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

.field public mCachedDrawablePath:Ljava/lang/String;

.field public final mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public final mFileAuthority:Ljava/lang/String;

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

    check-cast v0, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07177d

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

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/users/EditUserPhotoController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    iput-object p6, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mFileAuthority:Ljava/lang/String;

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string p6, "multi_user"

    invoke-direct {p2, p1, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    iput-object p3, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    new-instance p1, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p7}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;Z)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p4, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method
