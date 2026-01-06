.class Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
.source "FaceEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onEnrollmentHelp$1$FaceEnrollActivity$5()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onEnrollmentProgress$0$FaceEnrollActivity$5()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    return-void
.end method

.method public synthetic lambda$onImageProcessed$2$FaceEnrollActivity$5()V
    .locals 2

    const/16 v0, 0x7d1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onImageProcessed$3$FaceEnrollActivity$5()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2700(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1800(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1800(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->setPreviewState()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2702(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2800(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2502(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2602(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;J)J

    return-void
.end method

.method public synthetic lambda$onImageProcessed$4$FaceEnrollActivity$5([BLandroid/os/Bundle;III)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p5

    const-string v4, "Unable to close stream"

    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    move-object/from16 v5, p1

    invoke-static {v0, v5}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2402(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;[B)[B

    if-eqz v2, :cond_0

    const-string v0, "memoryfile_descriptor"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    const-string v7, "BSS_FaceEnrollActivity"

    if-eqz v6, :cond_1

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v8, v0

    const-wide/16 v9, 0x0

    :try_start_0
    invoke-virtual {v6, v9, v10}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-static {v9}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2402(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v9, "Unable to read statistics stream"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v7, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_2
    nop

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v7, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    throw v9

    :cond_1
    :goto_4
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "onImageProcessed : setImageBitmap not done"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1e

    cmp-long v0, v8, v10

    if-gez v0, :cond_3

    const-string v0, "onImageProcessed : Too fast"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_5
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2400(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)[B

    move-result-object v9

    const/16 v10, 0x11

    const/4 v13, 0x0

    move-object v8, v0

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Landroid/graphics/Rect;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v9, 0x0

    move/from16 v10, p3

    move/from16 v11, p4

    :try_start_6
    invoke-direct {v8, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v12, 0x64

    invoke-virtual {v0, v8, v12, v4}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    iget-object v8, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    invoke-static {v12, v9, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2502(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v9, 0x40000000    # 2.0f

    if-nez v3, :cond_4

    const/high16 v12, 0x43340000    # 180.0f

    iget-object v13, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v13}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v9

    iget-object v14, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v9

    invoke-virtual {v8, v12, v13, v14}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_5

    :cond_4
    const/16 v12, 0x10e

    if-ne v3, v12, :cond_5

    const/high16 v12, 0x43870000    # 270.0f

    iget-object v13, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v13}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v9

    iget-object v14, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v9

    invoke-virtual {v8, v12, v13, v14}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_5
    :goto_5
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v9, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v9}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v15, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v15}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    iget-object v14, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v18, 0x1

    const/4 v14, 0x0

    move/from16 v16, v17

    move-object/from16 v17, v8

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2502(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v9, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v9}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2200(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/os/Handler;

    move-result-object v9

    new-instance v12, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda3;

    invoke-direct {v12, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;)V

    invoke-virtual {v9, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    nop

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v10, p3

    move/from16 v11, p4

    :goto_6
    const-string v4, "Image process failed"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_FaceEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1900(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2000(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2100(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;ILjava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x186a2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentHelp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_FaceEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$502(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1000(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    return-void

    :cond_0
    const/16 v0, 0x3f8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1100(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1102(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const v3, 0x7f10006c

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v4, 0x7f100071

    invoke-virtual {v2, v4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x3f9

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1200(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    sparse-switch p1, :sswitch_data_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v3, 0x7f100073

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v3, 0x7f100078

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v3, 0x7f100075

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v3, 0x7f100077

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v3, 0x7f100079

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_6
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v3, 0x7f100076

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_7
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v3, 0x7f10007c

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_8
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v3, 0x7f10007a

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_9
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v3, 0x7f10007b

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_a
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const v3, 0x7f100070

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_b
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v2, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1300(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Ljava/lang/String;

    move-result-object v2

    nop

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$400(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$400(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v3, v2, v4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1400(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Ljava/lang/String;I)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/16 v2, 0x14a

    invoke-static {v1, p1, v4, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;IZI)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1700(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1700(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;)V

    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1702(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1700(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1800(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$1800(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->setErrorState()V

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_b
        0x3 -> :sswitch_a
        0x5 -> :sswitch_b
        0x6 -> :sswitch_b
        0x3ee -> :sswitch_9
        0x3ef -> :sswitch_8
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_6
        0x3f3 -> :sswitch_5
        0x3f4 -> :sswitch_4
        0x3f5 -> :sswitch_3
        0x3f6 -> :sswitch_2
        0x3f7 -> :sswitch_1
        0x3f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onEnrollmentProgress(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_FaceEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    if-eqz v0, :cond_0

    rsub-int/lit8 p1, p1, 0x64

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$502(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollProgressText(I)V

    const/16 v0, 0x46

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$700(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$702(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$802(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$900(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onImageProcessed([BIIIILandroid/os/Bundle;)V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    const-string v1, "BSS_FaceEnrollActivity"

    if-nez v0, :cond_0

    const-string v0, "It\'s not face HAL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2200(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageProcessed : w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ori="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imageFormat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", b="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$2300(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p6

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;[BLandroid/os/Bundle;III)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    :goto_1
    const-string v0, "data is null or 0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
