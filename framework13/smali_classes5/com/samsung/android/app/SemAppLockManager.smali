.class public Lcom/samsung/android/app/SemAppLockManager;
.super Ljava/lang/Object;
.source "SemAppLockManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemAppLockManager"


# instance fields
.field private blacklist mActivityManager:Landroid/app/ActivityManager;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/SemAppLockManager;->mContext:Landroid/content/Context;

    .line 47
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 48
    return-void
.end method

.method private blacklist getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method


# virtual methods
.method public whitelist getCheckAction()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/SemAppLockManager;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/SemAppLockManager;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppLockedPackageList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isAppLockEnabled()Z
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/SemAppLockManager;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isApplockEnabled()Z

    move-result v0

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/SemAppLockManager;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
