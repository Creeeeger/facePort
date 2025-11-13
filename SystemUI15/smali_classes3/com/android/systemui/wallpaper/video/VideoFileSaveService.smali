.class public Lcom/android/systemui/wallpaper/video/VideoFileSaveService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBinder:Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

.field public mCurentWhich:I

.field public mUserId:I

.field public mVideoFileExt:Ljava/lang/String;

.field public final mVideoWallpaperFileFilter:Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;


# direct methods
.method public static -$$Nest$mgetSavedFilePath(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "VideoFileCopyService"

    const-string v0, "getSavedFilePath() file is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "/data/user_de/0/com.android.systemui/files"

    :goto_0
    const-string/jumbo v0, "video_wallpaper_"

    const-string v1, "_"

    const-string v2, "."

    invoke-static {p3, p4, v0, v1, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "/"

    if-eqz p3, :cond_1

    invoke-static {p0, p4, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static -$$Nest$mgetTempFilePath(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "VideoFileCopyService"

    const-string v0, "getTempFilePath() file is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "/data/user_de/0/com.android.systemui/files"

    :goto_0
    const-string/jumbo v0, "video_wallpaper_"

    const-string v1, "_"

    const-string v2, "_temp."

    invoke-static {p3, p4, v0, v1, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "/"

    if-eqz p3, :cond_1

    invoke-static {p0, p4, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "mp4"

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;-><init>(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoWallpaperFileFilter:Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;

    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;-><init>(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mBinder:Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mBinder:Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    return-object p0
.end method
