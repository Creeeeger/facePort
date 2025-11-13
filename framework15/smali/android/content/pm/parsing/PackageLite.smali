.class public Landroid/content/pm/parsing/PackageLite;
.super Ljava/lang/Object;
.source "PackageLite.java"


# instance fields
.field private final blacklist mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

.field private final blacklist mBaseApkPath:Ljava/lang/String;

.field private final blacklist mBaseRequiredSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBaseRevisionCode:I

.field private final blacklist mConfigForSplit:[Ljava/lang/String;

.field private final blacklist mCoreApp:Z

.field private final blacklist mDebuggable:Z

.field private final blacklist mExtractNativeLibs:Z

.field private final blacklist mInstallLocation:I

.field private final blacklist mIsFeatureSplits:[Z

.field private final blacklist mIsSdkLibrary:Z

.field private final blacklist mIsolatedSplits:Z

.field private final blacklist mMultiArch:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPath:Ljava/lang/String;

.field private final blacklist mProfileableByShell:Z

.field private final blacklist mRequiredSplitTypes:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSigningDetails:Landroid/content/pm/SigningDetails;

.field private final blacklist mSplitApkPaths:[Ljava/lang/String;

.field private final blacklist mSplitNames:[Ljava/lang/String;

.field private final blacklist mSplitRequired:Z

.field private final blacklist mSplitRevisionCodes:[I

.field private final blacklist mSplitTypes:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetSdk:I

.field private final blacklist mUse32bitAbi:Z

.field private final blacklist mUseEmbeddedDex:Z

.field private final blacklist mUsesSplitNames:[Ljava/lang/String;

.field private final blacklist mVerifiers:[Landroid/content/pm/VerifierInfo;

.field private final blacklist mVersionCode:I

.field private final blacklist mVersionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ApkLite;",
            "[",
            "Ljava/lang/String;",
            "[Z[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[II[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/parsing/PackageLite;->mPath:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCodeMajor()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mInstallLocation:I

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getRevisionCode()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRevisionCode:I

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isCoreApp()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mCoreApp:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isDebuggable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mDebuggable:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isMultiArch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mMultiArch:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isUse32bitAbi()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUse32bitAbi:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isExtractNativeLibs()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mExtractNativeLibs:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isIsolatedSplits()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsolatedSplits:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isUseEmbeddedDex()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUseEmbeddedDex:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    iput-object p11, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isSplitRequired()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/content/pm/parsing/PackageLite;->hasAnyRequiredSplitTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRequired:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isProfileableByShell()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mProfileableByShell:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isIsSdkLibrary()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsSdkLibrary:Z

    iput-object p4, p0, Landroid/content/pm/parsing/PackageLite;->mSplitNames:[Ljava/lang/String;

    iput-object p12, p0, Landroid/content/pm/parsing/PackageLite;->mSplitTypes:[Ljava/util/Set;

    iput-object p5, p0, Landroid/content/pm/parsing/PackageLite;->mIsFeatureSplits:[Z

    iput-object p6, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSplitNames:[Ljava/lang/String;

    iput-object p7, p0, Landroid/content/pm/parsing/PackageLite;->mConfigForSplit:[Ljava/lang/String;

    iput-object p8, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    iput-object p9, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRevisionCodes:[I

    iput p10, p0, Landroid/content/pm/parsing/PackageLite;->mTargetSdk:I

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private blacklist hasAnyRequiredSplitTypes()Z
    .locals 3

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    new-instance v2, Landroid/content/pm/parsing/PackageLite$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/content/pm/parsing/PackageLite$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic blacklist lambda$hasAnyRequiredSplitTypes$0(Ljava/util/Set;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist getAllApkPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public blacklist getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-object v0
.end method

.method public blacklist getBaseApkPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseRequiredSplitTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getBaseRevisionCode()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRevisionCode:I

    return v0
.end method

.method public blacklist getConfigForSplit()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mConfigForSplit:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInstallLocation()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mInstallLocation:I

    return v0
.end method

.method public blacklist getIsFeatureSplits()[Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsFeatureSplits:[Z

    return-object v0
.end method

.method public blacklist getLongVersionCode()J
    .locals 2

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    iget v1, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredSplitTypes()[Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public blacklist getSplitApkPaths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitRevisionCodes()[I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRevisionCodes:[I

    return-object v0
.end method

.method public blacklist getSplitTypes()[Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitTypes:[Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getTargetSdk()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mTargetSdk:I

    return v0
.end method

.method public blacklist getUsesSplitNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSplitNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVerifiers()[Landroid/content/pm/VerifierInfo;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    return-object v0
.end method

.method public blacklist getVersionCode()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    return v0
.end method

.method public blacklist getVersionCodeMajor()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    return v0
.end method

.method public blacklist isCoreApp()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mCoreApp:Z

    return v0
.end method

.method public blacklist isDebuggable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mDebuggable:Z

    return v0
.end method

.method public blacklist isExtractNativeLibs()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mExtractNativeLibs:Z

    return v0
.end method

.method public blacklist isIsSdkLibrary()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsSdkLibrary:Z

    return v0
.end method

.method public blacklist isIsolatedSplits()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsolatedSplits:Z

    return v0
.end method

.method public blacklist isMultiArch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mMultiArch:Z

    return v0
.end method

.method public blacklist isProfileableByShell()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mProfileableByShell:Z

    return v0
.end method

.method public blacklist isSplitRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRequired:Z

    return v0
.end method

.method public blacklist isUse32bitAbi()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUse32bitAbi:Z

    return v0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUseEmbeddedDex:Z

    return v0
.end method
