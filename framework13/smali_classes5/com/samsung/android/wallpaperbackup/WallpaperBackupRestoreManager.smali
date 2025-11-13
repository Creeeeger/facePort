.class public Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;,
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;,
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;,
        Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    }
.end annotation


# static fields
.field private static blacklist DEBUG:Z

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

    .line 81
    const-class v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    .line 102
    return-void

    :array_0
    .array-data 4
        0x4
        0x10
        0x8
        0x20
    .end array-data
.end method

.method private blacklist checkDeviceType(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;",
            ">;)Z"
        }
    .end annotation

    .line 270
    .local p1, "helpers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 272
    .local v1, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "deviceTypeBackup":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 274
    return v4

    .line 276
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v5, "phone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "tablet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_0

    :sswitch_2
    const-string v5, "folder"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 293
    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDeviceType: deviceTypeBackup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 288
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    .line 289
    return v4

    .line 283
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    return v4

    .line 278
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    return v4

    .line 298
    :cond_2
    :goto_1
    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v4, "checkDeviceType: Device type not matching"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v1, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    .line 300
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->response(Ljava/util/ArrayList;)V

    .line 303
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
    .locals 2
    .param p1, "mode"    # I
    .param p2, "type"    # I

    .line 233
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 247
    :sswitch_0
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-nez v1, :cond_0

    .line 248
    return v0

    .line 251
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2

    .line 252
    return v0

    .line 235
    :sswitch_1
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v1, :cond_1

    .line 236
    return v0

    .line 239
    :cond_1
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_2

    .line 240
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2

    .line 241
    return v0

    .line 260
    :sswitch_2
    nop

    .line 266
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist pushBackupFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "basePath"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "saveKey"    # Ljava/lang/String;
    .param p7, "sessionTime"    # Ljava/lang/String;
    .param p8, "source"    # Ljava/lang/String;

    .line 152
    move-object v0, p0

    move/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v2, "helpers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 156
    aget v4, v4, v3

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->isSupportedScreen(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    new-instance v4, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    iget-object v5, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v5, v5, v3

    or-int v8, v1, v5

    move-object v5, v4

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v4, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v4    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;

    invoke-direct {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;-><init>()V

    .line 164
    .local v3, "task":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/ArrayList;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    return-void
.end method

.method private blacklist pushRestoreFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "basePath"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "saveKey"    # Ljava/lang/String;
    .param p7, "source"    # Ljava/lang/String;

    .line 212
    move-object v0, p0

    move/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v2, "helpers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 215
    aget v4, v4, v3

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->isSupportedScreen(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    new-instance v4, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    iget-object v5, v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->mModeFlagSet:[I

    aget v5, v5, v3

    or-int v8, v1, v5

    const-string v12, ""

    move-object v5, v4

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v4, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v4    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->checkDeviceType(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 224
    return-void

    .line 228
    :cond_2
    new-instance v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;

    invoke-direct {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;-><init>()V

    .line 229
    .local v3, "task":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/ArrayList;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
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

    .line 307
    .local p0, "helpers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    .line 309
    .local v0, "errorCode":Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    const/4 v1, 0x0

    .line 310
    .local v1, "successCount":I
    const/4 v2, 0x0

    .line 312
    .local v2, "failCount":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v3, "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v4

    .line 316
    .local v14, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 317
    .local v5, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getResultCode()Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getResultCode()Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    if-ne v6, v7, :cond_0

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 325
    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isBackupCase()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 326
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 327
    invoke-virtual {v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v5    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    :cond_1
    goto :goto_0

    .line 333
    :cond_2
    if-nez v1, :cond_3

    .line 334
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->INVALID_DATA:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    goto :goto_2

    .line 336
    :cond_3
    if-lez v2, :cond_4

    .line 337
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    .line 341
    :cond_4
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v15, p0

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 342
    .local v16, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 343
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v5

    .line 344
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getResponseAction()Ljava/lang/String;

    move-result-object v6

    .line 345
    if-nez v1, :cond_5

    sget-object v7, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    goto :goto_3

    :cond_5
    sget-object v7, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    :goto_3
    const/high16 v9, 0xa00000

    .line 348
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSource()Ljava/lang/String;

    move-result-object v10

    .line 349
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSessionTime()Ljava/lang/String;

    move-result-object v11

    .line 342
    move-object v8, v0

    move-object v12, v3

    move-object v13, v14

    invoke-static/range {v4 .. v13}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 353
    return-void
.end method

.method private static blacklist sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "resultCode"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .param p4, "errorCode"    # Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    .param p5, "requiredSize"    # I
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "sessionTime"    # Ljava/lang/String;
    .param p8, "extraResultCodes"    # Ljava/util/HashMap;
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

    .line 359
    .local p9, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    .local v7, "logBuffer":Ljava/lang/StringBuffer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendResponse:\n\t\twhich \t\t\t\t= "

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

    .line 362
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

    .line 363
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

    .line 364
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

    .line 365
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

    .line 366
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

    .line 367
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    if-eqz v6, :cond_0

    .line 370
    invoke-virtual/range {p8 .. p8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 371
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 372
    .local v11, "key":Ljava/lang/Integer;
    const-string v12, "\n\t\textraResultCode \t= "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const-string v14, "%2d"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 374
    .end local v11    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 378
    .end local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    if-eqz p9, :cond_1

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 379
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

    .line 383
    :cond_1
    sget-object v8, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->getCode()I

    move-result v11

    const-string v12, "RESULT"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->getCode()I

    move-result v11

    const-string v12, "ERR_CODE"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v11, "REQ_SIZE"

    invoke-virtual {v9, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    const-string v11, "SOURCE"

    invoke-virtual {v9, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 392
    const-string v11, "EXPORT_SESSION_TIME"

    invoke-virtual {v9, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    :cond_2
    sget-object v11, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    if-ne v2, v11, :cond_3

    .line 396
    const-string v11, "EXTRA_ERR_CODE"

    invoke-virtual {v9, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 400
    :cond_3
    if-eqz p9, :cond_4

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 401
    move-object/from16 v11, p9

    check-cast v11, Ljava/util/ArrayList;

    const-string v12, "EXTRA"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 405
    :cond_4
    const-string v11, "com.wssnps.permission.COM_WSSNPS"

    move-object v12, p0

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 406
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sendBroadcast. "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method


# virtual methods
.method public blacklist startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "sessionTime"    # Ljava/lang/String;
    .param p7, "saveKey"    # Ljava/lang/String;

    .line 110
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

    .line 111
    return-void
.end method

.method public blacklist startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "basePath"    # Ljava/lang/String;
    .param p5, "source"    # Ljava/lang/String;
    .param p6, "securityLevel"    # I
    .param p7, "sessionTime"    # Ljava/lang/String;
    .param p8, "saveKey"    # Ljava/lang/String;

    .line 116
    move-object/from16 v0, p4

    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBackupWallpaper which = "

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

    .line 121
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    .line 123
    const-string v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    .end local p2    # "action":Ljava/lang/String;
    .local v2, "action":Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v2    # "action":Ljava/lang/String;
    .restart local p2    # "action":Ljava/lang/String;
    :cond_0
    const-string v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    .end local p2    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v2    # "action":Ljava/lang/String;
    .restart local p2    # "action":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 129
    .end local p2    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :goto_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .end local p4    # "basePath":Ljava/lang/String;
    .local v0, "basePath":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->checkSaveAvailable(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    move-result-object v14

    .line 136
    .local v14, "errorCode":Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    sget-object v3, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-virtual {v14, v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 137
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v15, v3

    .line 138
    .local v15, "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    sget-object v12, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 139
    .local v12, "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v3, "startBackupWallpaper is return because precondition fail"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v6, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/high16 v8, 0xa00000

    const/4 v1, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v5, v2

    move-object v7, v14

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object v11, v15

    move-object/from16 v16, v12

    .end local v12    # "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .local v16, "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    move-object v12, v1

    invoke-static/range {v3 .. v12}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 144
    return-void

    .line 147
    .end local v15    # "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    .end local v16    # "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move/from16 v6, p3

    move-object v7, v0

    move/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p7

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->pushBackupFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public blacklist startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .line 105
    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public blacklist startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "basePath"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "saveKey"    # Ljava/lang/String;

    .line 172
    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    return-void
.end method

.method public blacklist startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "basePath"    # Ljava/lang/String;
    .param p5, "source"    # Ljava/lang/String;
    .param p6, "securityLevel"    # I
    .param p7, "saveKey"    # Ljava/lang/String;

    .line 176
    move-object/from16 v0, p4

    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRestoreWallpaper: which = "

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    .line 184
    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    .end local p2    # "action":Ljava/lang/String;
    .local v2, "action":Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v2    # "action":Ljava/lang/String;
    .restart local p2    # "action":Ljava/lang/String;
    :cond_0
    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    .end local p2    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v2    # "action":Ljava/lang/String;
    .restart local p2    # "action":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 190
    .end local p2    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :goto_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .end local p4    # "basePath":Ljava/lang/String;
    .local v0, "basePath":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->checkSaveAvailable(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    move-result-object v15

    .line 196
    .local v15, "errorCode":Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    sget-object v3, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-virtual {v15, v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 197
    sget-object v12, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 198
    .local v12, "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v11, v3

    .line 199
    .local v11, "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string/jumbo v3, "startRestoreWallpaper is return because precondition fail"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v6, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/high16 v8, 0xa00000

    const/4 v10, 0x0

    const/4 v1, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v5, v2

    move-object v7, v15

    move-object/from16 v9, p5

    move-object/from16 v16, v11

    .end local v11    # "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    .local v16, "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    move-object/from16 v17, v12

    .end local v12    # "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .local v17, "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    move-object v12, v1

    invoke-static/range {v3 .. v12}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->sendResponse(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 204
    return-void

    .line 207
    .end local v16    # "extraResults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;>;"
    .end local v17    # "err":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move/from16 v6, p3

    move-object v7, v0

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->pushRestoreFile(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public blacklist startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .line 168
    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    return-void
.end method
