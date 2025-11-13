.class public final Lcom/android/systemui/screenshot/ImageExporter$Task;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mCaptureTime:Ljava/time/ZonedDateTime;

.field public final mFileName:Ljava/lang/String;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public final mOwner:Landroid/os/UserHandle;

.field public final mPublish:Z

.field public final mQuality:I

.field public final mRequestId:Ljava/util/UUID;

.field public final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;IZLandroid/os/UserHandle;Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/screenshot/ImageExporter$Task;-><init>(Landroid/content/ContentResolver;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;IZLandroid/os/UserHandle;Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;IZLandroid/os/UserHandle;Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mRequestId:Ljava/util/UUID;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mCaptureTime:Ljava/time/ZonedDateTime;

    iput-object p5, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput p6, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mQuality:I

    iput-object p8, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mOwner:Landroid/os/UserHandle;

    iput-object p10, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFileName:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mPublish:Z

    return-void
.end method


# virtual methods
.method public final execute()Lcom/android/systemui/screenshot/ImageExporter$Result;
    .locals 10

    const-string v0, "ImageExporter_execute"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/screenshot/ImageExporter$Result;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ImageExporter$Result;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mOwner:Landroid/os/UserHandle;

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smsemCreateEntry(Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/systemui/screenshot/ImageExporter$ImageExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v6, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mQuality:I

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smwriteImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v4, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mRequestId:Ljava/util/UUID;

    iget-object v9, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mCaptureTime:Ljava/time/ZonedDateTime;

    move-object v5, v2

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smwriteExif(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mPublish:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mOwner:Landroid/os/UserHandle;

    invoke-static {v3, v2, v4}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smpublishEntry(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/UserHandle;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->published:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mCaptureTime:Ljava/time/ZonedDateTime;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->timestamp:J

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mRequestId:Ljava/util/UUID;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->requestId:Ljava/util/UUID;

    iput-object v2, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFileName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->format:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_1
    .catch Lcom/android/systemui/screenshot/ImageExporter$ImageExportException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catch Lcom/android/systemui/screenshot/ImageExporter$ImageExportException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_4

    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "export ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] at quality "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mQuality:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
