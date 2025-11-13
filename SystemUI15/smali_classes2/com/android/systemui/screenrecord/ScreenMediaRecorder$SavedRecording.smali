.class public final Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mThumbnailIcon:Landroid/graphics/drawable/Icon;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/ScreenMediaRecorder;Landroid/net/Uri;Ljava/io/File;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p3, p4, p1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;->mThumbnailIcon:Landroid/graphics/drawable/Icon;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ScreenMediaRecorder"

    const-string p2, "Error creating thumbnail"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
