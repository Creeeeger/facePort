.class public abstract Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const-string v0, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, p4, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->setVideoWallpaperAsOwnerWithFilename(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->setVideoLockscreenWallpaperAsOwnerWithFilename(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->renameVideoFileWithFilename(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p2

    if-nez p2, :cond_8

    sget-boolean p2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    sget-boolean p2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    move p2, p4

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/user_de/0/com.android.systemui/files"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoWallpaperFileFilter:Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;

    invoke-virtual {v3, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    array-length v3, p0

    :goto_1
    if-ge p4, v3, :cond_7

    aget-object v4, p0, p4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "VideoFileCopyService"

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "deleteVideoFiles: "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v4, "deleteVideoFiles, fail: "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :cond_8
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

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->deleteVideoFileWithFilename(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->isVideoFileExistsWithFilename(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->getVideoFileDescriptorAsUserWithFilename(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    :pswitch_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->setVideoWallpaperAsOwnerWithFilename(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_8
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->setVideoLockscreenWallpaperAsOwnerWithFilename(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_9
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->renameVideoFileWithFilename(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_3

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->deleteVideoFileWithFilename(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_3

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->isVideoFileExistsWithFilename(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_3

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->getVideoFileDescriptorAsUserWithFilename(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    iput v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
