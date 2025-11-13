.class public final Lcom/android/systemui/screenshot/ImageExporter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mCapturedAppInfo:Ljava/lang/String;

.field public static mHeight:I

.field public static mImageDisplayName:Ljava/lang/String;

.field public static mImageFileName:Ljava/lang/String;

.field public static mImageFilePath:Ljava/lang/String;

.field public static mImageFileRelativePath:Ljava/lang/String;

.field public static mImageTime:J

.field public static mMimeType:Ljava/lang/String;

.field public static mScreenshotsWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

.field public static mSecDate:J

.field public static mSize:J

.field public static mVolumeName:Ljava/lang/String;

.field public static mWidth:I


# instance fields
.field public mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mQuality:I

.field public final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public static -$$Nest$smpublishEntry(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/UserHandle;)V
    .locals 3

    const-string v0, "ImageExporter_publishEntry"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_pending"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "date_expires"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-static {p0}, Lcom/android/systemui/screenshot/ImageExporter;->semCreateSecmpEntry(Landroid/content/ContentResolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    :try_start_1
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p1, "Failed to publish entry. ContentResolver#update reported no rows updated."

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public static -$$Nest$smsemCreateEntry(Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;
    .locals 3

    const-string v0, "Inserted new URI: "

    const-string v1, "ImageExporter_semCreateEntry"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/systemui/screenshot/ImageExporter;->semCreateMetadata()Landroid/content/ContentValues;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "Screenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p1, "ContentResolver#insert returned null."

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public static -$$Nest$smwriteExif(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V
    .locals 2

    const-string v0, "ImageExporter_writeExif"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "rw"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance p0, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/ImageExporter;->updateExifAttributes(Landroidx/exifinterface/media/ExifInterface;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p0, "Samsung_Capture_Info"

    const-string p1, "Screenshot"

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p3, 0x1

    const/16 p4, 0xc51

    invoke-static {v0, p0, p1, p4, p3}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[BII)J

    const-string p0, "Captured_App_Info"

    sget-object p1, Lcom/android/systemui/screenshot/ImageExporter;->mCapturedAppInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/16 p2, 0xda1

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[BII)J
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_5
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p2, "ExifInterface threw an exception writing to the file descriptor."

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p2, "ExifInterface threw an exception reading from the file descriptor."

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p1, "ContentResolver#openFile returned null."

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p2, "ContentResolver#openFile threw an exception."

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    invoke-static {v0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public static -$$Nest$smwriteImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V
    .locals 1

    const-string v0, "ImageExporter_writeImage"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    :try_start_3
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p2, "Bitmap.compress returned false. (Failure unknown)"

    invoke-direct {p1, p2}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p2, "ContentResolver#openOutputStream threw an exception."

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_SCREENSHOTS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageExporter;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/screenshot/ImageExporter;->mQuality:I

    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageExporter;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    return-void
.end method

.method public static createFilename(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/android/systemui/screenshot/ImageExporter;->fileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Screenshot_%1$tY%<tm%<td-%<tH%<tM%<tS.%2$s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Lcom/android/systemui/screenshot/ImageExporter;->fileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Screenshot_%1$tY%<tm%<td-%<tH%<tM%<tS-display-%2$d.%3$s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createSystemFileDisplayName(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/screenshot/ImageExporter;->fileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/ImageExporter$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown CompressFormat!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "webp"

    return-object p0

    :cond_2
    const-string p0, "png"

    return-object p0

    :cond_3
    const-string p0, "jpg"

    return-object p0
.end method

.method public static semCreateMetadata()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "relative_path"

    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mImageFileRelativePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mImageDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v1, Lcom/android/systemui/screenshot/ImageExporter;->mImageTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-wide v1, Lcom/android/systemui/screenshot/ImageExporter;->mSecDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_added"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-wide v1, Lcom/android/systemui/screenshot/ImageExporter;->mSecDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_modified"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mime_type"

    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/screenshot/ImageExporter;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget v1, Lcom/android/systemui/screenshot/ImageExporter;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-wide v1, Lcom/android/systemui/screenshot/ImageExporter;->mSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "media_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static semCreateSecmpEntry(Landroid/content/ContentResolver;)V
    .locals 3

    const-string v0, "Inserted new URI: "

    const-string v1, "ImageExporter_semCreateSecmpEntry"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/systemui/screenshot/ImageExporter;->semCreateSecmpMetadata()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "content://secmedia/media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "Screenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string v0, "ContentResolver#insert returned null."

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public static semCreateSecmpMetadata()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "relative_path"

    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mImageFileRelativePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mImageDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v1, Lcom/android/systemui/screenshot/ImageExporter;->mImageTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-wide v1, Lcom/android/systemui/screenshot/ImageExporter;->mSecDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_added"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-wide v1, Lcom/android/systemui/screenshot/ImageExporter;->mSecDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_modified"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mime_type"

    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/screenshot/ImageExporter;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget v1, Lcom/android/systemui/screenshot/ImageExporter;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-wide v1, Lcom/android/systemui/screenshot/ImageExporter;->mSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "_data"

    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "media_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/systemui/screenshot/ImageExporter;->mScreenshotsWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    if-eqz v1, :cond_0

    const-string v2, "captured_url"

    iget-object v1, v1, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/screenshot/ImageExporter;->mScreenshotsWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    const-string v2, "captured_app"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static updateExifAttributes(Landroidx/exifinterface/media/ExifInterface;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V
    .locals 1

    const-string v0, "ImageUniqueID"

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Android "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Software"

    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ImageWidth"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ImageLength"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "yyyy:MM:dd HH:mm:ss"

    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SSS"

    invoke-static {p2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "xxx"

    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "DateTimeOriginal"

    invoke-virtual {p0, p4, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SubSecTimeOriginal"

    invoke-virtual {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OffsetTimeOriginal"

    invoke-virtual {p0, p1, p3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/os/UserHandle;I)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    .locals 13

    move-object v0, p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v1}, Ljava/time/ZonedDateTime;->now(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v6

    new-instance v1, Lcom/android/systemui/screenshot/ImageExporter$Task;

    iget-object v3, v0, Lcom/android/systemui/screenshot/ImageExporter;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, v0, Lcom/android/systemui/screenshot/ImageExporter;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v2, p5

    invoke-static {v6, v7, v2}, Lcom/android/systemui/screenshot/ImageExporter;->createFilename(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;

    move-result-object v12

    iget v8, v0, Lcom/android/systemui/screenshot/ImageExporter;->mQuality:I

    const/4 v9, 0x1

    iget-object v11, v0, Lcom/android/systemui/screenshot/ImageExporter;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object v2, v1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/screenshot/ImageExporter$Task;-><init>(Landroid/content/ContentResolver;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;IZLandroid/os/UserHandle;Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;

    move-object v2, p1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ImageExporter$Task;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object v0

    return-object v0
.end method
