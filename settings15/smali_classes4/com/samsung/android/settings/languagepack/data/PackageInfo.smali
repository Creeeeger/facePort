.class public final Lcom/samsung/android/settings/languagepack/data/PackageInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIsPreloaded:Z

.field public mLatestVersion:J

.field public final mPkgName:Ljava/lang/String;

.field public mPreloadedVersionCode:J

.field public mPreloadedVersionName:Ljava/lang/String;

.field public final mType:I

.field public final mVariant:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mLatestVersion:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mVariant:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mIsPreloaded:Z

    iput-wide v0, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPreloadedVersionCode:J

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    return-void
.end method


# virtual methods
.method public final isPackageInstalled(Landroid/content/Context;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPackageInstalled() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=[installed:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "][preloaded:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mIsPreloaded:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mIsPreloaded:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

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

.method public final isUnInstallablePackage(Landroid/content/Context;)Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1

    :cond_0
    move v0, v2

    :catch_0
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isUnInstallablePackage() : ["

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] result = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInfo"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final needToUpdate(Landroid/content/Context;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mIsPreloaded:Z

    if-eqz v4, :cond_4

    iget-wide v2, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPreloadedVersionCode:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mIsPreloaded:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPreloadedVersionCode:J

    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPreloadedVersionCode:J

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    goto :goto_0

    :catch_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mIsPreloaded:Z

    if-eqz v4, :cond_4

    iget-wide v2, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPreloadedVersionCode:J

    :cond_4
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "needToUpdate() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=[currentVersion:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "][latestVersion:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mLatestVersion:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PackageInfo"

    invoke-static {v4, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->isPackageInstalled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-wide p0, p0, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mLatestVersion:J

    cmp-long p0, p0, v2

    if-lez p0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method
