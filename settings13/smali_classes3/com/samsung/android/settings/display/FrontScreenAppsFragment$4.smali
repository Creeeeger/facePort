.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$4;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "FrontScreenAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/logging/status/StatusData;",
            ">;"
        }
    .end annotation

    .line 340
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    const-string v0, "launcherapps"

    .line 341
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 342
    new-instance v1, Landroid/os/UserHandle;

    .line 343
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    .line 342
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    .line 347
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    .line 348
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 349
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 350
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 351
    invoke-virtual {p0, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    new-instance v8, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow2;

    invoke-direct {v8}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow2;-><init>()V

    .line 356
    iput-object v4, v8, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow2;->mComponentName:Landroid/content/ComponentName;

    .line 357
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v6, v4, v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->getPackageType(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Lcom/samsung/android/view/SemWindowManager;)I

    move-result v4

    iput v4, v8, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow2;->mType:I

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 362
    :cond_1
    invoke-virtual {p0, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 365
    :cond_2
    :try_start_0
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v0, 0x1d07

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    mul-int/lit8 v3, v3, 0x64

    .line 366
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    div-int/2addr v3, p0

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    new-array p1, v5, [Lcom/samsung/android/settings/logging/status/StatusData;

    aput-object p0, p1, v2

    .line 367
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "divide by zero["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FrontScreenAppsFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
