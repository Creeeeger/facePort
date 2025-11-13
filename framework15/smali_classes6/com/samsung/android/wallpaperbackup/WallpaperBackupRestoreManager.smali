.class public Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;,
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;,
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;,
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;
    }
.end annotation


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist RESTORE_TYPE_COVER:Ljava/lang/String; = "RESTORE_TYPE_COVER"

.field private static final blacklist RESTORE_TYPE_MAIN:Ljava/lang/String; = "RESTORE_TYPE_MAIN"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mModeFlagSet:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smresponse(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->response(Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    const/16 v1, 0x20

    const/4 v2, 0x4

    const/16 v3, 0x10

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    return-void
.end method

.method private blacklist handleDifferentTypeRestore(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;IILjava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v0

    const-string v1, "folder"

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ne p2, v5, :cond_0

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "skip restoring sub display of phone models"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    if-ne p2, v2, :cond_1

    or-int/lit8 v0, p3, 0x10

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setWhich(I)V

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "restoring main display of phone model to sub display of fold model"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p2, v5, :cond_3

    const-string v0, "RESTORE_TYPE_COVER"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v0, p3, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setWhich(I)V

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "restoring sub display of fold model to phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    return v4

    :cond_3
    if-ne p2, v2, :cond_6

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "do not restore main display of fold model to phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_5

    if-ne p2, v5, :cond_6

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getCoverType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "large_screen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "skip different size cover screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    if-ne p2, v5, :cond_6

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "skip sub display for phones"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    return v3
.end method

.method private blacklist isRestorableDeviceType(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_2
    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRestorableDeviceType: deviceTypeBackup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    return v4

    :cond_2
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->BNR_SUPPORT_BETWEEN_FOLD_AND_PHONE:Z

    if-eqz v3, :cond_4

    return v4

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    return v4

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    :cond_3
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->BNR_SUPPORT_BETWEEN_FOLD_AND_PHONE:Z

    if-eqz v3, :cond_4

    return v4

    :cond_4
    :goto_2
    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v4, "isRestorableDeviceType: Device type not matching"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v1, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4ba2e392 -> :sswitch_2
        -0x3488c19a -> :sswitch_1
        0x65b3d6e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isSupportedScreen(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-nez v2, :cond_0

    return v0

    :cond_0
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_3

    return v0

    :sswitch_1
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->BNR_SUPPORT_BETWEEN_FOLD_AND_PHONE:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v2, :cond_2

    return v0

    :cond_2
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v2, :cond_3

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_3

    return v0

    :sswitch_2
    nop

    :cond_3
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist pushBackupFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "wallpaper"

    move-object/from16 v14, p1

    invoke-virtual {v14, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    const/4 v4, 0x0

    move v15, v4

    :goto_0
    iget-object v4, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v15, v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v4, v4, v15

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->isSupportedScreen(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Scloud"

    move-object/from16 v13, p8

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v4, v4, v15

    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v4

    const/4 v6, 0x7

    if-ne v4, v6, :cond_0

    sget-object v4, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pushBackupFile() : home and lock layered wallpaper is paired for mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v7, v7, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", backup home wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v4, v4, v15

    or-int/lit8 v16, v4, 0x1

    new-instance v17, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    move-object/from16 v4, v17

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v7, p2

    move/from16 v8, v16

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/content/Context;Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v5, v5, v15

    or-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setWhich(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v16, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    iget-object v4, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v4, v4, v15

    or-int v8, v1, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/content/Context;Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v4, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;

    invoke-direct {v4}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;-><init>()V

    new-array v5, v5, [Ljava/util/ArrayList;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private blacklist pushRestoreFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v11, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    const-string v1, "wallpaper"

    move-object/from16 v10, p1

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Landroid/app/WallpaperManager;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v2, v2, v1

    invoke-direct {v0, v2, v11}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->isSupportedScreen(II)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    iget-object v3, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v3, v3, v1

    or-int v17, v11, v3

    const-string v21, ""

    move-object v13, v2

    move-object/from16 v14, p1

    move-object/from16 v15, v23

    move-object/from16 v16, p2

    move-object/from16 v18, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v22, p7

    invoke-direct/range {v13 .. v22}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/content/Context;Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v3, v3, v1

    move-object/from16 v13, p8

    invoke-direct {v0, v2, v3, v11, v13}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->handleDifferentTypeRestore(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 v13, p8

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v13, p8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v2, "pushRestoreFile: Nothing to restore."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    const-string v9, ""

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/content/Context;Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->response(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_3
    invoke-direct {v0, v12}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->isRestorableDeviceType(Ljava/util/ArrayList;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->response(Ljava/util/ArrayList;)V

    return-void

    :cond_4
    new-instance v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;

    invoke-direct {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/ArrayList;

    aput-object v12, v3, v2

    invoke-virtual {v1, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2
    return-void
.end method

.method private static blacklist response(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v4

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getResultCode()Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getResultCode()Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    if-ne v6, v7, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isBackupCase()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->INVALID_DATA:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    goto :goto_2

    :cond_3
    if-lez v2, :cond_4

    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    :cond_4
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v15, p0

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getResponseAction()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_5

    sget-object v7, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    goto :goto_3

    :cond_5
    sget-object v7, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSessionTime()Ljava/lang/String;

    move-result-object v11

    const/high16 v9, 0xa00000

    move-object v8, v0

    move-object v12, v3

    move-object v13, v14

    invoke-static/range {v4 .. v13}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    return-void
.end method

.method private static blacklist sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;",
            "Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendResponse:\n\t\twhich \t\t\t\t= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\t\taction \t\t\t\t= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\t\tresultCode \t\t\t= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\t\terrorCode \t\t\t= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\t\trequiredSize \t\t= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\t\tsesstionTime \t\t= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\t\tsource \t\t\t\t= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v6, :cond_0

    invoke-virtual/range {p8 .. p8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const-string v12, "\n\t\textraResultCode \t= "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%2d"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-eqz p9, :cond_1

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n\t\tpackages \t\t\t\t= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    sget-object v8, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "RESULT"

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->getCode()I

    move-result v11

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "ERR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->getCode()I

    move-result v11

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "REQ_SIZE"

    invoke-virtual {v8, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "SOURCE"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "EXPORT_SESSION_TIME"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    sget-object v9, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    if-ne v2, v9, :cond_3

    const-string v9, "EXTRA_ERR_CODE"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_3
    if-eqz p9, :cond_4

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    const-string v9, "EXTRA"

    move-object/from16 v11, p9

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_4
    const-string v9, "com.wssnps.permission.COM_WSSNPS"

    move-object v11, p0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendBroadcast. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p4

    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBackupWallpaper which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " basePath="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " source="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->checkSaveAvailable(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-virtual {v2, v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v14, v3

    sget-object v15, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v4, "startBackupWallpaper is return because precondition fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/high16 v8, 0xa00000

    const/4 v12, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v5, v1

    move-object v7, v2

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object v11, v14

    invoke-static/range {v3 .. v12}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    return-void

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v1

    move/from16 v6, p3

    move-object v7, v0

    move/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p7

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->pushBackupFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v6, ""

    const-string v7, ""

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p4

    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRestoreWallpaper: which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " basePath = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " source = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " securityLevel = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v14, p6

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " restoreScreen = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v15, p8

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->checkSaveAvailable(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-virtual {v2, v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v12, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v11, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v4, "startRestoreWallpaper is return because precondition fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/high16 v8, 0xa00000

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v5, v1

    move-object v7, v2

    move-object/from16 v9, p5

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v12, v16

    invoke-static/range {v3 .. v12}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    return-void

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v1

    move/from16 v6, p3

    move-object v7, v0

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p5

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->pushRestoreFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
