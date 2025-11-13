.class public final Lcom/android/settingslib/applications/ApplicationsState$9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState$9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$10()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$11()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$13()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$16()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$19()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$20()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$22()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$25()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$26()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$27()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$28()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$31()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$8()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$9()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 6

    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$9;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$9;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    monitor-exit p1

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    monitor-enter p1

    :try_start_1
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    monitor-exit p1

    return p0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_2
    monitor-enter p1

    :try_start_2
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    monitor-exit p1

    return p0

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_3
    monitor-enter p1

    :try_start_3
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    monitor-exit p1

    return v0

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    :pswitch_4
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    monitor-enter p0

    :try_start_4
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x2000000

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    goto :goto_5

    :catchall_4
    move-exception p1

    goto :goto_6

    :cond_5
    :goto_4
    const/4 p1, 0x1

    :goto_5
    monitor-exit p0

    return p1

    :goto_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :pswitch_5
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :pswitch_6
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    :cond_7
    :goto_7
    move v0, v1

    goto :goto_9

    :cond_8
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    const-string v3, "ApplicationsState"

    if-eqz v2, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Filter installed app by user because of archived [package name =  "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "]"

    invoke-static {p0, p1, v0, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_start_5
    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getOriginatingPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz v4, :cond_a

    if-eqz p1, :cond_a

    sget-object v5, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    and-int/2addr p0, v0

    if-eqz p0, :cond_a

    move-object v2, v4

    goto :goto_8

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Exception while retrieving the package installer of "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :cond_a
    :goto_8
    if-eqz v2, :cond_7

    :goto_9
    return v0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_8
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    :pswitch_9
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$9;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_a

    :cond_b
    const/4 p0, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 p0, 0x1

    :goto_b
    return p0

    :pswitch_a
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    goto :goto_d

    :cond_d
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_e

    :goto_c
    move v0, v1

    goto :goto_d

    :cond_e
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_c

    :cond_f
    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    if-eqz p0, :cond_10

    goto :goto_c

    :cond_10
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    if-eqz p0, :cond_11

    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    if-eqz p0, :cond_11

    goto :goto_c

    :cond_11
    :goto_d
    return v0

    :pswitch_b
    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->showInPersonalTab:Z

    if-nez p0, :cond_12

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "android.os.usertype.profile.PRIVATE"

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mProfileType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_e

    :cond_12
    const/4 p0, 0x0

    :goto_e
    return p0

    :pswitch_c
    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->showInPersonalTab:Z

    if-nez p0, :cond_13

    const-string p0, "android.os.usertype.profile.MANAGED"

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mProfileType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_f

    :cond_13
    const/4 p0, 0x0

    :goto_f
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final init()V
    .locals 0

    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$9;->$r8$classId:I

    return-void
.end method
