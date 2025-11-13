.class public final Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;
.super Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final deleteVideoFileWithFilename(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->getVideoFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "This service must be run from the owner("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getVideoFileDescriptorAsUserWithFilename(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3c000000    # 0.0078125f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x38000000

    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->getVideoFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "This service must be run from the owner("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getVideoFilePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    iget v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-$$Nest$mgetTempFilePath(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    iget v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-$$Nest$mgetSavedFilePath(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final isVideoFileExistsWithFilename(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->getVideoFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "This service must be run from the owner("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final renameVideoFileWithFilename(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    iget v2, v0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    iget v3, v0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-$$Nest$mgetTempFilePath(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    iget v3, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->-$$Nest$mgetSavedFilePath(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "This service must be run from the owner("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setVideoLockscreenWallpaperAsOwnerWithFilename(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->getVideoFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget v5, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    iget v6, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "This service must be run from the owner("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setVideoWallpaperAsOwnerWithFilename(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "allowBackup"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    move v8, v0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->getVideoFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget v5, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    iget v6, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v9, p1

    invoke-virtual/range {v1 .. v9}, Landroid/app/WallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "This service must be run from the owner("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
