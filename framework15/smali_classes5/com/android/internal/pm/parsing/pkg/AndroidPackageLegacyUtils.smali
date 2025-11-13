.class public Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;
.super Ljava/lang/Object;
.source "AndroidPackageLegacyUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fillVersionCodes(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfo;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;->getVersionCode()I

    move-result v0

    iput v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;->getVersionCodeMajor()I

    move-result v0

    iput v0, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    return-void
.end method

.method public static blacklist generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist isOdm(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isOdm()Z

    move-result v0

    return v0
.end method

.method public static blacklist isOem(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isOem()Z

    move-result v0

    return v0
.end method

.method public static blacklist isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isPrivileged()Z

    move-result v0

    return v0
.end method

.method public static blacklist isProduct(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isProduct()Z

    move-result v0

    return v0
.end method

.method public static blacklist isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isSystem()Z

    move-result v0

    return v0
.end method

.method public static blacklist isSystemExt(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isSystemExt()Z

    move-result v0

    return v0
.end method

.method public static blacklist isVendor(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isVendor()Z

    move-result v0

    return v0
.end method
