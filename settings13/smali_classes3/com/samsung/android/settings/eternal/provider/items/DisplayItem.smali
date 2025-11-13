.class public Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;
.super Ljava/lang/Object;
.source "DisplayItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$B9TVQB2xcWc1hsBAw87qRcPNtyA(Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;Landroid/app/IActivityManager;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->lambda$setValue$0(Landroid/app/IActivityManager;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Eternal/DisplayItem"

    .line 136
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method private changeFontSize(Landroid/content/Context;II)V
    .locals 2

    .line 1313
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->getFontSizeArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1314
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->normalizeFontSize(II[Ljava/lang/String;)I

    move-result p0

    .line 1319
    invoke-static {p1, p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result p0

    .line 1321
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "font_size"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1322
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "large_font"

    .line 1323
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1324
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1326
    invoke-static {p1, p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getFontFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x1

    .line 1273
    invoke-static {p1, p0}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 1274
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "default"

    if-eqz p1, :cond_0

    .line 1275
    array-length v1, p1

    sub-int/2addr v1, p0

    if-lez v1, :cond_0

    .line 1276
    array-length v1, p1

    sub-int/2addr v1, p0

    aget-object p0, p1, v1

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 1278
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private getFontSizeArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 1268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$array;->sec_entryvalues_8_step_font_size:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFontStyleName()Ljava/lang/String;
    .locals 5

    const-string p0, "default"

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/app_fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sans.loc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1288
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1289
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1291
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1292
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 1288
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v2

    move-object v3, p0

    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, p0

    .line 1294
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-object v3, p0

    .line 1297
    :catch_3
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    const-string v0, "#"

    .line 1301
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1302
    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 1303
    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    return-object v2

    :cond_2
    const/4 p0, 0x1

    .line 1309
    aget-object p0, v0, p0

    return-object p0
.end method

.method private getMinuteToLocalTime(J)Ljava/time/LocalTime;
    .locals 0

    long-to-int p0, p1

    .line 1440
    div-int/lit8 p1, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p1, p0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method private isSameDeviceType(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "ro.build.characteristics"

    .line 1445
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string v1, "tablet"

    .line 1447
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1448
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-string v1, "phone"

    .line 1450
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "nosdcard"

    .line 1451
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1455
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device type is not same! backupDeviceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " characteristics = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Eternal/DisplayItem"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic lambda$setValue$0(Landroid/app/IActivityManager;I)V
    .locals 3

    const-string p0, "Eternal/DisplayItem"

    .line 693
    :try_start_0
    invoke-interface {p1}, Landroid/app/IActivityManager;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 694
    iput p2, v0, Landroid/content/res/Configuration;->nightDim:I

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nightDimConfigResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 698
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot update Configuration : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private normalizeFontSize(II[Ljava/lang/String;)I
    .locals 7

    .line 1233
    array-length p0, p3

    const/4 v0, 0x1

    if-lt p1, p0, :cond_0

    .line 1234
    array-length p0, p3

    add-int/lit8 p1, p0, -0x1

    :cond_0
    const/4 p0, 0x2

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/16 v5, 0x8

    if-eq p2, v1, :cond_1

    if-ne p2, v5, :cond_3

    .line 1237
    :cond_1
    array-length v6, p3

    if-ne v6, v5, :cond_3

    if-lt p1, v4, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    if-gtz p1, :cond_b

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_3
    if-ne p2, v3, :cond_6

    .line 1245
    array-length v6, p3

    if-ne v6, v5, :cond_6

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    if-lt p1, p0, :cond_b

    const/4 v0, 0x5

    goto :goto_1

    :cond_6
    if-eq p2, v1, :cond_7

    if-ne p2, v5, :cond_a

    .line 1253
    :cond_7
    array-length p2, p3

    if-ne p2, v3, :cond_a

    const/4 p2, 0x4

    if-ge p1, p2, :cond_8

    goto :goto_0

    :cond_8
    if-lt p1, p2, :cond_9

    if-ge p1, v4, :cond_9

    goto :goto_1

    :cond_9
    if-lt p1, v4, :cond_b

    move v0, p0

    goto :goto_1

    :cond_a
    if-gtz p1, :cond_b

    goto :goto_0

    :cond_b
    move v0, p1

    :goto_1
    return v0
.end method

.method private setDisplayColor(I)V
    .locals 3

    .line 1474
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "persist.sys.sf.native_mode"

    invoke-static {v0, p0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SurfaceFlinger"

    .line 1475
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 1478
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x3ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1481
    :try_start_0
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "Eternal/DisplayItem"

    const-string v1, "Failed to set display color"

    .line 1483
    invoke-static {p1, v1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1485
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1486
    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method private setFontStyle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1330
    invoke-static {p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object p0

    .line 1331
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 1332
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 1334
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    invoke-virtual {v0, p2}, Lcom/samsung/android/fontutil/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/fontutil/SemTypeface;

    move-result-object v0

    const-string v1, "Eternal/DisplayItem"

    if-nez v0, :cond_0

    const-string v2, "default"

    .line 1336
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Font style is not existed."

    .line 1337
    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, ".xml"

    .line 1342
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1345
    new-instance v3, Lcom/samsung/android/fontutil/FontWriter;

    invoke-direct {v3}, Lcom/samsung/android/fontutil/FontWriter;-><init>()V

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    if-lez v2, :cond_1

    .line 1349
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1352
    :cond_1
    invoke-virtual {v3, p2}, Lcom/samsung/android/fontutil/FontWriter;->createFontDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move v5, v4

    .line 1353
    :goto_0
    iget-object v6, v0, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 1354
    iget-object v6, v0, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/fontutil/TypefaceFile;

    .line 1356
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Lcom/samsung/android/fontutil/SemTypeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1357
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1358
    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    .line 1359
    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 1360
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fonts/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 1361
    invoke-virtual {v6}, Lcom/samsung/android/fontutil/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v7, v6}, Lcom/samsung/android/fontutil/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v5

    .line 1362
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 1364
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_4

    .line 1369
    invoke-virtual {v3, p2}, Lcom/samsung/android/fontutil/FontWriter;->deleteFontDirectory(Ljava/lang/String;)V

    .line 1370
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    .line 1373
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1376
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1377
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_3
    const-string p0, " "

    .line 1381
    invoke-virtual {v3, p0}, Lcom/samsung/android/fontutil/FontWriter;->deleteFontDirectory(Ljava/lang/String;)V

    const-string p0, "default#default"

    .line 1384
    invoke-virtual {v3, p0}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    .line 1389
    :cond_4
    :goto_2
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    .line 1390
    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 1392
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p3, Landroid/content/res/Configuration;->FlipFont:I

    .line 1393
    invoke-interface {p0, p3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string p0, "activity"

    .line 1398
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 p1, 0x32

    .line 1399
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    .line 1401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1402
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.settings"

    .line 1404
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "com.sec.android.app.SecSetupWizard"

    .line 1405
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "com.samsung.music"

    .line 1406
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "com.sec.android.app.music"

    .line 1407
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "com.infraware.polarisoffice"

    .line 1408
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "com.infraware.polarisoffice4"

    .line 1409
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "com.infraware.polarisviewer4"

    .line 1410
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "com.infraware.PolarisOfficeStdForTablet"

    .line 1411
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "com.infraware.polarisviewer5tablet"

    .line 1412
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "com.infraware.polarisoffice5tablet"

    .line 1413
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "com.infraware.polarisoffice4.document"

    .line 1414
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "com.infraware.polarisoffice5"

    .line 1415
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "com.infraware.polarisoffice5.document"

    .line 1416
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "com.infraware.polarisviewer5"

    .line 1417
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "com.infraware.polarisviewer5.document"

    .line 1418
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_6

    goto :goto_4

    .line 1421
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "com.nttdocomo.android.toruca"

    .line 1422
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_5

    .line 1423
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string p3, "com.sec.android.app.camera"

    .line 1426
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_8

    const-string p2, "com.sec.android.app.camera == 0"

    .line 1427
    invoke-static {v1, p2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1429
    :cond_8
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1419
    :cond_9
    :goto_4
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    return-void
.end method


# virtual methods
.method public followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Z
    .locals 0

    .line 530
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/Settings/Display/NavigationTypes"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 150
    new-instance v2, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 153
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v4, v7

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "/Settings/Display/RotateSuggestionEnabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "/Settings/Display/ShowBatteryPercentage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "/Settings/Display/ScreenResolution"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "/Settings/Display/BlockAccidentalTouches"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "/Settings/Display/RefreshRate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "/Settings/Display/SwitchAppsToFrontScreen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "/Settings/Display/FontStyle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "/Settings/Display/BlockGesturesWithSPen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "/Settings/Display/TouchSensetivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "/Settings/Display/NightMode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "/Settings/Display/NavigationTypes"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "/Settings/Display/ShowRecentNotificationOnly"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "/Settings/Display/ButtonLayout"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "/Settings/Display/BluelightFilter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "/Settings/Display/ScreenTimeout"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "/Settings/Display/SwitchAppsWhenHintHidden"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "/Settings/Display/FontSize"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_11
    const-string v4, "/Settings/Display/FontBold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_12
    const-string v4, "/Settings/Display/AutoBrightness"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_13
    const-string v4, "/Settings/Display/ButtonPosition"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_14
    const-string v4, "/Settings/Display/ScreenSaver"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_15
    const-string v4, "/Settings/Display/ScreenZoom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_16
    const-string v4, "/Settings/Display/ScreenMode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_17
    const-string v4, "/Settings/Display/ShowButtonToHideKeyboard"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_18
    const-string v4, "/Settings/Display/EasyModeSwitch"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_0

    :cond_18
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_19
    const-string v4, "/Settings/Display/NavigationGestureHint"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_0

    :cond_19
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1a
    const-string v4, "/Settings/Display/TaskBar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_0

    :cond_1a
    move v4, v9

    goto :goto_1

    :sswitch_1b
    const-string v4, "/Settings/Display/ShowChargingInformation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_0

    :cond_1b
    move v4, v10

    :goto_1
    const-string v11, "range"

    const-string v12, "turnOnAsScheduledEnd"

    const-string v13, "turnOnAsScheduledStart"

    const-string v14, "turnOnAsScheduled"

    const-string v15, " : Device does not support S/W navigation bar."

    const-string v8, "turnOnAsScheduledType"

    const-string v5, "Eternal/DisplayItem"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_15

    .line 422
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "navigation_bar_rotate_suggestion_enabled"

    .line 424
    invoke-static {v3, v0, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 426
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v9, :cond_1c

    goto :goto_2

    :cond_1c
    move v9, v10

    .line 427
    :goto_2
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 429
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device does not support NAVIGATION_ROTATE_SUGGESTION_ENABLED - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :pswitch_1
    const-string v0, "display_battery_percentage"

    .line 226
    invoke-static {v3, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 315
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 316
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 318
    invoke-virtual {v2, v10}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 320
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support ScreenResolution - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 234
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportPocketMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 235
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocketModeDefaultValue()I

    move-result v0

    const-string v1, "screen_off_pocket"

    .line 236
    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 237
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v1, v0, :cond_1f

    goto :goto_3

    :cond_1f
    move v9, v10

    .line 238
    :goto_3
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 240
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support AccidentalTouchProtection - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 284
    :pswitch_4
    invoke-static {v0, v10}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 285
    invoke-static {v0, v10}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateDefaultValue(Landroid/content/Context;I)I

    move-result v1

    .line 286
    invoke-static {v0, v10}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v3

    .line 287
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 289
    invoke-static {v0, v9}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 290
    invoke-static {v0, v9}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateDefaultValue(Landroid/content/Context;I)I

    move-result v4

    .line 291
    invoke-static {v0, v9}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v0

    .line 292
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "coverRefreshRateMode"

    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v1, v3, :cond_21

    if-ne v4, v0, :cond_21

    goto :goto_4

    :cond_21
    move v9, v10

    .line 293
    :goto_4
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    :cond_22
    if-ne v1, v3, :cond_23

    goto :goto_5

    :cond_23
    move v9, v10

    .line 297
    :goto_5
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 465
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 466
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFrontScreenAppsInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 468
    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    :cond_24
    const-string v0, "Nothing needs to be checked"

    .line 470
    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 473
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support dual display - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 212
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->getFontFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->getFontStyleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 372
    :pswitch_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 373
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_27

    const-string v0, "navigation_bar_block_gestures_with_spen"

    .line 375
    invoke-static {v3, v0, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_26

    goto :goto_6

    :cond_26
    move v9, v10

    .line 378
    :goto_6
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 380
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : Device does not support S pen."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 445
    :pswitch_8
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportTouchSensitivity()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 446
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getTouchSensitivityDefaultValue()I

    move-result v0

    const-string v1, "auto_adjust_touch"

    .line 447
    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 448
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v1, v0, :cond_28

    goto :goto_7

    :cond_28
    move v9, v10

    .line 449
    :goto_7
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 451
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support TouchSensitivity - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :pswitch_9
    const-string v0, "display_night_theme"

    .line 260
    invoke-static {v3, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "display_night_theme_scheduled"

    .line 261
    invoke-static {v3, v1, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v4, "display_night_theme_scheduled_type"

    .line 262
    invoke-static {v3, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "display_night_theme_wallpaper"

    .line 263
    invoke-static {v3, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "display_night_theme_on_time"

    const-wide/16 v10, 0x474

    .line 264
    invoke-static {v3, v6, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    const-string v6, "display_night_theme_off_time"

    const-wide/16 v10, 0x1a4

    .line 265
    invoke-static {v3, v6, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .line 268
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 269
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 270
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 271
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 272
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 273
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "applyToWallpaper"

    invoke-virtual {v2, v6, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_2a

    if-nez v1, :cond_2a

    if-ne v9, v4, :cond_2a

    if-ne v9, v5, :cond_2a

    const-wide/16 v0, 0x474

    cmp-long v0, v0, v16

    if-nez v0, :cond_2a

    const-wide/16 v0, 0x1a4

    cmp-long v0, v0, v18

    if-nez v0, :cond_2a

    goto :goto_8

    :cond_2a
    const/4 v9, 0x0

    .line 275
    :goto_8
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 325
    :pswitch_a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "navigation_bar_gesture_while_hidden"

    const/4 v1, 0x0

    .line 327
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "navigation_bar_gesture_detail_type"

    .line 329
    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v4

    .line 330
    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v5, "navigation_bar_back_gesture_sensitivity"

    .line 333
    invoke-static {v3, v5, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "DetailGestureType"

    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 338
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "BackGestureSensitivity"

    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_2b

    if-ne v4, v1, :cond_2b

    if-ne v9, v3, :cond_2b

    goto :goto_9

    :cond_2b
    const/4 v9, 0x0

    .line 340
    :goto_9
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 345
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 222
    :pswitch_b
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSimpleStatsuBarDefaultValue()I

    move-result v0

    const-string v1, "simple_status_bar"

    .line 221
    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 350
    :pswitch_c
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "navigationbar_key_order"

    const/4 v1, 0x0

    .line 352
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 353
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_2d

    goto :goto_a

    :cond_2d
    const/4 v9, 0x0

    .line 354
    :goto_a
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 356
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 176
    :pswitch_d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilter()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "blue_light_filter"

    const/4 v1, 0x0

    .line 177
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v0, "blue_light_filter_opacity"

    const/4 v4, 0x5

    .line 178
    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "opacity"

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v0, "blue_light_filter_scheduled"

    .line 179
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 180
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "blue_light_filter_adaptive_mode"

    .line 181
    invoke-static {v3, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "turnOnAsAdaptive"

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    :cond_2f
    const-string v0, "blue_light_filter_type"

    const/4 v1, 0x0

    .line 185
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "turnOnAsAlwaysOn"

    if-nez v4, :cond_30

    const/4 v4, 0x2

    .line 188
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 189
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    :cond_30
    const/4 v4, 0x2

    .line 191
    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    :goto_b
    const-string v0, "blue_light_filter_on_time"

    const-wide/16 v4, 0x474

    .line 195
    invoke-static {v3, v0, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v0, "blue_light_filter_off_time"

    const-wide/16 v4, 0x1a4

    .line 196
    invoke-static {v3, v0, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 197
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_46

    const-string v0, "blue_light_filter_night_dim"

    const/4 v1, 0x0

    .line 198
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eyeComfortEnhancedComfort"

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    :pswitch_e
    const-wide/16 v0, 0x7530

    const-string v4, "screen_off_timeout"

    .line 230
    invoke-static {v3, v4, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 410
    :pswitch_f
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "navigationbar_switch_apps_when_hint_hidden"

    const/4 v1, 0x0

    .line 411
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_31

    move v1, v9

    goto :goto_c

    :cond_31
    const/4 v1, 0x0

    .line 414
    :goto_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_32

    goto :goto_d

    :cond_32
    const/4 v9, 0x0

    .line 415
    :goto_d
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 417
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support NavigationSwitchAppsWhenHintHidden - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :pswitch_10
    const-string v1, "font_size"

    const/4 v4, 0x0

    .line 204
    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 205
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->getFontSizeArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 206
    array-length v1, v0

    if-lez v1, :cond_46

    .line 207
    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    :pswitch_11
    const-string v0, "bold_text"

    const/4 v1, 0x0

    .line 217
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 156
    :pswitch_12
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportLightSensor(Landroid/content/Context;)Z

    move-result v1

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1110036

    .line 158
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 159
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTO_BRIGTNESS"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 160
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    const-string v8, "MTR"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    move v0, v9

    goto :goto_f

    .line 162
    :cond_34
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isCameraSensorModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 163
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSabcAdaptiveBrightnessEnabled()Z

    move-result v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraSensorModel case = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_35
    if-eqz v1, :cond_36

    if-eqz v4, :cond_36

    move v0, v9

    goto :goto_e

    :cond_36
    const/4 v0, 0x0

    .line 167
    :goto_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportLightSensor = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , config = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_37
    const/4 v0, 0x0

    :goto_f
    const-string v1, "screen_brightness_mode"

    const/4 v4, 0x0

    .line 170
    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 171
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v1, :cond_38

    goto :goto_10

    :cond_38
    const/4 v9, 0x0

    .line 172
    :goto_10
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 397
    :pswitch_13
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 398
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 399
    :cond_39
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "navigationbar_key_position"

    .line 400
    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v1

    .line 401
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v1, v0, :cond_3a

    goto :goto_11

    :cond_3a
    const/4 v9, 0x0

    .line 403
    :goto_11
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 405
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support NavigationButtonPosition - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 434
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110128

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110125

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 436
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 437
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v1, v0, :cond_3c

    goto :goto_12

    :cond_3c
    const/4 v9, 0x0

    .line 438
    :goto_12
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 440
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support ScreenSaver - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 245
    :pswitch_15
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenZoomInfo(Landroid/content/Context;)[I

    move-result-object v0

    if-eqz v0, :cond_46

    .line 247
    aget v1, v0, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const/4 v1, 0x0

    .line 248
    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 302
    :pswitch_16
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "screen_mode_setting"

    const/4 v1, 0x4

    .line 303
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v0, "screen_mode_automatic_setting"

    .line 304
    invoke-static {v3, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screenModeType"

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v0, "sec_display_preset_index"

    const/4 v1, 0x2

    .line 305
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "whiteBalance"

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v0, "sec_display_temperature_red"

    const/4 v1, 0x0

    .line 306
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "red"

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v0, "sec_display_temperature_green"

    .line 307
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "green"

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v0, "sec_display_temperature_blue"

    .line 308
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blue"

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 310
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support ScreenMode - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 385
    :pswitch_17
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "navigation_bar_button_to_hide_keyboard"

    .line 387
    invoke-static {v3, v0, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v9, v0, :cond_3f

    goto :goto_13

    :cond_3f
    const/4 v9, 0x0

    .line 390
    :goto_13
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 392
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support NAVIGATION_SHOW_BUTTON_TO_HIDE_KEYBOARD - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 478
    :pswitch_18
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "easy_mode_switch"

    .line 480
    invoke-static {v3, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 482
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const/4 v0, 0x0

    .line 483
    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_15

    .line 485
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support EasyModeSwitch - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 361
    :pswitch_19
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "navigation_bar_gesture_hint"

    .line 363
    invoke-static {v3, v0, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 364
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v9, v0, :cond_42

    goto :goto_14

    :cond_42
    const/4 v9, 0x0

    .line 365
    :goto_14
    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_15

    .line 367
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 490
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "task_bar"

    .line 492
    invoke-static {v3, v0, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const/4 v0, 0x0

    .line 495
    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_15

    .line 497
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support TaskBar - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 456
    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getChargingInfoAlways(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_45

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_15

    .line 460
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device not support ChargingInformation - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_15
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x7fd88b6c -> :sswitch_1b
        -0x665cfedc -> :sswitch_1a
        -0x651124ee -> :sswitch_19
        -0x61dd5d3d -> :sswitch_18
        -0x5d915e43 -> :sswitch_17
        -0x54a3bc67 -> :sswitch_16
        -0x549dd237 -> :sswitch_15
        -0x3f855ca1 -> :sswitch_14
        -0x3f42071b -> :sswitch_13
        -0x3dd00236 -> :sswitch_12
        -0x370546a2 -> :sswitch_11
        -0x36fda126 -> :sswitch_10
        -0x3591f2c5 -> :sswitch_f
        -0x31928855 -> :sswitch_e
        -0x2f3d2196 -> :sswitch_d
        -0x206ce61a -> :sswitch_c
        -0x2308987 -> :sswitch_b
        -0xf9ce65 -> :sswitch_a
        0x5244531 -> :sswitch_9
        0xd9c80c6 -> :sswitch_8
        0x4a6994f9 -> :sswitch_7
        0x574e79f8 -> :sswitch_6
        0x5a960d2a -> :sswitch_5
        0x710bf031 -> :sswitch_4
        0x7268dfb0 -> :sswitch_3
        0x765cb222 -> :sswitch_2
        0x7aa4dd60 -> :sswitch_1
        0x7cb7a158 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 544
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez p4, :cond_0

    move-object v7, v6

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/lib/episode/SourceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    .line 546
    :goto_0
    new-instance v8, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v8, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    .line 547
    sget-object v9, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v9}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    .line 549
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v11, 0x2

    const/4 v14, 0x0

    sparse-switch v9, :sswitch_data_0

    :goto_1
    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v9, "/Settings/Display/RotateSuggestionEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x1b

    goto/16 :goto_2

    :sswitch_1
    const-string v9, "/Settings/Display/ShowBatteryPercentage"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x1a

    goto/16 :goto_2

    :sswitch_2
    const-string v9, "/Settings/Display/ScreenResolution"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x19

    goto/16 :goto_2

    :sswitch_3
    const-string v9, "/Settings/Display/BlockAccidentalTouches"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v2, 0x18

    goto/16 :goto_2

    :sswitch_4
    const-string v9, "/Settings/Display/RefreshRate"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v2, 0x17

    goto/16 :goto_2

    :sswitch_5
    const-string v9, "/Settings/Display/SwitchAppsToFrontScreen"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/16 v2, 0x16

    goto/16 :goto_2

    :sswitch_6
    const-string v9, "/Settings/Display/FontStyle"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/16 v2, 0x15

    goto/16 :goto_2

    :sswitch_7
    const-string v9, "/Settings/Display/BlockGesturesWithSPen"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/16 v2, 0x14

    goto/16 :goto_2

    :sswitch_8
    const-string v9, "/Settings/Display/TouchSensetivity"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/16 v2, 0x13

    goto/16 :goto_2

    :sswitch_9
    const-string v9, "/Settings/Display/NightMode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x12

    goto/16 :goto_2

    :sswitch_a
    const-string v9, "/Settings/Display/NavigationTypes"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x11

    goto/16 :goto_2

    :sswitch_b
    const-string v9, "/Settings/Display/ShowRecentNotificationOnly"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x10

    goto/16 :goto_2

    :sswitch_c
    const-string v9, "/Settings/Display/ButtonLayout"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_d
    const-string v9, "/Settings/Display/BluelightFilter"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_e
    const-string v9, "/Settings/Display/ScreenTimeout"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v2, 0xd

    goto/16 :goto_2

    :sswitch_f
    const-string v9, "/Settings/Display/SwitchAppsWhenHintHidden"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v2, 0xc

    goto/16 :goto_2

    :sswitch_10
    const-string v9, "/Settings/Display/FontSize"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v2, 0xb

    goto/16 :goto_2

    :sswitch_11
    const-string v9, "/Settings/Display/FontBold"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_12
    const-string v9, "/Settings/Display/AutoBrightness"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_13
    const-string v9, "/Settings/Display/ButtonPosition"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v2, 0x8

    goto/16 :goto_2

    :sswitch_14
    const-string v9, "/Settings/Display/ScreenSaver"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_1

    :cond_15
    const/4 v2, 0x7

    goto :goto_2

    :sswitch_15
    const-string v9, "/Settings/Display/ScreenZoom"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_1

    :cond_16
    const/4 v2, 0x6

    goto :goto_2

    :sswitch_16
    const-string v9, "/Settings/Display/ScreenMode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_1

    :cond_17
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_17
    const-string v9, "/Settings/Display/ShowButtonToHideKeyboard"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_1

    :cond_18
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_18
    const-string v9, "/Settings/Display/EasyModeSwitch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_1

    :cond_19
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_19
    const-string v9, "/Settings/Display/NavigationGestureHint"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_1

    :cond_1a
    move v2, v11

    goto :goto_2

    :sswitch_1a
    const-string v9, "/Settings/Display/TaskBar"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_1b
    const-string v9, "/Settings/Display/ShowChargingInformation"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_1

    :cond_1c
    move v2, v14

    :goto_2
    const-string v9, "turnOnAsScheduledStart"

    const-string v12, "turnOnAsScheduledType"

    const-string v13, "turnOnAsScheduled"

    const-string v15, "range"

    const-string v10, "Eternal/DisplayItem"

    packed-switch v2, :pswitch_data_0

    :cond_1d
    :goto_3
    move-object v2, v8

    goto/16 :goto_1f

    .line 1096
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1097
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "navigation_bar_rotate_suggestion_enabled"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 1099
    :cond_1e
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1100
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_3

    .line 746
    :pswitch_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "display_battery_percentage"

    .line 745
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 1024
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->isSameDeviceType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1026
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->TEMPORARY_BLOCK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1027
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_3

    .line 1029
    :cond_1f
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1030
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_3

    .line 755
    :pswitch_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "screen_off_pocket"

    invoke-static {v4, v2, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_3

    .line 828
    :pswitch_4
    invoke-static {v1, v14}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 830
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, v14}, Lcom/samsung/android/settings/display/SecDisplayUtils;->convertHighRefreshRateValue(Landroid/content/Context;II)I

    move-result v0

    if-eq v0, v11, :cond_20

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 832
    :cond_20
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v0, "refresh_rate_mode"

    .line 833
    invoke-static {v4, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_21
    const-string v2, "refresh_rate_mode"

    .line 835
    invoke-static {v4, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    const/4 v0, 0x1

    .line 839
    invoke-static {v1, v0}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "coverRefreshRateMode"

    .line 840
    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 841
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 843
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->convertHighRefreshRateValue(Landroid/content/Context;II)I

    move-result v2

    if-eq v2, v11, :cond_22

    if-ne v2, v0, :cond_23

    .line 845
    :cond_22
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "refresh_rate_mode_cover"

    .line 846
    invoke-static {v4, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_23
    const-string v0, "refresh_rate_mode_cover"

    .line 848
    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 853
    :cond_24
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 854
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_3

    .line 1170
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1171
    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setFrontScreenAppsInfo(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1173
    :cond_25
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1174
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_3

    .line 720
    :pswitch_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 721
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->getFontFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v0, "setValue : skip restore : KEY_DISPLAY_FONT_STYLE"

    .line 722
    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_26
    const-string v2, "name"

    .line 725
    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->setFontStyle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 727
    :cond_27
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 728
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_3

    .line 1077
    :pswitch_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1078
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_28

    .line 1079
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "navigation_bar_block_gestures_with_spen"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1081
    :cond_28
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1082
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_3

    .line 1151
    :pswitch_8
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportTouchSensitivity()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "auto_adjust_touch"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1154
    :cond_29
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1155
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_3

    .line 773
    :pswitch_9
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 774
    invoke-virtual {v3, v12}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 775
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "turnOnAsScheduledEnd"

    .line 776
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "applyToWallpaper"

    .line 777
    invoke-virtual {v3, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "uimode"

    .line 779
    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 782
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2a

    .line 783
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v10, "display_night_theme_scheduled"

    .line 784
    invoke-static {v4, v10, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eq v2, v10, :cond_2b

    const-string v10, "display_night_theme_scheduled"

    .line 787
    invoke-static {v4, v10, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_2a
    move v2, v14

    .line 792
    :cond_2b
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2c

    .line 793
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v10, "display_night_theme_scheduled_type"

    .line 794
    invoke-static {v4, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_2c
    const/4 v6, 0x1

    .line 797
    :goto_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 798
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-string v7, "display_night_theme_on_time"

    .line 799
    invoke-static {v4, v7, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-wide/16 v15, 0x0

    cmp-long v7, v12, v15

    if-ltz v7, :cond_2d

    const-wide/16 v15, 0x5a0

    cmp-long v7, v12, v15

    if-gez v7, :cond_2d

    .line 801
    invoke-direct {v0, v12, v13}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->getMinuteToLocalTime(J)Ljava/time/LocalTime;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/UiModeManager;->setCustomNightModeStart(Ljava/time/LocalTime;)V

    .line 805
    :cond_2d
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 806
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v7, "display_night_theme_off_time"

    .line 807
    invoke-static {v4, v7, v9, v10}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-wide/16 v12, 0x0

    cmp-long v7, v9, v12

    if-ltz v7, :cond_2e

    const-wide/16 v12, 0x5a0

    cmp-long v7, v9, v12

    if-gez v7, :cond_2e

    .line 809
    invoke-direct {v0, v9, v10}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->getMinuteToLocalTime(J)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/UiModeManager;->setCustomNightModeEnd(Ljava/time/LocalTime;)V

    .line 813
    :cond_2e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 814
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "display_night_theme_wallpaper"

    invoke-static {v4, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 817
    :cond_2f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "display_night_theme"

    invoke-static {v4, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    if-ne v2, v0, :cond_31

    if-ne v6, v0, :cond_30

    goto :goto_8

    :cond_30
    const/4 v14, 0x3

    goto :goto_8

    .line 822
    :cond_31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_32

    goto :goto_7

    :cond_32
    const/4 v11, 0x1

    :goto_7
    move v14, v11

    .line 824
    :goto_8
    invoke-virtual {v1, v14}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto/16 :goto_3

    .line 1035
    :pswitch_a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1036
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_33

    move v0, v14

    :cond_33
    const-string v2, "navigation_bar_gesture_while_hidden"

    .line 1040
    invoke-static {v4, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "DetailGestureType"

    .line 1041
    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "BackGestureSensitivity"

    .line 1042
    invoke-virtual {v3, v5}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1044
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 1045
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "navigation_bar_gesture_detail_type"

    invoke-static {v4, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    .line 1046
    :cond_34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    const-string v0, "gestureDetailType is empty."

    .line 1049
    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "navigation_bar_gesture_detail_type"

    .line 1050
    invoke-static {v4, v0, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1053
    :cond_35
    :goto_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1054
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "navigation_bar_back_gesture_sensitivity"

    invoke-static {v4, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_36
    const-string v0, "device_provisioned"

    .line 1057
    invoke-static {v4, v0, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_37

    .line 1058
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    .line 1059
    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    goto/16 :goto_3

    :cond_37
    const-string v0, "Skipped resource overlay - Device is not provisioned."

    .line 1061
    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1064
    :cond_38
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1065
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_3

    .line 741
    :pswitch_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "simple_status_bar"

    .line 740
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1070
    :pswitch_c
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1072
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "navigationbar_key_order"

    .line 1071
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 562
    :pswitch_d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilter()Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "opacity"

    .line 563
    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-virtual {v3, v12}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 566
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "turnOnAsScheduledEnd"

    .line 567
    invoke-virtual {v3, v12}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "turnOnAsAlwaysOn"

    .line 568
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "eyeComfortEnhancedComfort"

    .line 569
    invoke-virtual {v3, v15}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 571
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_39

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_a

    :cond_39
    const/4 v7, -0x1

    .line 574
    :goto_a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v16

    const-string v11, "blue_light_filter_scheduled"

    const-string v14, "blue_light_filter_type"

    if-eqz v16, :cond_3f

    move-object/from16 v17, v8

    const-string v8, "turnOnAsAdaptive"

    .line 575
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v0, "blue_light_filter_adaptive_mode"

    if-nez v8, :cond_3a

    .line 578
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 577
    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_c

    :cond_3a
    if-ltz v7, :cond_3d

    if-nez v7, :cond_3b

    .line 581
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3b

    const/4 v3, 0x0

    .line 583
    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    invoke-static {v4, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 585
    invoke-static {v4, v14, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    goto :goto_d

    :cond_3b
    if-nez v7, :cond_3c

    const/4 v3, 0x1

    goto :goto_b

    :cond_3c
    const/4 v3, 0x0

    .line 587
    :goto_b
    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3d
    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-ltz v7, :cond_3e

    if-nez v0, :cond_3e

    const/4 v3, 0x0

    .line 594
    invoke-static {v4, v11, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v7, v8, :cond_3e

    .line 596
    invoke-static {v4, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3e
    move v8, v0

    const/4 v0, 0x1

    const/4 v3, 0x0

    goto :goto_e

    :cond_3f
    move-object/from16 v17, v8

    const/4 v0, 0x1

    .line 601
    invoke-static {v4, v11, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v7, :cond_40

    .line 602
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_40

    const/4 v3, 0x0

    .line 604
    invoke-static {v4, v14, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v8, v0

    goto :goto_e

    :cond_40
    const/4 v3, 0x0

    move v8, v3

    .line 608
    :goto_e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_42

    .line 609
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v0, :cond_41

    .line 611
    invoke-static {v4, v14, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f

    .line 613
    :cond_41
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 615
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 614
    invoke-static {v4, v14, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f

    .line 619
    :cond_42
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    if-nez v8, :cond_43

    .line 621
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 620
    invoke-static {v4, v14, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 625
    :cond_43
    :goto_f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 627
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "blue_light_filter_opacity"

    .line 626
    invoke-static {v4, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    :cond_44
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 632
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "blue_light_filter_on_time"

    .line 631
    invoke-static {v4, v0, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 635
    :cond_45
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 637
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "blue_light_filter_off_time"

    .line 636
    invoke-static {v4, v0, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 640
    :cond_46
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/lib/episode/SourceInfo;->getManufacturer()I

    move-result v0

    const-string v2, "blue_light_filter"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_48

    .line 641
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_47

    const/4 v8, 0x2

    if-eq v0, v8, :cond_47

    const/4 v0, 0x0

    .line 652
    invoke-static {v4, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    .line 649
    :cond_47
    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    .line 656
    :cond_48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 655
    invoke-static {v4, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 659
    :goto_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 660
    new-instance v3, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.bluelightfilter"

    const-string v9, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4c

    .line 663
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_4a

    .line 664
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_49

    const/16 v5, 0x18

    .line 665
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_11

    :cond_49
    const/16 v5, 0x19

    .line 667
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_11

    .line 669
    :cond_4a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_4b

    .line 670
    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_11

    .line 671
    :cond_4b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4e

    .line 672
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_11

    .line 675
    :cond_4c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_4d

    const/16 v5, 0x18

    .line 676
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_11

    :cond_4d
    const/16 v5, 0x19

    .line 678
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    :cond_4e
    :goto_11
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz v15, :cond_4f

    .line 683
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4f

    .line 684
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "blue_light_filter_night_dim"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    .line 685
    invoke-static {v4, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 686
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 690
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 691
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;

    move-object/from16 v6, p0

    invoke-direct {v3, v6, v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;Landroid/app/IActivityManager;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4f
    move-object/from16 v2, v17

    goto/16 :goto_1f

    :cond_50
    move-object/from16 v17, v8

    .line 704
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    move-object/from16 v2, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 705
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    :pswitch_e
    move-object v2, v8

    .line 751
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v3, "screen_off_timeout"

    .line 750
    invoke-static {v4, v3, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_1f

    :pswitch_f
    move-object v2, v8

    .line 1129
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1130
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "navigationbar_switch_apps_when_hint_hidden"

    .line 1131
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1f

    .line 1134
    :cond_51
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1135
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    :pswitch_10
    move-object v6, v0

    move-object v2, v8

    .line 710
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v7, -0x1

    .line 712
    invoke-virtual {v3, v15, v7}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_52

    move v10, v3

    goto :goto_12

    :cond_52
    const/16 v10, 0x8

    .line 716
    :goto_12
    invoke-direct {v6, v1, v0, v10}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->changeFontSize(Landroid/content/Context;II)V

    goto/16 :goto_1f

    :pswitch_11
    move-object v2, v8

    .line 733
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_53

    const/16 v14, 0x12c

    goto :goto_13

    :cond_53
    const/4 v14, 0x0

    :goto_13
    const-string v3, "bold_text"

    .line 735
    invoke-static {v4, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 736
    invoke-static {v1, v14}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    goto/16 :goto_1f

    :pswitch_12
    move-object v2, v8

    .line 551
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 553
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "screen_brightness_mode"

    .line 552
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1f

    .line 555
    :cond_54
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 556
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    const-string v0, "setValue : Not support light sensor"

    .line 557
    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :pswitch_13
    move-object v2, v8

    .line 1118
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1119
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1120
    :cond_55
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1121
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "navigationbar_key_position"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1f

    .line 1123
    :cond_56
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1124
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    :pswitch_14
    move-object v2, v8

    .line 1140
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1142
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->TEMPORARY_BLOCK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1143
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    .line 1145
    :cond_57
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1146
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    :pswitch_15
    move-object v6, v0

    move-object v2, v8

    .line 759
    invoke-direct {v6, v7}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->isSameDeviceType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_14

    :cond_58
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 767
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v0, v5

    const/4 v4, 0x0

    .line 768
    invoke-virtual {v3, v15, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v4

    .line 769
    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setScreenZoomInfo(Landroid/content/Context;[I)V

    goto/16 :goto_1f

    .line 760
    :cond_59
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device type is different or currently in DEX mode, Skip KEY_DISPLAY_SCREEN_ZOOM, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 760
    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->DEVICE_TYPE_MISMATCH:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 763
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    :pswitch_16
    move-object v6, v0

    move-object v2, v8

    const/4 v7, -0x1

    .line 859
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenMode()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 860
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v8, "SEC_FLOATING_FEATURE_LCD_CONFIG_DEFAULT_SCREEN_MODE"

    invoke-virtual {v0, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v8, "screenModeType"

    .line 862
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "whiteBalance"

    .line 863
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "red"

    .line 864
    invoke-virtual {v3, v11}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "green"

    .line 865
    invoke-virtual {v3, v12}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "blue"

    .line 866
    invoke-virtual {v3, v13}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 873
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_65

    .line 874
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 875
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Screen Mode backup value: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_61

    .line 877
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAmoledDisplay()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 878
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v7

    if-eqz v7, :cond_5a

    const/4 v7, 0x4

    if-eq v5, v7, :cond_64

    const/4 v13, 0x3

    if-eq v5, v13, :cond_64

    goto/16 :goto_15

    :cond_5a
    const/4 v7, 0x4

    .line 884
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v13

    if-eqz v13, :cond_5b

    if-eq v5, v7, :cond_64

    const/4 v13, 0x2

    if-eq v5, v13, :cond_64

    goto/16 :goto_15

    .line 890
    :cond_5b
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilter()Z

    move-result v13

    if-eqz v13, :cond_5e

    const/4 v13, 0x3

    if-ne v5, v13, :cond_5c

    const/4 v5, 0x2

    :cond_5c
    if-eq v5, v7, :cond_5d

    if-eqz v5, :cond_5d

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-eq v5, v13, :cond_64

    if-eq v5, v14, :cond_64

    goto :goto_15

    :cond_5d
    const/4 v13, 0x1

    const/4 v14, 0x2

    goto :goto_16

    :cond_5e
    const/4 v13, 0x1

    const/4 v14, 0x2

    if-eq v5, v7, :cond_64

    if-eqz v5, :cond_64

    if-eq v5, v13, :cond_64

    if-eq v5, v14, :cond_64

    const/4 v7, 0x5

    if-eq v5, v7, :cond_64

    goto :goto_15

    .line 912
    :cond_5f
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v7

    if-eqz v7, :cond_60

    const/4 v7, 0x4

    if-eq v5, v7, :cond_64

    const/4 v13, 0x3

    if-eq v5, v13, :cond_64

    goto :goto_15

    :cond_60
    const/4 v7, 0x4

    .line 918
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v13

    if-eqz v13, :cond_64

    if-eq v5, v7, :cond_64

    const/4 v13, 0x2

    if-eq v5, v13, :cond_64

    goto :goto_15

    :cond_61
    const/4 v7, 0x4

    .line 927
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v13

    if-eqz v13, :cond_62

    if-eq v5, v7, :cond_64

    const/4 v13, 0x3

    if-eq v5, v13, :cond_64

    goto :goto_15

    .line 933
    :cond_62
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v13

    if-eqz v13, :cond_63

    if-eq v5, v7, :cond_64

    const/4 v13, 0x2

    if-eq v5, v13, :cond_64

    goto :goto_15

    :cond_63
    const/4 v13, 0x2

    if-eq v5, v7, :cond_64

    if-eqz v5, :cond_64

    const/4 v7, 0x1

    if-eq v5, v7, :cond_64

    if-eq v5, v13, :cond_64

    :goto_15
    move v15, v0

    goto :goto_17

    :cond_64
    :goto_16
    move v15, v5

    .line 948
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen Mode restore Value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_65
    move v15, v7

    :goto_18
    if-ltz v15, :cond_72

    .line 952
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 953
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v5, "screen_mode_automatic_setting"

    .line 954
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_66
    const/4 v0, 0x4

    if-ne v15, v0, :cond_67

    const-string v0, "screen_mode_automatic_setting"

    const/4 v5, 0x1

    .line 957
    invoke-static {v4, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_67
    const-string v0, "screen_mode_setting"

    .line 959
    invoke-static {v4, v0, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 961
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 962
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Screen Mode white balance restore value: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "sec_display_preset_index"

    const/4 v7, 0x0

    .line 964
    invoke-static {v4, v5, v0, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 968
    :cond_68
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v5, 0x64

    if-nez v0, :cond_69

    .line 969
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_19

    :cond_69
    move v0, v5

    .line 972
    :goto_19
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 973
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1a

    :cond_6a
    move v7, v5

    .line 976
    :goto_1a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6b

    .line 977
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1b

    :cond_6b
    move v3, v5

    :goto_1b
    if-eq v0, v5, :cond_6d

    if-eq v7, v5, :cond_6d

    if-ne v3, v5, :cond_6c

    goto :goto_1c

    .line 983
    :cond_6c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen Mode display temperature red: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen Mode display temperature green: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen Mode display temperature blue: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "sec_display_temperature_custom"

    const/4 v8, 0x1

    .line 986
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "sec_display_temperature_red"

    .line 987
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "sec_display_temperature_green"

    .line 988
    invoke-static {v4, v0, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "sec_display_temperature_blue"

    .line 989
    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v3, 0x0

    goto :goto_1d

    :cond_6d
    :goto_1c
    const-string v0, "sec_display_temperature_custom"

    const/4 v3, 0x0

    .line 981
    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1d
    const-string v0, "mDNIe"

    .line 991
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_7e

    const/4 v1, 0x3

    if-ne v15, v1, :cond_6f

    .line 994
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 995
    invoke-direct {v6, v3}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->setDisplayColor(I)V

    .line 996
    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto/16 :goto_1f

    :cond_6e
    const/4 v1, 0x1

    .line 998
    invoke-direct {v6, v1}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->setDisplayColor(I)V

    .line 999
    invoke-virtual {v0, v15}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto/16 :goto_1f

    .line 1001
    :cond_6f
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v1

    if-eqz v1, :cond_71

    const/4 v1, 0x2

    if-ne v15, v1, :cond_70

    .line 1003
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto/16 :goto_1f

    .line 1005
    :cond_70
    invoke-virtual {v0, v15}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto/16 :goto_1f

    .line 1008
    :cond_71
    invoke-virtual {v0, v15}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto/16 :goto_1f

    :cond_72
    const-string v0, "Screen Mode wrong restore value"

    .line 1012
    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1014
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    :cond_73
    const-string v0, "Screen Mode don\'t support restore"

    .line 1017
    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1019
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    :pswitch_17
    move-object v2, v8

    .line 1087
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1088
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1f

    .line 1090
    :cond_74
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1091
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    :pswitch_18
    move-object v2, v8

    .line 1179
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1180
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "easy_mode_switch"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1f

    .line 1182
    :cond_75
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1183
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    :pswitch_19
    move-object v2, v8

    .line 1105
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "navigation_bar_gesture_hint"

    invoke-static {v4, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "device_provisioned"

    const/4 v3, 0x0

    .line 1107
    invoke-static {v4, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7e

    .line 1108
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    .line 1109
    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    goto/16 :goto_1f

    .line 1112
    :cond_76
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1113
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    :pswitch_1a
    move-object v2, v8

    const-string v0, "In TaskBar Restore Case"

    .line 1188
    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v0, "Device not support TaskBar"

    .line 1192
    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1194
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1f

    .line 1197
    :cond_77
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_78

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageManager - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1201
    :cond_78
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1202
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 1204
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.google.android.setupwizard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 1205
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1207
    :cond_79
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "settings_task_bar_enabled"

    .line 1206
    invoke-static {v4, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently In Setup-Wizard with defaultHomeActivity - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1212
    :cond_7a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7c

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7b

    goto :goto_1e

    :cond_7b
    const-string v0, "task_bar"

    .line 1218
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "TaskBar set to Default ON"

    .line 1220
    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1214
    :cond_7c
    :goto_1e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "task_bar"

    .line 1213
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskBar Supported in prev device -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :pswitch_1b
    move-object v2, v8

    .line 1160
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getChargingInfoAlways(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_7d

    .line 1161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1162
    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setChargingInfoAlways(Landroid/content/Context;I)V

    goto :goto_1f

    .line 1164
    :cond_7d
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 1165
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    .line 1228
    :cond_7e
    :goto_1f
    invoke-virtual {v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7fd88b6c -> :sswitch_1b
        -0x665cfedc -> :sswitch_1a
        -0x651124ee -> :sswitch_19
        -0x61dd5d3d -> :sswitch_18
        -0x5d915e43 -> :sswitch_17
        -0x54a3bc67 -> :sswitch_16
        -0x549dd237 -> :sswitch_15
        -0x3f855ca1 -> :sswitch_14
        -0x3f42071b -> :sswitch_13
        -0x3dd00236 -> :sswitch_12
        -0x370546a2 -> :sswitch_11
        -0x36fda126 -> :sswitch_10
        -0x3591f2c5 -> :sswitch_f
        -0x31928855 -> :sswitch_e
        -0x2f3d2196 -> :sswitch_d
        -0x206ce61a -> :sswitch_c
        -0x2308987 -> :sswitch_b
        -0xf9ce65 -> :sswitch_a
        0x5244531 -> :sswitch_9
        0xd9c80c6 -> :sswitch_8
        0x4a6994f9 -> :sswitch_7
        0x574e79f8 -> :sswitch_6
        0x5a960d2a -> :sswitch_5
        0x710bf031 -> :sswitch_4
        0x7268dfb0 -> :sswitch_3
        0x765cb222 -> :sswitch_2
        0x7aa4dd60 -> :sswitch_1
        0x7cb7a158 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
