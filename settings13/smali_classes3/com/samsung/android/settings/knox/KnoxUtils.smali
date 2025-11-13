.class public final Lcom/samsung/android/settings/knox/KnoxUtils;
.super Ljava/lang/Object;
.source "KnoxUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;,
        Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;
    }
.end annotation


# static fields
.field private static appRestrictionState:Z

.field private static lockscreenAttrs:[I

.field public static mDeviceType:Ljava/lang/String;

.field private static mHasChooseLockResult:Z

.field private static mSemSensorAreaHeight:Ljava/lang/String;

.field private static mSemSensorImageSize:Ljava/lang/String;

.field private static mSemSensorMarginBottom:Ljava/lang/String;

.field private static sfTotalBytes:J


# direct methods
.method public static synthetic $r8$lambda$EUi-bhR4T3qo9ao2mYstdFqxmOc(Landroid/content/Context;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->lambda$showPolicyDialog$2(Landroid/content/Context;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZBKulimDkRY6AlhTxsJi5KNWpGo(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->lambda$showPolicyDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$llpXZv7ITaLdd8HCOD4xEzm15Fc(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->lambda$showPolicyDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.build.characteristics"

    .line 124
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/samsung/android/settings/knox/KnoxUtils;->appRestrictionState:Z

    const-wide/16 v1, 0x0

    .line 141
    sput-wide v1, Lcom/samsung/android/settings/knox/KnoxUtils;->sfTotalBytes:J

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 159
    sget v2, Lcom/android/settings/R$attr;->lockscreen_dialog:I

    aput v2, v1, v0

    sput-object v1, Lcom/samsung/android/settings/knox/KnoxUtils;->lockscreenAttrs:[I

    const-string v1, "4"

    .line 169
    sput-object v1, Lcom/samsung/android/settings/knox/KnoxUtils;->mSemSensorAreaHeight:Ljava/lang/String;

    const-string v1, "13.77"

    .line 170
    sput-object v1, Lcom/samsung/android/settings/knox/KnoxUtils;->mSemSensorMarginBottom:Ljava/lang/String;

    const-string v1, "10.80"

    .line 171
    sput-object v1, Lcom/samsung/android/settings/knox/KnoxUtils;->mSemSensorImageSize:Ljava/lang/String;

    .line 173
    sput-boolean v0, Lcom/samsung/android/settings/knox/KnoxUtils;->mHasChooseLockResult:Z

    return-void
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/AppItem;",
            ">;",
            "Landroid/app/usage/NetworkStats$Bucket;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/AppItem;",
            ">;J)J"
        }
    .end annotation

    .line 1466
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v0

    .line 1467
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    if-nez v1, :cond_0

    .line 1469
    new-instance v1, Lcom/android/settingslib/AppItem;

    invoke-direct {v1, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 1470
    iput p3, v1, Lcom/android/settingslib/AppItem;->category:I

    .line 1471
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1472
    iget p0, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1474
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 1475
    iget-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr p3, v2

    add-long/2addr p0, p3

    iput-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    .line 1476
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1477
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 1478
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-ne p0, p1, :cond_1

    .line 1479
    sget-wide p0, Lcom/samsung/android/settings/knox/KnoxUtils;->sfTotalBytes:J

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr p3, v2

    add-long/2addr p0, p3

    sput-wide p0, Lcom/samsung/android/settings/knox/KnoxUtils;->sfTotalBytes:J

    .line 1482
    :cond_1
    iget-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p5, p6, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static declared-synchronized bindStats(Landroid/content/Context;Landroid/app/usage/NetworkStats;)J
    .locals 11

    const-class v0, Lcom/samsung/android/settings/knox/KnoxUtils;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 1406
    :try_start_0
    sput-wide v1, Lcom/samsung/android/settings/knox/KnoxUtils;->sfTotalBytes:J

    if-nez p1, :cond_0

    const-string p0, "KnoxUtils"

    const-string p1, "No network stats data. App list cleared."

    .line 1408
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    monitor-exit v0

    return-wide v1

    .line 1412
    :cond_0
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1416
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1417
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    .line 1418
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1420
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x1

    :try_start_2
    const-string v4, "com.att.iqi"

    const/4 v5, 0x0

    .line 1423
    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move p0, v3

    .line 1429
    :try_start_3
    new-instance v10, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v10}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    :goto_0
    move-wide v6, v1

    .line 1430
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v10}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1432
    invoke-virtual {v10}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v1

    .line 1435
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, p0, :cond_2

    goto :goto_1

    .line 1443
    :cond_2
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1444
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1445
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, -0x4

    if-eq v1, v2, :cond_1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb54

    if-lt v1, v2, :cond_3

    const/16 v2, 0xbb7

    if-le v1, v2, :cond_1

    :cond_3
    const/16 v2, 0x1388

    if-lt v1, v2, :cond_4

    const/16 v2, 0x176f

    if-gt v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    move-object v2, v9

    move-object v3, v10

    move-object v5, v8

    .line 1455
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v1

    goto :goto_0

    .line 1460
    :cond_5
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    .line 1461
    sget-wide p0, Lcom/samsung/android/settings/knox/KnoxUtils;->sfTotalBytes:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static bytesToChars([B)[C
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 521
    :cond_0
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 522
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 523
    aget-byte v2, p0, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static checkKnoxCustomSettingsHiddenItem(I)Z
    .locals 2

    .line 904
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1144
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 1145
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1148
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1151
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1152
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    const/4 v2, 0x1

    if-gtz v0, :cond_3

    move v0, v2

    :cond_3
    if-gtz v1, :cond_4

    move v1, v2

    .line 1155
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1154
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1157
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1158
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1159
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getActivityScreenHeight(Landroid/content/Context;)I
    .locals 2

    .line 1270
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 1271
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1272
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1273
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getActivityScreenWidth(Landroid/content/Context;)I
    .locals 2

    .line 1263
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 1264
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1265
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1266
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private static getAdminUid(Landroid/content/Context;I)I
    .locals 2

    .line 254
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error fetching admin uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KnoxUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static getAfwManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 6

    .line 842
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 844
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 846
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 847
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 850
    :cond_0
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 851
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 853
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppicationRestrictionsManager(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    .locals 0

    if-eqz p0, :cond_0

    .line 220
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApplicationRestrictions(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    .line 1363
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getAppicationRestrictionsManager(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "com.android.settings"

    .line 1365
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1366
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1371
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method private static getBitmapWallpaper(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "KnoxUtils"

    const-string v1, "getBitmapWallpaper"

    .line 1629
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wallpaper"

    .line 1631
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1632
    invoke-virtual {p0, v0, v1}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    .line 1633
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 1635
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCipher(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 585
    invoke-static {}, Lcom/samsung/android/knox/dar/StreamCipher;->getInstance()Lcom/samsung/android/knox/dar/StreamCipher;

    move-result-object v0

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p0

    .line 585
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/knox/dar/StreamCipher;->getCipher([BJ)[B

    move-result-object p0

    .line 588
    invoke-static {p0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 587
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 602
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 591
    :cond_2
    invoke-static {}, Lcom/samsung/android/knox/dar/StreamCipher;->getInstance()Lcom/samsung/android/knox/dar/StreamCipher;

    move-result-object v0

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p0

    .line 591
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/knox/dar/StreamCipher;->getCipher([BJ)[B

    move-result-object p0

    .line 594
    invoke-static {p0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 593
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 597
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static getCipherPublicHandle()J
    .locals 2

    .line 462
    invoke-static {}, Lcom/samsung/android/knox/dar/StreamCipher;->getInstance()Lcom/samsung/android/knox/dar/StreamCipher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/StreamCipher;->getPublicHandle()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentLockTypeSummaryEnglish(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 1546
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1547
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 p1, 0x10000

    if-eq p0, p1, :cond_2

    const/high16 p1, 0x20000

    if-eq p0, p1, :cond_1

    const/high16 p1, 0x30000

    if-eq p0, p1, :cond_1

    const/high16 p1, 0x40000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x50000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x60000

    if-eq p0, p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "password"

    goto :goto_0

    :cond_1
    const-string p0, "pin"

    goto :goto_0

    :cond_2
    const-string p0, "pattern"

    :goto_0
    return-object p0
.end method

.method public static getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;
    .locals 7

    .line 1609
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getBitmapWallpaper(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1612
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#99000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "KnoxUtils"

    if-eqz v0, :cond_0

    const-string v6, "Getting wallpaper data has been completed."

    .line 1615
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 1617
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v6, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string v0, "something was wrong while getting wallpaper"

    .line 1620
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wallpaper"

    .line 1621
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    .line 1622
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    .line 1623
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aput-object p0, v0, v3

    aput-object v1, v0, v2

    invoke-direct {v5, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object v5
.end method

.method public static getDisplayRotation(Landroid/content/Context;)I
    .locals 3

    const-string v0, "window"

    .line 1096
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1097
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public static getDualDarDoInnerAuthUserId(Landroid/content/Context;)I
    .locals 1

    .line 814
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 817
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 818
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getInnerAuthUserForDo()I

    move-result p0

    return p0
.end method

.method public static getInflatedLayoutType(Landroid/content/Context;)I
    .locals 3

    .line 1678
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenHeight(Landroid/content/Context;)I

    move-result p0

    const/16 v1, 0x3e8

    if-le v0, p0, :cond_0

    const/16 p0, 0x3e9

    goto :goto_0

    :cond_0
    move p0, v1

    .line 1684
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflated layout is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v1, :cond_1

    const-string v1, "PORTRAIT"

    goto :goto_1

    :cond_1
    const-string v1, "LANDSCAPE"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getKioskMode(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;
    .locals 0

    if-eqz p0, :cond_0

    .line 1700
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1702
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 1

    .line 199
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    return-object p0
.end method

.method public static getKnoxName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "persona"

    .line 610
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_1

    .line 612
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    sget p1, Lcom/android/settings/R$string;->secure_folder_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "Knox"

    :goto_0
    return-object p0
.end method

.method public static getNavigationBarSize(Landroid/content/Context;)I
    .locals 4

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getPasswordChangeTimeout(Landroid/content/Context;I)I
    .locals 0

    .line 292
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 3

    .line 263
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getAdminUid(Landroid/content/Context;I)I

    move-result v0

    .line 265
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    return-object p0

    .line 269
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPasswordType(I)I
    .locals 1

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static getPersonalProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "getPersonalModeLabel"

    .line 638
    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 641
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 643
    :cond_1
    sget v0, Lcom/android/settings/R$string;->work_sound_personal_for_samsung:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static getRestrictionPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .locals 0

    if-eqz p0, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSAccountLock(Landroid/content/Context;I)Z
    .locals 3

    .line 1194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sfkeyguard_sa_state"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 1195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSAccountLock : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KnoxUtils"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static getSamsungAccount(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 1165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "samsungaccount"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecureFolderLogo(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    const-string v0, "KnoxUtils"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "persona"

    .line 1761
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1762
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1763
    :try_start_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    array-length v5, p1

    invoke-static {p1, v1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object p1, v2

    .line 1765
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to fetch sf icon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez p1, :cond_1

    const-string v3, "Applying default sf icon"

    .line 1769
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$drawable;->sf_keyguard_default_logo:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1771
    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1773
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1774
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1775
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1778
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v2
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 1127
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getTwoFactorValue(Landroid/content/Context;I)I
    .locals 2

    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "knox_finger_print_plus"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get two factor value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1

    .line 653
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 655
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load UserManager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasChooseLockResult()Z
    .locals 1

    .line 1536
    sget-boolean v0, Lcom/samsung/android/settings/knox/KnoxUtils;->mHasChooseLockResult:Z

    return v0
.end method

.method public static hasSamsungAccount(Landroid/content/Context;)Z
    .locals 2

    .line 1179
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 1180
    sget-object v1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KnoxUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 1184
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static initializeStreamCipher()J
    .locals 2

    .line 466
    invoke-static {}, Lcom/samsung/android/knox/dar/StreamCipher;->getInstance()Lcom/samsung/android/knox/dar/StreamCipher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/StreamCipher;->issueKeyStream()J

    move-result-wide v0

    return-wide v0
.end method

.method public static insertStatusLogForKnox(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 2

    .line 662
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KA broadcast request received- userID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KnoxUtils"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    .line 689
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    .line 691
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "lckTp"

    .line 692
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    new-instance p1, Landroid/os/UserHandle;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p0, "KA broadcast sent"

    .line 694
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    const-string p0, "insertLog() is failed : SecureFolder user"

    .line 665
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isAppSeparationModeEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 884
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 885
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 886
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 887
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 888
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isApplicationRestricted()Z
    .locals 1

    .line 1295
    sget-boolean v0, Lcom/samsung/android/settings/knox/KnoxUtils;->appRestrictionState:Z

    return v0
.end method

.method public static isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1332
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1333
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getApplicationRestrictions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    .line 1334
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "hide"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "grayout"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1350
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getApplicationRestrictions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1352
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1300
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1301
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getAppicationRestrictionsManager(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1303
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    .line 1304
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1305
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static isApplicationRestricted(Landroid/content/Context;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1315
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1316
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getApplicationRestrictions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    .line 1317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1318
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1319
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hide"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1320
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "grayout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isAvailableWithMultiWindowForKnox(Landroid/app/Activity;I)Z
    .locals 3

    .line 1791
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1795
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "KnoxUtils"

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Not available with Dex on pc mode"

    .line 1796
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1800
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Not available with multi-window mode"

    .line 1801
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v0
.end method

.method public static isBiometricLockOutStrongAuth(Landroid/content/Context;I)Z
    .locals 1

    .line 1493
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1494
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChangeRequested(Landroid/content/Context;I)I
    .locals 0

    .line 319
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isChangeRequestedForInner(Landroid/content/Context;)I
    .locals 0

    .line 328
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequestedForInner()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDisplayDialogType(Landroid/content/Context;)Z
    .locals 2

    .line 1588
    sget v0, Lcom/android/settings/R$style;->LockScreenTheme:I

    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils;->lockscreenAttrs:[I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 1589
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 1590
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static isDualDarDoEnabled()Z
    .locals 1

    .line 802
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    return v0
.end method

.method public static isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z
    .locals 1

    .line 806
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 809
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 810
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result p0

    return p0
.end method

.method public static isDualDarDoSecured(Landroid/content/Context;)Z
    .locals 1

    .line 822
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 823
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getInnerAuthUserForDo()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public static isDualDarEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 785
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 786
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 787
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_0

    .line 788
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 794
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDualDAREnabled result : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KnoxUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isFaceDisabledByPolicy(Landroid/content/Context;I)Z
    .locals 4

    const-string v0, "device_policy"

    .line 1076
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 1077
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1081
    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1082
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    const/4 p1, 0x4

    .line 1083
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result p0

    xor-int/2addr p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public static isFaceEnabled(Landroid/content/Context;I)Z
    .locals 1

    .line 1056
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceLockSetForUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceDisabledByPolicy(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFaceLockSetForUser(Landroid/content/Context;I)Z
    .locals 1

    .line 450
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x100

    .line 451
    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFingerPrintDisabledByPolicy(Landroid/content/Context;I)Z
    .locals 4

    const-string v0, "device_policy"

    .line 1061
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 1062
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1066
    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1067
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    .line 1068
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result p0

    xor-int/2addr p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez p0, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static isFingerprintEnabled(Landroid/content/Context;I)Z
    .locals 1

    .line 1052
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintLockSetForUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerPrintDisabledByPolicy(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFingerprintLockSetForUser(Landroid/content/Context;I)Z
    .locals 1

    .line 445
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 446
    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFirstStrongAuthForWork(Landroid/content/Context;I)Z
    .locals 1

    .line 1499
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1500
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFoldableProduct()Z
    .locals 2

    const-string v0, "ro.product.device"

    const-string v1, "NONE"

    .line 1710
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "winner"

    .line 1711
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "f2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FSG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SCG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1714
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isKnoxCustomProKioskEnabledSettingsItem(I)Z
    .locals 3

    .line 957
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isKnoxOrganizationOwnedDevice(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string v1, "device_policy"

    .line 230
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 231
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isMultifactorAuthEnforced(Landroid/content/Context;I)Z
    .locals 2

    .line 235
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 239
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public static isMultifactorEnabledForWork(Landroid/content/Context;I)Z
    .locals 2

    .line 248
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 249
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isOneLockOngoing(Landroid/content/Context;)Z
    .locals 2

    .line 1123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_one_lock_ongoing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isProKioskSettingsOrNormalSettingsAvailable()Z
    .locals 5

    .line 969
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 970
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 971
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v0

    .line 972
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v2

    .line 973
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_1

    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_3

    :cond_1
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_2

    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_3

    :cond_2
    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_4

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    if-nez v0, :cond_5

    const-string v0, "KnoxUtils"

    const-string v1, "No Settings features Available, finishing"

    .line 989
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    return v1
.end method

.method public static isPwdChangeEnforced(Landroid/content/Context;I)Z
    .locals 2

    .line 999
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p0

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChangeRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isPwdSetupOrChangeRequested(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 281
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 282
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result p0

    if-gtz p0, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "KnoxUtils"

    const-string p1, "isPwdSetupOrChangeRequested true"

    .line 285
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sf_reset_with_samsung_account"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRuggedFeatureEnabled()Z
    .locals 6

    .line 1277
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1280
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getHardKeyIntentState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v1, 0x3f7

    const/4 v3, 0x3

    .line 1281
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/knox/custom/SystemManager;->getHardKeyIntentState(II)I

    move-result v4

    if-eq v4, v2, :cond_0

    const/16 v4, 0x437

    .line 1282
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/custom/SystemManager;->getHardKeyIntentState(II)I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 1283
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/knox/custom/SystemManager;->getHardKeyBlockState(II)I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 1284
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/custom/SystemManager;->getHardKeyBlockState(II)I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 1285
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/knox/custom/SystemManager;->getHardKeyIntentBroadcast(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1286
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/custom/SystemManager;->getHardKeyIntentBroadcast(II)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isSecBrandAsGalaxy()Z
    .locals 2

    .line 1525
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "TRUE"

    .line 1526
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSecureFolderActivated(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "persona"

    .line 1666
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1667
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p0

    .line 1668
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1669
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isSoftKeyboardShown(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "input_method"

    .line 1258
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 1259
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p0

    return p0
.end method

.method public static isTablet()Z
    .locals 2

    .line 1520
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTimeoutStrongAuth(Landroid/content/Context;I)Z
    .locals 1

    .line 1487
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1488
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWallpaperResourceRequired(Landroid/content/Context;)Z
    .locals 4

    .line 1602
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p0, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-eq p0, v3, :cond_2

    const/4 v3, 0x4

    if-ne p0, v3, :cond_1

    goto :goto_1

    :cond_1
    move p0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v0

    :goto_2
    if-nez v2, :cond_4

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :cond_4
    :goto_3
    return v0
.end method

.method public static isWorkSoundSyncEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 1512
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1513
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sync_parent_sounds"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private static synthetic lambda$showPolicyDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 497
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 498
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$showPolicyDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 501
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showPolicyDialog$2(Landroid/content/Context;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 505
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 506
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 507
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadPreferenceAsInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1131
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1132
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static needSetupCredential(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "user"

    .line 1118
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 1119
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result p0

    return p0
.end method

.method public static needUCMLockSetWithoutWC(Landroid/content/Context;IZ)Z
    .locals 6

    .line 1386
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string v1, "keyguard"

    .line 1387
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 1388
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1389
    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p0

    .line 1390
    invoke-static {p1}, Lcom/samsung/android/settings/ucm/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result p1

    const/high16 v1, 0x70000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz p2, :cond_1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    if-nez p0, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v3

    .line 1399
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Q] = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [L] = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", [E] = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", [C1] = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", [C2] = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KnoxUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    return v2
.end method

.method public static removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2

    .line 918
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    const-string v1, "wifi_settings"

    .line 923
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    const-string v1, "bluetooth_settings"

    .line 926
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    const-string v1, "toggle_airplane"

    .line 929
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    const-string v1, "location_settings"

    .line 932
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const-string v1, "user_preference"

    .line 935
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_5
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_6

    const-string v1, "phone_language"

    .line 938
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v1, "current_input_method"

    .line 939
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    const-string v1, "category_samsungservices"

    .line 942
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v1, "external_storage_transfer"

    .line 943
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v1, "backup_category"

    .line 944
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_7
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const-string v0, "reset_category"

    .line 947
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v0, "reset_preference"

    .line 948
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_8
    return-void
.end method

.method public static restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x6

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 568
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 549
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->bytesToChars([B)[C

    move-result-object p0

    if-eqz p0, :cond_3

    .line 552
    invoke-static {p0, v2}, Llibcore/util/HexEncoding;->decode([CZ)[B

    move-result-object v0

    .line 554
    :cond_3
    invoke-static {}, Lcom/samsung/android/knox/dar/StreamCipher;->getInstance()Lcom/samsung/android/knox/dar/StreamCipher;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Lcom/samsung/android/knox/dar/StreamCipher;->restoreCipher([BJ)[B

    move-result-object p1

    .line 556
    :try_start_0
    invoke-static {v1, p1}, Lcom/android/internal/widget/LockscreenCredential;->streamCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->zeroize([C)V

    .line 559
    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->zeroize([B)V

    .line 560
    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->zeroize([B)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 558
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->zeroize([C)V

    .line 559
    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->zeroize([B)V

    .line 560
    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->zeroize([B)V

    .line 561
    throw p2

    :cond_4
    return-object p0
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1137
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1138
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1139
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1140
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setHasChooseLockResult(Z)V
    .locals 0

    .line 1540
    sput-boolean p0, Lcom/samsung/android/settings/knox/KnoxUtils;->mHasChooseLockResult:Z

    return-void
.end method

.method public static setPwdChangeRequested(Landroid/content/Context;II)V
    .locals 0

    .line 300
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 302
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    :cond_0
    return-void
.end method

.method public static setPwdChangeRequestedForInner(Landroid/content/Context;I)V
    .locals 0

    .line 308
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequestedForInner(I)Z

    :cond_0
    return-void
.end method

.method public static setTwoFactorValue(Landroid/content/Context;II)V
    .locals 3

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set two factor value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "knox_finger_print_plus"

    invoke-static {v0, v2, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-lez p2, :cond_0

    .line 767
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceLockSetForUser(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 768
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x100

    const/4 v0, 0x0

    .line 769
    invoke-virtual {p2, p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 772
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception during face lock check : Msg = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static shouldAllowBiometricForMaxFailAttempts(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 1

    .line 1170
    invoke-static {p0, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1171
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p0

    const/16 p1, 0x14

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static shouldDisableOneLockForUser(Landroid/content/Context;I)Z
    .locals 1

    .line 1785
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result p0

    .line 1786
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable one lock : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static showPolicyDialog(Landroid/content/Context;Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 473
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$1;->$SwitchMap$com$samsung$android$settings$knox$KnoxUtils$KnoxPasswordChangePolicy:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, ""

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const-string p1, "KnoxUtils"

    const-string v2, "Password policy could not be identified."

    .line 486
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    move-object v2, p1

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->sec_container_reset_password_policy_default:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->sec_container_reset_lock:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->common_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 475
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->sec_container_change_password_policy_default:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->sec_container_change_lock:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->common_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 489
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_2

    :cond_4
    const/4 v0, 0x5

    .line 492
    :goto_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-direct {v4, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 495
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/knox/KnoxUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/KnoxUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/knox/KnoxUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/settings/knox/KnoxUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 500
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 503
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 504
    new-instance v0, Lcom/samsung/android/settings/knox/KnoxUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/KnoxUtils$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 511
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showResetDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1689
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1690
    sget p0, Lcom/android/settings/R$string;->reset_dialog_title:I

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1691
    sget p0, Lcom/android/settings/R$string;->reset_dialog_message:I

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v1, 0x1

    .line 1692
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->common_ok:I

    .line 1693
    invoke-virtual {p0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1694
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 1695
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static strongAuthWithDeviceReboot(Landroid/content/Context;I)Z
    .locals 1

    .line 1505
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1506
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static supportBlur()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportFaceLockOnBioPrompt(Landroid/content/Context;)Z
    .locals 3

    .line 1742
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1746
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1748
    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSecurityLevel()I

    move-result p0

    .line 1749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceSecurityLevel : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KnoxUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static switchToProfile(I)V
    .locals 2

    .line 1090
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    .line 1091
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    .line 1092
    invoke-static {p0, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static updateRestrictionState(Landroid/content/Context;)V
    .locals 1

    .line 1376
    sget-boolean v0, Lcom/samsung/android/settings/knox/KnoxUtils;->appRestrictionState:Z

    if-nez v0, :cond_0

    .line 1377
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getApplicationRestrictions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1378
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 1379
    sput-boolean p0, Lcom/samsung/android/settings/knox/KnoxUtils;->appRestrictionState:Z

    :cond_0
    return-void
.end method

.method public static zeroize([B)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 530
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public static zeroize([C)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 536
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([CC)V

    :cond_0
    return-void
.end method
