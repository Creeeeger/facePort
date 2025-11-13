.class public final synthetic Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/avatarpicker/AvatarPhotoController;Landroid/net/Uri;I)V
    .locals 0

    iput p3, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    iput-object p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v2, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mPhotoSize:I

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mContextInjector:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjector;

    move-object v5, v4

    check-cast v5, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;

    iget-object v5, v5, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    :try_start_0
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_0
    const-string v5, "AvatarPhotoController"

    if-nez v6, :cond_1

    const-string p0, "Image data could not be decoded"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_1
    const/4 v7, -0x1

    :try_start_1
    check-cast v4, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;

    iget-object v4, v4, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v0, "Orientation"

    invoke-virtual {v4, v0, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Error while getting rotation"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x3

    if-eq v7, v0, :cond_4

    const/4 v0, 0x6

    if-eq v7, v0, :cond_3

    const/16 v0, 0x8

    if-eq v7, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x10e

    goto :goto_1

    :cond_3
    const/16 v0, 0x5a

    goto :goto_1

    :cond_4
    const/16 v0, 0xb4

    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    new-instance v10, Landroid/graphics/RectF;

    int-to-float v11, v7

    int-to-float v12, v8

    add-int/2addr v7, v4

    int-to-float v7, v7

    add-int/2addr v8, v4

    int-to-float v4, v8

    invoke-direct {v10, v11, v12, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v4, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {v9, v0, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v6, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mImagesDir:Ljava/io/File;

    const-string v2, "CropEditUserPhoto.jpg"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_2
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string v0, "Cannot create temp file"

    invoke-static {v5, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v1

    :catchall_0
    move-exception p0

    if-eqz v5, :cond_5

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    iget-object v1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mContextInjector:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjector;

    check-cast v1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;

    iget-object v1, v1, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_4
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mPreCropPictureUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mPreCropPictureUri:Landroid/net/Uri;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    const-string v0, "AvatarPhotoController"

    const-string v1, "Failed to copy photo"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
