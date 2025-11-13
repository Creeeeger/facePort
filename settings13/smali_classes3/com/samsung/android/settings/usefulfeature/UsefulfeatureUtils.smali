.class public Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;
.super Ljava/lang/Object;
.source "UsefulfeatureUtils.java"


# static fields
.field public static final EXCLUSIVE_ASPECT_RATIO_APP_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXCLUSIVE_ROTATE_APP_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PINNED_EDGE_CONTENT_URI:Landroid/net/Uri;

.field private static mAccessControlEnabled:Z = false

.field private static mAccessibilityEnabled:Z = false

.field private static mAssistantMenuEnabled:Z = false

.field private static mTalkBackEnabled:Z = false

.field private static mUniversalSwitchEnabled:Z = false


# direct methods
.method public static synthetic $r8$lambda$d91Eig_tPm7eL-MyP4cmNdPCnhc(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->lambda$getSplitActivityApplications$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rXrPL_ISIOV141y93sv_ZiVV4sE(Ljava/util/List;Ljava/util/List;Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->lambda$getSplitActivityApplications$1(Ljava/util/List;Ljava/util/List;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.samsung.android.app.appsedge.data.AppsEdgeDataProvider"

    .line 119
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->PINNED_EDGE_CONTENT_URI:Landroid/net/Uri;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->EXCLUSIVE_ROTATE_APP_LIST:Ljava/util/HashSet;

    .line 155
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->EXCLUSIVE_ASPECT_RATIO_APP_LIST:Ljava/util/HashSet;

    const-string v2, "com.sec.android.app.camera"

    .line 158
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "com.samsung.android.globalroaming"

    .line 159
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings"

    .line 160
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getAppSplitViewPackagesInfo(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8

    .line 557
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "UsefulfeatureUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "PackageManager is null"

    .line 560
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 563
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 564
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getSplitActivityApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 566
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 570
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 571
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 572
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 574
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object v4

    .line 575
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 576
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 577
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 578
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 579
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    .line 580
    :cond_2
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 578
    :goto_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    :try_start_0
    const-string p1, "package"

    .line 583
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mode"

    .line 584
    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to put AppSplitViewPackages in json object. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 589
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method public static getAutoRotatePackagesFlagInfo(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;)Ljava/lang/String;
    .locals 7

    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "UsefulfeatureUtils"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "PackageManager is null"

    .line 422
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string v0, "launcherapps"

    .line 425
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 426
    new-instance v0, Landroid/os/UserHandle;

    .line 427
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 426
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 429
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 430
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 431
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 433
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    .line 434
    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 435
    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPackageOrientation(Ljava/lang/String;)I

    move-result v6

    .line 436
    invoke-virtual {p1, v5}, Lcom/samsung/android/lib/episode/SourceInfo;->getPackageIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 437
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 438
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    :try_start_0
    const-string p0, "package"

    .line 441
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "mode"

    .line 442
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to put AutoRotatePackages in json object. "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 447
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public static getAutoRotatePackagesInfo(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "UsefulfeatureUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "PackageManager is null"

    .line 389
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string p1, "launcherapps"

    .line 392
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 393
    new-instance p1, Landroid/os/UserHandle;

    .line 394
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 393
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 396
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 397
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 398
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 400
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    .line 401
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 402
    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPackageOrientation(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    .line 406
    :cond_1
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 407
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    :try_start_0
    const-string p0, "package"

    .line 410
    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "mode"

    .line 411
    invoke-virtual {p1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to put AutoRotatePackages in json object. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 416
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public static getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "accessibility"

    .line 755
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 756
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semGetScreenReaderName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "UsefulfeatureUtils"

    .line 225
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getFoldStarManagerService()Lcom/samsung/android/core/IFoldStarManager;

    move-result-object v1

    .line 226
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/core/IFoldStarManager;->getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFixedAspectRatioPackages, size="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", option="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to getFixedAspectRatioPackages, option="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 234
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getFixedAspectRatioPackagesInfo(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 10

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "UsefulfeatureUtils"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "PackageManager is null"

    .line 252
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string v0, "launcherapps"

    .line 255
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 256
    new-instance v0, Landroid/os/UserHandle;

    .line 257
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 256
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 259
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 260
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 261
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 263
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 264
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 266
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherActivityInfo;

    .line 267
    invoke-virtual {v7}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 268
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    const/high16 v8, -0x40800000    # -1.0f

    .line 269
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 272
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    const/4 v8, 0x3

    invoke-static {v6, v8, v5}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 274
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 275
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-gez v9, :cond_2

    if-eqz p1, :cond_1

    .line 277
    :cond_2
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 278
    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    :try_start_0
    const-string p0, "package"

    .line 283
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "mode"

    .line 284
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to put FixedAspectRatioPackages in json object. "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 290
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public static getFlexModePackagesInfo(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "UsefulfeatureUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "PackageManager is null"

    .line 321
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string p1, "launcherapps"

    .line 324
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    .line 325
    new-instance v2, Landroid/os/UserHandle;

    .line 326
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 325
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 328
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 329
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 330
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 332
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    .line 333
    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 334
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 335
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    :try_start_0
    const-string p1, "switch"

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "show_setting_icon"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "package"

    .line 339
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "mode"

    .line 340
    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to put FlexModePackages in json object. "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 345
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1317
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 1324
    :cond_0
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public static getOrientationSwitchState(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getPackageOrientation(Ljava/lang/String;)I
    .locals 2

    .line 208
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, v1, p0}, Landroid/app/IActivityTaskManager;->getOrientationControlPolicy(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getPaywithSamsungPayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "content://com.samsung.android.spay.common.share/global"

    .line 1462
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1463
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "GET_global"

    const-string v2, "setting_title_side_key_launch"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "value"

    .line 1465
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1471
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1469
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 1467
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static getPolicyFromLegacyFlag(I)I
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v1, 0x1f

    if-eq p0, v1, :cond_2

    const/16 v2, 0x20

    if-eq p0, v2, :cond_2

    and-int/lit8 v2, p0, 0x7

    if-eqz v2, :cond_1

    and-int/lit8 p0, p0, 0x18

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    return p0
.end method

.method public static getSplitActivityApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 635
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSplitActivityAllowPackages()Ljava/util/List;

    move-result-object v0

    .line 636
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object v1

    .line 637
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 638
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 639
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 640
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 641
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 642
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 643
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getTypeOfCover(Landroid/content/Context;)I
    .locals 3

    const-string v0, "Utils"

    const/4 v1, 0x2

    .line 1147
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 1149
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1151
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result p0

    move v1, p0

    goto :goto_0

    :cond_0
    const-string p0, "Scover getTypeOfCover ScoverState is null"

    .line 1153
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1156
    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1158
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scover getTypeOfCover type : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getVideoEnhanceAppInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "DisplaySolution"

    .line 1339
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1340
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1341
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x1070050

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1342
    array-length v2, v1

    array-length v3, p0

    add-int/2addr v2, v3

    new-array v3, v2, [Ljava/lang/String;

    .line 1343
    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1344
    array-length p0, p0

    array-length v4, v1

    invoke-static {v1, v5, v3, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1346
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 1347
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1348
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    if-ge v5, v2, :cond_2

    .line 1351
    aget-object v6, v3, v5

    .line 1352
    invoke-virtual {v0, v6}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 1353
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1354
    :cond_0
    invoke-virtual {v0, v6}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1355
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "false_names"

    .line 1360
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "true_names"

    .line 1361
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to put FrontScreenAppsInfo in json object. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsefulfeatureUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1366
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static hasActiveKey()Z
    .locals 1

    const-string v0, ""

    .line 865
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static hasActiveKeySetting()Z
    .locals 1

    .line 869
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static hasBMCPttEnable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.bell.ptt"

    .line 902
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isStubPTTApp(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BMC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasDedicatedAppEnable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 912
    invoke-static {p0, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static hasDedicatedAppEnable(Landroid/content/Context;Z)Z
    .locals 3

    .line 916
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 917
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isRuggedFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 918
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasBMCPttEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasTMOPttEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    return v2

    .line 921
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasEPttEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 925
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    .line 926
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    .line 927
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 928
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string v0, "com.samsung.android.knox.intent.action.HARD_KEY_PRESS"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "UsefulfeatureUtils"

    const-string p1, "knox HARD_KEY_PRESS true"

    .line 929
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_4
    return v1
.end method

.method public static hasDockSettings(Landroid/content/Context;)Z
    .locals 6

    .line 1163
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSORY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1167
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 1172
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v0

    .line 1173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "mate_setting_activation"

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v1

    goto :goto_1

    :cond_3
    move p0, v1

    move v0, p0

    .line 1176
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasDockSettings : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Utils"

    invoke-static {v4, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MateSettingActivation : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public static hasEPttEnable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.att.eptt"

    .line 894
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ATT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AIO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasFeatureAutoScreenTurnOn(Landroid/content/Context;)Z
    .locals 1

    .line 1607
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.cover.autoscreenon"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasSideKeyDedicatedAppEnable(Landroid/content/Context;)Z
    .locals 3

    .line 941
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isRuggedFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 943
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 944
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    .line 945
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 946
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v2, "com.samsung.android.knox.intent.action.addon.SIDE_KEY_DELTA"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UsefulfeatureUtils"

    const-string v0, "knox HARD_KEY_PRESS true"

    .line 947
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method public static hasTMOPttEnable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.sprint.sdcplus"

    .line 898
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TMB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TMK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ASR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasVzwPttEnable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.verizon.pushtotalkplus"

    .line 890
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VZW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VPP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasXcoverKeySetting()Z
    .locals 1

    .line 876
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static hasXcoverTopKeySetting()Z
    .locals 1

    .line 883
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static isAccessibilityFunctionEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1265
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_accessibility_services"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1268
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCoverVerified(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "Utils"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 969
    :try_start_0
    new-instance v3, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 971
    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 973
    iget-boolean v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 974
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    const-string p0, "cover getTypeOfCover ScoverState is null"

    .line 976
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    move p0, v1

    move v3, v2

    goto :goto_1

    :catch_1
    move-exception p0

    move v3, v2

    .line 979
    :goto_0
    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    move p0, v1

    .line 981
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cover attached : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_2

    if-ne p0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_2
    return v2
.end method

.method public static isEasyModeStatus(Landroid/content/ContentResolver;)Z
    .locals 3

    const-string v0, "easy_mode_switch"

    const/4 v1, 0x1

    .line 1076
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEasyModeStatus "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UsefulfeatureUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEnabledComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3

    const-string v0, "SETTING_UTILS"

    const/4 v1, 0x0

    .line 846
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 847
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 856
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is enabled"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 851
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is diabled"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 859
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isEnabledOneHandOperation(Landroid/content/Context;)Z
    .locals 1

    .line 1241
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnabledPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "SETTING_UTILS"

    const/4 v1, 0x0

    .line 822
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 823
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 836
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is enabled"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 827
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is diabled"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 839
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1186
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const-string v0, "com.samsung.accessibility"

    .line 1190
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    if-eqz v0, :cond_1

    return v0

    :cond_1
    const-string v0, "com.samsung.android.app.talkback"

    .line 1195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1196
    sget-boolean p1, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mTalkBackEnabled:Z

    if-eqz p1, :cond_2

    return p1

    .line 1199
    :cond_2
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mTalkBackEnabled:Z

    return p0

    :cond_3
    const-string v0, "com.samsung.android.universalswitch"

    .line 1201
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1202
    sget-boolean p1, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mUniversalSwitchEnabled:Z

    if-eqz p1, :cond_4

    return p1

    .line 1205
    :cond_4
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mUniversalSwitchEnabled:Z

    return p0

    :cond_5
    const-string v0, "com.samsung.android.app.accesscontrol"

    .line 1207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1208
    sget-boolean p1, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessControlEnabled:Z

    if-eqz p1, :cond_6

    return p1

    .line 1211
    :cond_6
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessControlEnabled:Z

    return p0

    :cond_7
    const-string v0, "com.samsung.android.app.assistantmenu"

    .line 1213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1214
    sget-boolean p1, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAssistantMenuEnabled:Z

    if-eqz p1, :cond_8

    return p1

    .line 1217
    :cond_8
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAssistantMenuEnabled:Z

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static isFrontDisplay(Landroid/content/Context;)Z
    .locals 1

    .line 658
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHdmiConnected(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "display"

    .line 1414
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 1416
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 1417
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1418
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isMessageAppEnable(Landroid/content/Context;)Z
    .locals 8

    .line 1275
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "jp.softbank.mb.mail"

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v5, "com.kddi.android.cmail"

    aput-object v5, v2, v0

    const/4 v0, 0x3

    const-string v5, "com.nttdocomo.android.msg"

    aput-object v5, v2, v0

    .line 1281
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    move v5, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1286
    :try_start_0
    aget-object v6, v2, v3

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_0

    .line 1290
    iget-boolean v6, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_0

    move v5, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method public static isMultiWindowMode()Z
    .locals 1

    .line 1408
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    .line 1409
    invoke-virtual {v0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNFCAuthCover(Landroid/content/Context;)Z
    .locals 1

    .line 1182
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPanicModeSupported()Z
    .locals 2

    .line 959
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ConfigActionForMultiPowerPress"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanicMode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPayWithSamsungPayVisible(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "UsefulfeatureUtils"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.samsung.android.spay.common.share/global"

    .line 1444
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "GET_global"

    const-string v4, "simplepay_side_key_launch"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v2, "value"

    .line 1447
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1448
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPayWithSamsungPayVisible NullPointerException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPayWithSamsungPayVisible IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 1450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPayWithSamsungPayVisible NumberFormatException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method public static isReadyOneHandedOperationStatusEnable(Landroid/content/Context;)Z
    .locals 19

    .line 1629
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1630
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSwitchAccessEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 1631
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1632
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "accessibility_magnifier"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1634
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_display_magnification_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    .line 1636
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    .line 1638
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_magnification_shortcut"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v3

    .line 1640
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "finger_magnifier"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v4

    .line 1642
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1643
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_4

    :cond_4
    move v7, v4

    .line 1644
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_use"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v3, :cond_5

    sget v8, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v9, 0x1d4c0

    if-ge v8, v9, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    move v8, v4

    .line 1645
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "assistant_menu"

    invoke-static {v9, v10, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v3, :cond_6

    move v9, v3

    goto :goto_6

    :cond_6
    move v9, v4

    .line 1646
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v3, :cond_7

    sget v10, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v11, 0x18894

    if-ge v10, v11, :cond_7

    move v10, v3

    goto :goto_7

    :cond_7
    move v10, v4

    .line 1647
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_auto_action_type"

    invoke-static {v11, v12, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    move v11, v3

    goto :goto_8

    :cond_8
    move v11, v4

    .line 1648
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "accessibility_corner_action_enabled"

    invoke-static {v12, v13, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_9

    move v12, v3

    goto :goto_9

    :cond_9
    move v12, v4

    .line 1649
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "tap_duration_enabled"

    invoke-static {v13, v14, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v3, :cond_a

    move v13, v3

    goto :goto_a

    :cond_a
    move v13, v4

    .line 1650
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "touch_blocking_enabled"

    invoke-static {v14, v15, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v3, :cond_b

    move v14, v3

    goto :goto_b

    :cond_b
    move v14, v4

    .line 1651
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move/from16 v16, v14

    const-string v14, "sticky_keys_enabled"

    invoke-static {v15, v14, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v3, :cond_c

    move v14, v3

    goto :goto_c

    :cond_c
    move v14, v4

    .line 1652
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move/from16 v17, v14

    const-string v14, "slow_keys_enabled"

    invoke-static {v15, v14, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v3, :cond_d

    move v14, v3

    goto :goto_d

    :cond_d
    move v14, v4

    .line 1653
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move/from16 v18, v14

    const-string v14, "bounce_keys_enabled"

    invoke-static {v15, v14, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v3, :cond_e

    move v14, v3

    goto :goto_e

    :cond_e
    move v14, v4

    :goto_e
    if-nez v1, :cond_f

    if-nez v0, :cond_f

    if-nez v2, :cond_f

    if-nez v5, :cond_f

    if-nez v6, :cond_f

    if-nez v7, :cond_f

    if-nez v8, :cond_f

    if-nez v9, :cond_f

    if-nez v11, :cond_f

    if-nez v12, :cond_f

    if-nez v10, :cond_f

    if-nez v13, :cond_f

    if-nez v16, :cond_f

    if-nez v17, :cond_f

    if-nez v18, :cond_f

    if-eqz v14, :cond_10

    :cond_f
    move v3, v4

    :cond_10
    return v3
.end method

.method public static isSamsungMessageAppEnable(Landroid/content/Context;)Z
    .locals 2

    .line 1298
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    .line 1304
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 1308
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isSendSOSMessageSupported(Landroid/content/Context;)Z
    .locals 4

    .line 1067
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1068
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isMessageAppEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.sec.android.app.safetyassurance"

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez v0, :cond_2

    .line 1069
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public static isSmartMirroringConnected(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "media_router"

    .line 1427
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaRouter;

    const/4 v0, 0x4

    .line 1429
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1431
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static isStubPTTApp(Landroid/content/Context;)Z
    .locals 2

    .line 906
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kodiak.intent.action.PTT_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.bell.ptt"

    .line 907
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportExclusiveTaskManagerService()Z
    .locals 2

    .line 1256
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_EXCLUSIVE_TASK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFlashlight(Landroid/content/Context;)Z
    .locals 7

    .line 1477
    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    const/4 v0, 0x0

    .line 1479
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 1480
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1481
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 1482
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 1483
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 1484
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 1485
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "UsefulfeatureUtils"

    const-string v2, "couldn\'t know if support Flashlight."

    .line 1490
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method

.method public static isSupportMotion(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "motion_recognition"

    .line 769
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 770
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isAvailable(I)Z

    move-result p0

    return p0
.end method

.method public static isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 778
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "easy_mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "smart_alert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "palm_swipe_to_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "direct_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/high16 p1, 0x200000

    .line 799
    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 800
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 802
    :cond_4
    invoke-static {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 803
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    return v2

    :pswitch_1
    const/4 p1, 0x4

    .line 790
    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 791
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    .line 792
    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 793
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :pswitch_2
    const/high16 p1, 0x400000

    .line 810
    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 811
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :pswitch_3
    const/16 p1, 0x400

    .line 781
    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 782
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 784
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x61d65f0c -> :sswitch_3
        -0x4a8376ec -> :sswitch_2
        -0x9d1b89a -> :sswitch_1
        0x72a6d836 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportOneHandOperation()Z
    .locals 1

    .line 1227
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSwitchAccessEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 1093
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 1100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "enabled_accessibility_services"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string v2, ""

    .line 1108
    :cond_2
    invoke-virtual {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1110
    :cond_3
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1111
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 1112
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1115
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "com.google.android.marvin.talkback"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    .line 1116
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    .line 744
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 745
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result p0

    return p0
.end method

.method public static isUniversalSwitchEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 687
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "(?i).*com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    .line 690
    invoke-static {p0, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isAccessibilityFunctionEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "Utils"

    if-nez p0, :cond_0

    const-string p0, "isUniversalSwitchSupportMultiUserKnoxMode  context is Null "

    .line 713
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 716
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    move p0, v2

    .line 717
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUniversalSwitchSupportMultiUserKnoxMode  mainUser is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUniversalSwitchSupportMultiUserKnoxMode KnoxEnabled Value is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public static isVideoBrightnessMenuDisabled(Landroid/content/Context;)Z
    .locals 1

    .line 1438
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isHdmiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSmartMirroringConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isVisibleOneHandOperation(Landroid/content/Context;)Z
    .locals 0

    .line 1234
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportOneHandOperation()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getSplitActivityApplications$0(Ljava/lang/String;)Z
    .locals 2

    .line 638
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSplitActivityApplications$1(Ljava/util/List;Ljava/util/List;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .line 642
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    iget-object p1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static oneHandOperationDisablepopupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1669
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\n"

    const-string v3, "\u2022 "

    if-eqz v1, :cond_0

    .line 1670
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    .line 1671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    sget v1, Lcom/android/settings/R$string;->accessibility_magnifier_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "com.samsung.android.app.talkback"

    .line 1675
    invoke-static {p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v4, "\u200f "

    if-eqz v1, :cond_2

    .line 1676
    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1677
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    sget v1, Lcom/android/settings/R$string;->direct_access_actions_talkback_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "com.google.android.marvin.talkback"

    .line 1682
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1683
    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1684
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    sget v1, Lcom/android/settings/R$string;->direct_access_actions_talkback_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "com.samsung.android.universalswitch"

    .line 1689
    invoke-static {p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1690
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1691
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    sget v1, Lcom/android/settings/R$string;->direct_access_actions_universal_switch_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "com.samsung.android.app.accesscontrol"

    .line 1695
    invoke-static {p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1696
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    sget v1, Lcom/android/settings/R$string;->accessibility_access_control_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, "com.samsung.android.app.assistantmenu"

    .line 1700
    invoke-static {p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1701
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    sget v1, Lcom/android/settings/R$string;->assistant_menu_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v4, 0x18894

    if-ge v1, v4, :cond_8

    .line 1706
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    sget v1, Lcom/android/settings/R$string;->direct_access_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    sget v1, Lcom/android/settings/R$string;->accessibility_screen_magnification_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    sget v1, Lcom/android/settings/R$string;->accessibility_auto_action_preference_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    sget v1, Lcom/android/settings/R$string;->accessibility_tap_duration_preference_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    sget v1, Lcom/android/settings/R$string;->accessibility_ignore_repeated_touches_preference_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    sget v1, Lcom/android/settings/R$string;->sticky_keys:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    sget v1, Lcom/android/settings/R$string;->slow_keys:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    sget v1, Lcom/android/settings/R$string;->bounce_keys:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAppSplitViewPackagesInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-string v0, "UsefulfeatureUtils"

    .line 594
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 595
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "mode"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 597
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "PackageManager is null"

    .line 600
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 603
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 604
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getSplitActivityApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 606
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 609
    :cond_1
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object p0

    .line 610
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 611
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    .line 612
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 613
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 614
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 615
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz p0, :cond_4

    .line 616
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 617
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    move v4, v7

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v6, v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 619
    :cond_4
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 629
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set AppSplitViewPackages. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 626
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get AppSplitViewPackages from json object. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public static setAutoRotatePackagesFlagInfo(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Z
    .locals 7

    const-string v0, "UsefulfeatureUtils"

    const/4 v1, 0x0

    .line 510
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 511
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "mode"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "PackageManager is null"

    .line 515
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 519
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v1

    .line 520
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 521
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/samsung/android/lib/episode/SourceInfo;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "launcherapps"

    .line 524
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    const/4 p1, 0x0

    .line 525
    new-instance p2, Landroid/os/UserHandle;

    .line 526
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p2, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 525
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 528
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    .line 529
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 530
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 531
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 533
    invoke-static {p1, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string v2, "com.android.samsung.utilityapp"

    .line 534
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.android.samsung.batteryusage"

    .line 535
    invoke-static {p1, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string p1, "com.samsung.android.statsd"

    .line 536
    invoke-static {p1, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string p1, "com.samsung.android.appbooster"

    .line 537
    invoke-static {p1, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string p1, "com.samsung.android.thermalguardian"

    .line 538
    invoke-static {p1, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string p1, "com.samsung.android.memoryguardian"

    .line 539
    invoke-static {p1, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    const-string p1, "com.samsung.android.mediaguardian"

    .line 540
    invoke-static {p1, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to set AutoRotatePackages. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :catch_1
    move-exception p0

    .line 545
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get AutoRotatePackages from json object. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return v1
.end method

.method public static setAutoRotatePackagesInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 451
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setAutoRotatePackagesInfo(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setAutoRotatePackagesInfo(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11

    const-string v0, "UsefulfeatureUtils"

    .line 456
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 457
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "mode"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "PackageManager is null"

    .line 461
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "launcherapps"

    .line 464
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    const/4 v2, 0x0

    .line 465
    new-instance v3, Landroid/os/UserHandle;

    .line 466
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 465
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 468
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 469
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 470
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 471
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 473
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "com.samsung.android.mediaguardian"

    const-string v5, "com.samsung.android.memoryguardian"

    const-string v6, "com.samsung.android.thermalguardian"

    const-string v7, "com.samsung.android.appbooster"

    const-string v8, "com.samsung.android.statsd"

    const-string v9, "com.android.samsung.batteryusage"

    const-string v10, "com.android.samsung.utilityapp"

    if-eqz p2, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    or-int/2addr v3, p2

    .line 485
    :try_start_1
    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 486
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    invoke-static {v9, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 488
    invoke-static {v8, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 489
    invoke-static {v7, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 490
    invoke-static {v6, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 491
    invoke-static {v5, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 492
    invoke-static {v4, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    goto :goto_0

    .line 475
    :cond_3
    :goto_2
    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 476
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    invoke-static {v9, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 478
    invoke-static {v8, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 479
    invoke-static {v7, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 480
    invoke-static {v6, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 481
    invoke-static {v5, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 482
    invoke-static {v4, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to set AutoRotatePackages. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p0

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get AutoRotatePackages from json object. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method public static setFixedAspectRatioPackages(ILjava/util/Map;Z)V
    .locals 4

    const-string v0, ", replaceAll="

    const-string v1, "UsefulfeatureUtils"

    .line 239
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->getFoldStarManagerService()Lcom/samsung/android/core/IFoldStarManager;

    move-result-object v2

    .line 240
    invoke-interface {v2, p0, p1, p2}, Lcom/samsung/android/core/IFoldStarManager;->setFixedAspectRatioPackages(ILjava/util/Map;Z)V

    .line 241
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedAspectRatioPackages, size="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to setFixedAspectRatioPackages, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p0

    .line 243
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setFixedAspectRatioPackagesInfo(Ljava/lang/String;)V
    .locals 8

    .line 295
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 296
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "mode"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 298
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const v2, 0x3faaaaab

    .line 301
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v3, 0x0

    move v4, v3

    .line 302
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 303
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 304
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportHalfFoldedMode()Z

    move-result v6

    if-nez v6, :cond_0

    sub-float v6, v2, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    const/4 v5, 0x0

    .line 308
    :cond_0
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p0

    invoke-static {p0, v1, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setFixedAspectRatioPackages(ILjava/util/Map;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get FixedAspectRatioPackages from json object. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsefulfeatureUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static setFlexModePackagesInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const-string v0, "UsefulfeatureUtils"

    .line 350
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 351
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "mode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 352
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "switch"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "PackageManager is null"

    .line 358
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v3, "launcherapps"

    .line 361
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    const/4 v4, 0x0

    .line 362
    new-instance v5, Landroid/os/UserHandle;

    .line 363
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 362
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 365
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    .line 366
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move v6, v5

    .line 367
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 368
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 369
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 370
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 371
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v9, 0x1

    and-int/2addr v6, v9

    if-eqz v6, :cond_2

    move v5, v9

    :cond_2
    invoke-virtual {v7, v8, v4, v5}, Lcom/samsung/android/view/SemWindowManager;->setSupportsFlexPanel(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 376
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "show_setting_icon"

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set FlexModePackages. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get FlexModePackages from json object. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static setOneHandModeKeyCustomizationInfo(Z)V
    .locals 7

    const-string v0, "UsefulfeatureUtils"

    if-eqz p0, :cond_0

    .line 1500
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string p0, "onehand/onehand"

    .line 1501
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1503
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v2, 0x8

    const/16 v3, 0x452

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 1509
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to one hand mode KeyCustomizationInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1515
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/16 v1, 0x452

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-interface {p0, v1, v2, v3}, Landroid/view/IWindowManager;->removeKeyCustomizationInfo(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to one hand mode removeKeyCustomizationInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setPackageOrientation(Ljava/lang/String;I)V
    .locals 2

    .line 217
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, v1, p0, p1}, Landroid/app/IActivityTaskManager;->setOrientationControlPolicy(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 219
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V
    .locals 16

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    if-eq v1, v2, :cond_e

    const/16 v3, 0x1a

    const-string v4, "samsungpay://simplepay/sidekey"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    const-string v9, ""

    if-eq v0, v8, :cond_7

    const/4 v10, 0x2

    if-eq v0, v10, :cond_0

    move v11, v2

    move v14, v11

    goto :goto_3

    :cond_0
    const/16 v11, 0x8

    if-nez v1, :cond_2

    const-string v9, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    :cond_1
    :goto_0
    move v14, v8

    goto :goto_3

    :cond_2
    if-ne v1, v10, :cond_4

    move-object/from16 v10, p0

    .line 1547
    invoke-static {v10, v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo;->getFunctionKeyApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 1549
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "torch/torch"

    .line 1550
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "com.samsung.android.bixby.agent/com.samsung.android.bixby.assistanthome.AssistantHomeLauncherActivity"

    .line 1552
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v9, "wakeBixby_openApps/wakeBixby_openApps"

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_5

    const-string v9, "secureFolder/secureFolder"

    goto :goto_2

    :cond_5
    if-ne v1, v5, :cond_6

    move-object v9, v4

    goto :goto_0

    :cond_6
    move v14, v2

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    const-string v9, "wakeBixby/wakeBixby"

    move v11, v5

    :goto_1
    move v14, v7

    goto :goto_3

    :cond_8
    if-ne v1, v8, :cond_9

    const-string v9, "globalAction/globalAction"

    move v11, v5

    :goto_2
    move v14, v6

    goto :goto_3

    :cond_9
    move v14, v2

    move v11, v5

    :goto_3
    if-eq v11, v2, :cond_e

    if-eq v14, v2, :cond_e

    const-string v1, "UsefulfeatureUtils"

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    .line 1573
    :try_start_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1574
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1575
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1576
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4

    .line 1578
    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 1579
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1582
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_b
    :goto_4
    const/high16 v0, 0x10200000

    .line 1585
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v15, v2

    goto :goto_5

    :cond_c
    move-object v15, v0

    .line 1587
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSideKeyCustomizationInfo intent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v12, 0x450

    const/16 v13, 0x1a

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 1590
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1592
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 1596
    :cond_d
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/16 v2, 0x450

    invoke-interface {v0, v2, v11, v3}, Landroid/view/IWindowManager;->removeKeyCustomizationInfo(III)V

    const-string v0, "setSideKeyCustomizationInfo removeKeyCustomizationInfo"

    .line 1597
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to removeKeyCustomizationInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    return-void
.end method

.method public static setSwitchOrientationPolicyFlag(ZI)I
    .locals 4

    const/16 v0, 0x1f

    if-eqz p1, :cond_6

    const/16 v1, 0x20

    const/4 v2, 0x7

    if-eq p1, v2, :cond_4

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    return v3

    :cond_0
    if-eqz p0, :cond_1

    move p1, v2

    :cond_1
    return p1

    :cond_2
    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v3

    :goto_0
    return p1

    :cond_4
    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    return p1

    :cond_6
    if-eqz p0, :cond_7

    move p1, v0

    :cond_7
    return p1
.end method

.method public static setVideoEnhanceAppInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v0, "DisplaySolution"

    .line 1376
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1377
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1378
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1379
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1380
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1381
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1384
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "false_names"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    .line 1385
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1386
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1387
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1388
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setVideoEnhancerSettingState(Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1392
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "true_names"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1393
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 1394
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1395
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1396
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    .line 1397
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setVideoEnhancerSettingState(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get VideoEnhanceAppInfo from json object. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsefulfeatureUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static turnOffFunctionsConflictWithOneHandedMode(Landroid/content/Context;)V
    .locals 3

    .line 1736
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportExclusiveTaskManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1737
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffTalkBack(Landroid/content/Context;)V

    .line 1738
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffSwitchAccess(Landroid/content/Context;)Z

    .line 1739
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnifier"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1740
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1741
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1742
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1743
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffUniversalSwitch(Landroid/content/Context;)V

    .line 1744
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1745
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1746
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1747
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1748
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_auto_action_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1749
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_corner_action_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1750
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tap_duration_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1751
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touch_blocking_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1752
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sticky_keys_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1753
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "slow_keys_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1754
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bounce_keys_enabled"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static turnOffSwitchAccess(Landroid/content/Context;)Z
    .locals 8

    .line 994
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 998
    invoke-static {p0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 1001
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1002
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_0
    const-string v3, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    .line 1005
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    .line 1008
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v3, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    .line 1010
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1011
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1014
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1015
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1016
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v7

    .line 1024
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1030
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1033
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    sub-int/2addr v1, v7

    .line 1035
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1039
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v1, :cond_6

    .line 1045
    invoke-virtual {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1047
    :cond_5
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1048
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1049
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5

    move v4, v7

    .line 1060
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_enabled"

    invoke-static {p0, v0, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v7
.end method

.method public static turnOffTalkBack(Landroid/content/Context;)V
    .locals 1

    const-string v0, "accessibility"

    .line 733
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x0

    .line 734
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->semSetScreenReaderEnabled(Z)V

    return-void
.end method

.method public static turnOffUniversalSwitch(Landroid/content/Context;)V
    .locals 2

    .line 700
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.accessibility/.universalswitch.UniversalSwitchService"

    .line 703
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 704
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.action.universalswitch_toggled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.SettingsReceiver"

    .line 705
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p0, "Utils Accessibility"

    const-string v0, "sent universal switch toggled broadcast from turnOffUniversalSwitch()"

    .line 707
    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
