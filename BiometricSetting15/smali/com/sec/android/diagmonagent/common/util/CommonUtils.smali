.class public abstract Lcom/sec/android/diagmonagent/common/util/CommonUtils;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static PKG_VERSION:Ljava/lang/String;

.field public static SERVICE_PKG_INFO:Landroid/content/pm/PackageInfo;


# direct methods
.method public static getDMAVersion(Landroid/content/Context;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "com.sec.android.diagmonagent"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return p0

    .line 15
    :catch_0
    const-string p0, "DIAGMON_SDK"

    .line 16
    .line 17
    const-string v1, "DMA Client is not exist"

    .line 18
    .line 19
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v0
.end method

.method public static getPackageVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->PKG_VERSION:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getServicePkgInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 12
    .line 13
    sput-object p0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->PKG_VERSION:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, ""

    .line 17
    .line 18
    sput-object p0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->PKG_VERSION:Ljava/lang/String;

    .line 19
    .line 20
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->PKG_VERSION:Ljava/lang/String;

    .line 21
    .line 22
    return-object p0
.end method

.method public static getServicePkgInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->SERVICE_PKG_INFO:Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x1000

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sput-object p0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->SERVICE_PKG_INFO:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " is not found"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "DIAGMON_SDK"

    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->SERVICE_PKG_INFO:Landroid/content/pm/PackageInfo;

    .line 47
    .line 48
    return-object p0
.end method
