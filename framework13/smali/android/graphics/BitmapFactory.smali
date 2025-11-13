.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final greylist-max-o DECODE_BUFFER_SIZE:I = 0x4000

.field private static final blacklist TAG:Ljava/lang/String; = "BitmapFactory"

.field private static final blacklist WECHAT_SAMPLE_SIZE_2:I = 0x2

.field private static final blacklist WECHAT_SAMPLE_SIZE_3:I = 0x3


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 856
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 822
    or-int v0, p1, p2

    if-ltz v0, :cond_2

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_2

    .line 825
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 829
    const-wide/16 v0, 0x2

    const-string v2, "decodeBitmap"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 831
    nop

    .line 832
    :try_start_0
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 833
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v9

    .line 831
    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v3 .. v10}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 835
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    iget-object v3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    goto :goto_0

    .line 836
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "data":[B
    .end local p1    # "offset":I
    .end local p2    # "length":I
    .end local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    throw v3

    .line 838
    .restart local p0    # "data":[B
    .restart local p1    # "offset":I
    .restart local p2    # "length":I
    .restart local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    invoke-static {v2, p3}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 841
    nop

    .line 843
    return-object v2

    .line 840
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 841
    throw v2

    .line 823
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "pathName"    # Ljava/lang/String;

    .line 672
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 556
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 557
    .local v3, "uid":I
    const-string v4, ""

    .line 558
    .local v4, "pkgName":Ljava/lang/String;
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 560
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v5, :cond_0

    .line 561
    :try_start_0
    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 564
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 565
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 566
    :goto_1
    if-eqz v2, :cond_1

    .line 567
    if-eqz v4, :cond_1

    .line 568
    const-string v0, "com.tencent.mm"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_1

    .line 570
    const/4 v0, 0x2

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 574
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 575
    const/4 v6, 0x0

    .line 576
    .local v6, "bm":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 580
    .local v7, "stream":Ljava/io/InputStream;
    const/4 v0, 0x0

    const-string v8, "BitmapFactory"

    if-eqz v1, :cond_8

    .line 581
    :try_start_1
    const-string v9, ".dcf"

    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 582
    const/4 v7, 0x0

    .line 583
    new-instance v9, Landroid/drm/DrmManagerClient;

    invoke-direct {v9, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 584
    .local v9, "drmClient":Landroid/drm/DrmManagerClient;
    invoke-virtual {v9, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 585
    .end local v9    # "drmClient":Landroid/drm/DrmManagerClient;
    .local v10, "drmMimetype":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeFile drmMimetype = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz v10, :cond_6

    .line 588
    const-string v11, "image/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 589
    const/4 v11, 0x7

    invoke-virtual {v9, v1, v11}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v11

    .line 591
    .local v11, "rightStatus":I
    if-nez v11, :cond_4

    .line 592
    const-string v12, "application/vnd.oma.drm.content"

    .line 593
    .local v12, "mimeType":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 594
    .local v13, "fileLength":J
    new-instance v15, Landroid/drm/DrmInfoRequest;

    const/16 v0, 0xa

    invoke-direct {v15, v0, v12}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    move-object v0, v15

    .line 595
    .local v0, "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v15, "drm_path"

    invoke-virtual {v0, v15, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 596
    const-string v15, "LENGTH"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v17, v3

    .end local v3    # "uid":I
    .local v17, "uid":I
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    invoke-virtual {v9, v0}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v3

    .line 599
    .local v3, "resultInfo":Landroid/drm/DrmInfo;
    const-string/jumbo v15, "status"

    invoke-virtual {v3, v15}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 600
    .local v15, "status":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .local v16, "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v4

    .end local v4    # "pkgName":Ljava/lang/String;
    .local v18, "pkgName":Ljava/lang/String;
    :try_start_3
    const-string v4, "decodeFile acquireDrmInfo status is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string/jumbo v0, "success"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {v3}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 604
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v7, v0

    goto :goto_2

    .line 606
    :cond_2
    const-string v0, "decodeFile acquireDrmInfo resultInfo is null"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 609
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeFile FAIL status = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v3    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "fileLength":J
    .end local v15    # "status":Ljava/lang/String;
    .end local v16    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    :goto_2
    goto :goto_3

    .line 653
    .end local v10    # "drmMimetype":Ljava/lang/String;
    .end local v11    # "rightStatus":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v4    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v4

    move-object v3, v0

    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v18    # "pkgName":Ljava/lang/String;
    goto/16 :goto_7

    .line 647
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v4    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v18    # "pkgName":Ljava/lang/String;
    goto/16 :goto_5

    .line 613
    .end local v17    # "uid":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .local v3, "uid":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v10    # "drmMimetype":Ljava/lang/String;
    .restart local v11    # "rightStatus":I
    :cond_4
    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "uid":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v17    # "uid":I
    .restart local v18    # "pkgName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeFile Rights not present. rightStatus = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 588
    .end local v11    # "rightStatus":I
    .end local v17    # "uid":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v3    # "uid":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_5
    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "uid":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v17    # "uid":I
    .restart local v18    # "pkgName":Ljava/lang/String;
    goto :goto_3

    .line 587
    .end local v17    # "uid":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v3    # "uid":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_6
    move/from16 v17, v3

    move-object/from16 v18, v4

    .line 618
    .end local v3    # "uid":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v17    # "uid":I
    .restart local v18    # "pkgName":Ljava/lang/String;
    :goto_3
    nop

    .line 619
    invoke-virtual {v9}, Landroid/drm/DrmManagerClient;->release()V

    .line 620
    nop

    .line 622
    .end local v10    # "drmMimetype":Ljava/lang/String;
    goto :goto_4

    .line 625
    .end local v17    # "uid":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v3    # "uid":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_7
    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "uid":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v17    # "uid":I
    .restart local v18    # "pkgName":Ljava/lang/String;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_4

    .line 653
    .end local v17    # "uid":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v3    # "uid":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object v3, v0

    .end local v3    # "uid":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v17    # "uid":I
    .restart local v18    # "pkgName":Ljava/lang/String;
    goto :goto_7

    .line 647
    .end local v17    # "uid":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v3    # "uid":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "uid":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v17    # "uid":I
    .restart local v18    # "pkgName":Ljava/lang/String;
    goto :goto_5

    .line 580
    .end local v17    # "uid":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .restart local v3    # "uid":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_8
    move/from16 v17, v3

    move-object/from16 v18, v4

    .line 629
    .end local v3    # "uid":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v17    # "uid":I
    .restart local v18    # "pkgName":Ljava/lang/String;
    :goto_4
    if-eqz v7, :cond_d

    .line 630
    const-string v0, "/data/overlays"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "/data/app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 631
    :cond_9
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 632
    .local v0, "checkStream":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->isQMGImage(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 633
    const/4 v3, 0x0

    invoke-static {v7, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStreamQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v3, v4

    move-object v6, v3

    .line 636
    .end local v0    # "checkStream":Ljava/io/InputStream;
    :cond_a
    if-nez v6, :cond_b

    .line 637
    const/4 v0, 0x0

    invoke-static {v7, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    .line 639
    :cond_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    .line 653
    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_7

    .line 647
    :catch_3
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decode stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 653
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_e

    .line 655
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 658
    :goto_6
    goto :goto_a

    .line 656
    :catch_4
    move-exception v0

    goto :goto_6

    .line 653
    :goto_7
    if-eqz v7, :cond_c

    .line 655
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 658
    goto :goto_8

    .line 656
    :catch_5
    move-exception v0

    .line 660
    :cond_c
    :goto_8
    throw v3

    .line 653
    :cond_d
    :goto_9
    if-eqz v7, :cond_e

    .line 655
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    .line 661
    :cond_e
    :goto_a
    return-object v6
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 1127
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 1087
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 1090
    const-wide/16 v0, 0x2

    const-string v2, "decodeFileDescriptor"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1092
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1093
    nop

    .line 1094
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v6

    .line 1095
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v8

    .line 1093
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bm":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1097
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1099
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1102
    .local v3, "bm":Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1103
    goto :goto_0

    :catchall_0
    move-exception v4

    .line 1104
    nop

    .line 1107
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    move-object v2, v3

    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .local v2, "bm":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    :try_start_3
    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    goto :goto_2

    .line 1108
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    throw v3

    .line 1111
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "outPadding":Landroid/graphics/Rect;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_2
    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1113
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1114
    nop

    .line 1115
    return-object v2

    .line 1101
    .local v2, "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    .line 1102
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1103
    :goto_3
    goto :goto_4

    :catchall_2
    move-exception v4

    goto :goto_3

    .line 1104
    :goto_4
    nop

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1113
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "outPadding":Landroid/graphics/Rect;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_3
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1114
    throw v2
.end method

.method public static whitelist decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 800
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 744
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 745
    .local v0, "uid":I
    const-string v1, ""

    .line 746
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 748
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_0

    .line 749
    :try_start_0
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    .line 751
    :catch_0
    move-exception v3

    .line 752
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 753
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 754
    :goto_1
    if-eqz p2, :cond_1

    .line 755
    if-eqz v1, :cond_1

    .line 756
    const-string v3, "com.tencent.mm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 757
    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 758
    const/4 v3, 0x2

    iput v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 762
    :cond_1
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 763
    const/4 v3, 0x0

    .line 764
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 767
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 768
    .local v5, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v5}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v6

    move-object v4, v6

    .line 770
    const/4 v6, 0x0

    invoke-static {p0, v5, v4, v6, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v6

    .line 778
    .end local v5    # "value":Landroid/util/TypedValue;
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 779
    :catch_1
    move-exception v5

    .line 782
    goto :goto_5

    .line 781
    :cond_2
    :goto_2
    goto :goto_5

    .line 777
    :catchall_0
    move-exception v5

    .line 778
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 779
    :catch_2
    move-exception v6

    goto :goto_4

    .line 781
    :cond_3
    :goto_3
    nop

    .line 782
    :goto_4
    throw v5

    .line 771
    :catch_3
    move-exception v5

    .line 778
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 784
    :goto_5
    if-nez v3, :cond_5

    if-eqz p2, :cond_5

    iget-object v5, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    goto :goto_6

    .line 785
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Problem decoding into existing bitmap"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 788
    :cond_5
    :goto_6
    return-object v3
.end method

.method public static whitelist decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 687
    invoke-static {p4}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 688
    if-nez p4, :cond_0

    .line 689
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p4, v0

    .line 692
    :cond_0
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 693
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 694
    .local v0, "density":I
    if-nez v0, :cond_1

    .line 695
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0

    .line 696
    :cond_1
    const v1, 0xffff

    if-eq v0, v1, :cond_2

    .line 697
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 701
    .end local v0    # "density":I
    :cond_2
    :goto_0
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    .line 702
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 705
    :cond_3
    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 706
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "file":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getApkPaths()[Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/util/TypedValue;->assetCookie:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 709
    .local v1, "apkPath":Ljava/lang/String;
    :try_start_0
    const-string v2, "/data/overlays"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/data/app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 710
    :cond_4
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget v3, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 712
    .local v2, "checkStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->isQMGImage(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 713
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStreamQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .local v3, "bm":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_5

    .line 715
    return-object v3

    .line 721
    .end local v2    # "checkStream":Ljava/io/InputStream;
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    :cond_5
    goto :goto_1

    .line 719
    :catch_0
    move-exception v2

    .line 720
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QMG] Failed to read input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BitmapFactory"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_6
    :goto_1
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 1064
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 917
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    .line 918
    .local v11, "uid":I
    const-string v2, ""

    .line 919
    .local v2, "pkgName":Ljava/lang/String;
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 921
    .local v12, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v12, :cond_0

    .line 922
    :try_start_0
    invoke-interface {v12, v11}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v13, v2

    goto :goto_1

    .line 926
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    move-object v13, v2

    .line 927
    .end local v2    # "pkgName":Ljava/lang/String;
    .local v13, "pkgName":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_1

    .line 928
    if-eqz v13, :cond_1

    .line 929
    const-string v0, "com.tencent.mm"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 931
    const/4 v0, 0x2

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 935
    :cond_1
    if-nez v1, :cond_2

    .line 936
    const/4 v0, 0x0

    return-object v0

    .line 938
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 940
    const/4 v14, 0x0

    .line 942
    .local v14, "bm":Landroid/graphics/Bitmap;
    const-wide/16 v8, 0x2

    const-string v0, "decodeBitmap"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 944
    :try_start_1
    instance-of v0, v1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_3

    .line 945
    move-object v0, v1

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    .line 946
    .local v2, "asset":J
    invoke-static/range {p2 .. p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v6

    .line 947
    invoke-static/range {p2 .. p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 946
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v17, v8

    move-wide v8, v15

    :try_start_2
    invoke-static/range {v2 .. v9}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 948
    .end local v2    # "asset":J
    .end local v14    # "bm":Landroid/graphics/Bitmap;
    .local v0, "bm":Landroid/graphics/Bitmap;
    move-object v14, v0

    goto :goto_2

    .line 949
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v14    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    move-wide/from16 v17, v8

    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v14, v0

    .line 952
    :goto_2
    if-nez v14, :cond_5

    if-eqz v10, :cond_5

    iget-object v0, v10, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    goto :goto_3

    .line 953
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "uid":I
    .end local v12    # "pm":Landroid/content/pm/IPackageManager;
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "bm":Landroid/graphics/Bitmap;
    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    throw v0

    .line 956
    .restart local v11    # "uid":I
    .restart local v12    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v13    # "pkgName":Ljava/lang/String;
    .restart local v14    # "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "is":Ljava/io/InputStream;
    .restart local p1    # "outPadding":Landroid/graphics/Rect;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :goto_3
    invoke-static {v14, v10}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 958
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 959
    nop

    .line 961
    return-object v14

    .line 958
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-wide/from16 v17, v8

    :goto_4
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 959
    throw v0
.end method

.method private static greylist-max-o decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, "tempStorage":[B
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 1031
    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0x4000

    new-array v0, v1, [B

    .line 1032
    :cond_1
    nop

    .line 1033
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v5

    .line 1034
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 1032
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist decodeStreamInternalQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 1045
    const/4 v0, 0x0

    .line 1046
    .local v0, "tempStorage":[B
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 1047
    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0x4000

    new-array v0, v1, [B

    .line 1048
    :cond_1
    nop

    .line 1049
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v5

    .line 1050
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 1048
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Landroid/graphics/BitmapFactory;->nativeDecodeStreamQMG(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist decodeStreamQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 972
    if-nez p0, :cond_0

    .line 973
    const/4 v0, 0x0

    return-object v0

    .line 975
    :cond_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 977
    const/4 v0, 0x0

    .line 979
    .local v0, "bm":Landroid/graphics/Bitmap;
    const-wide/16 v1, 0x2

    const-string v3, "decodeBitmapQMG"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 981
    :try_start_0
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_1

    .line 982
    move-object v3, p0

    check-cast v3, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v4

    .line 983
    .local v4, "asset":J
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v8

    .line 984
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v10

    .line 983
    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v4 .. v11}, Landroid/graphics/BitmapFactory;->nativeDecodeAssetQMG(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 985
    .end local v4    # "asset":J
    goto :goto_0

    .line 986
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternalQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 989
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    goto :goto_1

    .line 990
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    throw v3

    .line 993
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "is":Ljava/io/InputStream;
    .restart local p1    # "outPadding":Landroid/graphics/Rect;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :goto_1
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 996
    nop

    .line 998
    return-object v0

    .line 995
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 996
    throw v3
.end method

.method private static blacklist isQMGImage(Ljava/io/InputStream;)Z
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .line 1005
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 1007
    .local v0, "buffer":[B
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 1008
    aget-byte v2, v0, v1

    int-to-char v2, v2

    .line 1009
    .local v2, "h0":C
    const/4 v3, 0x1

    aget-byte v4, v0, v3

    int-to-char v4, v4

    .line 1010
    .local v4, "h1":C
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    const/16 v5, 0x51

    if-ne v2, v5, :cond_0

    const/16 v5, 0x47

    if-ne v4, v5, :cond_0

    .line 1012
    return v3

    .line 1014
    :cond_0
    return v1

    .line 1016
    .end local v2    # "h0":C
    .end local v4    # "h1":C
    :catch_0
    move-exception v2

    .line 1017
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BitmapFactory"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return v1
.end method

.method private static native greylist-max-r nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeAssetQMG(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeStreamQMG(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeIsQMG(Ljava/io/InputStream;)Z
.end method

.method private static native greylist-max-o nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static greylist-max-o setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 5
    .param p0, "outputBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 863
    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_4

    .line 865
    :cond_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 866
    .local v0, "density":I
    if-eqz v0, :cond_5

    .line 867
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 868
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 869
    .local v1, "targetDensity":I
    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 873
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 874
    .local v2, "np":[B
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 875
    .local v3, "isNinePatch":Z
    :goto_0
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_6

    .line 876
    :cond_3
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_2

    .line 870
    .end local v2    # "np":[B
    .end local v3    # "isNinePatch":Z
    :cond_4
    :goto_1
    return-void

    .line 878
    .end local v1    # "targetDensity":I
    :cond_5
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 880
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_3

    .line 878
    :cond_6
    :goto_2
    nop

    .line 882
    :goto_3
    return-void

    .line 863
    .end local v0    # "density":I
    :cond_7
    :goto_4
    return-void
.end method
