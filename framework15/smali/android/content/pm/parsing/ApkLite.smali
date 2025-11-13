.class public Landroid/content/pm/parsing/ApkLite;
.super Ljava/lang/Object;
.source "ApkLite.java"


# instance fields
.field private final blacklist mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

.field private final blacklist mConfigForSplit:Ljava/lang/String;

.field private final blacklist mCoreApp:Z

.field private final blacklist mDebuggable:Z

.field private final blacklist mEmergencyInstaller:Ljava/lang/String;

.field private final blacklist mExtractNativeLibs:Z

.field private final blacklist mFeatureSplit:Z

.field private final blacklist mHasDeviceAdminReceiver:Z

.field private final blacklist mInstallLocation:I

.field private final blacklist mIsSdkLibrary:Z

.field private final blacklist mIsolatedSplits:Z

.field private final blacklist mMinSdkVersion:I

.field private final blacklist mMultiArch:Z

.field private final blacklist mOverlayIsStatic:Z

.field private final blacklist mOverlayPriority:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPath:Ljava/lang/String;

.field private final blacklist mProfileableByShell:Z

.field private final blacklist mRequiredSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequiredSystemPropertyName:Ljava/lang/String;

.field private final blacklist mRequiredSystemPropertyValue:Ljava/lang/String;

.field private final blacklist mRevisionCode:I

.field private final blacklist mRollbackDataPolicy:I

.field private final blacklist mSigningDetails:Landroid/content/pm/SigningDetails;

.field private final blacklist mSplitName:Ljava/lang/String;

.field private final blacklist mSplitRequired:Z

.field private final blacklist mSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetPackageName:Ljava/lang/String;

.field private final blacklist mTargetSdkVersion:I

.field private final blacklist mUpdatableSystem:Z

.field private final blacklist mUse32bitAbi:Z

.field private final blacklist mUseEmbeddedDex:Z

.field private final blacklist mUsesSplitName:Ljava/lang/String;

.field private final blacklist mVerifiers:[Landroid/content/pm/VerifierInfo;

.field private final blacklist mVersionCode:I

.field private final blacklist mVersionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/ArchivedPackageParcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    invoke-direct {p0}, Landroid/content/pm/parsing/ApkLite;->hasAnyRequiredSplitTypes()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    iget v2, p2, Landroid/content/pm/ArchivedPackageParcel;->versionCode:I

    iput v2, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    iget v2, p2, Landroid/content/pm/ArchivedPackageParcel;->versionCodeMajor:I

    iput v2, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    new-array v2, v1, [Landroid/content/pm/VerifierInfo;

    iput-object v2, p0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    iget-object v2, p2, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    iput-object v2, p0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    iget v3, p2, Landroid/content/pm/ArchivedPackageParcel;->targetSdkVersion:I

    iput v3, p0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    iput-boolean v2, p0, Landroid/content/pm/parsing/ApkLite;->mUpdatableSystem:Z

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mEmergencyInstaller:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/parsing/ApkLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/SigningDetails;ZZZZZZZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Set;ZZZLjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIIII",
            "Ljava/util/List<",
            "Landroid/content/pm/VerifierInfo;",
            ">;",
            "Landroid/content/pm/SigningDetails;",
            "ZZZZZZZZ",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    move-object/from16 v4, p31

    iput-object v4, v0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    move/from16 v5, p4

    iput-boolean v5, v0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    move-object/from16 v6, p5

    iput-object v6, v0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    move-object/from16 v7, p6

    iput-object v7, v0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    move-object/from16 v8, p30

    iput-object v8, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    if-nez p7, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/parsing/ApkLite;->hasAnyRequiredSplitTypes()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    move/from16 v9, p8

    iput v9, v0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    move/from16 v10, p9

    iput v10, v0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    move/from16 v11, p10

    iput v11, v0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    move/from16 v12, p11

    iput v12, v0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/pm/VerifierInfo;

    move-object/from16 v14, p12

    invoke-interface {v14, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/VerifierInfo;

    iput-object v13, v0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move/from16 v15, p14

    iput-boolean v15, v0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    move/from16 v1, p23

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    move/from16 v1, p24

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    move/from16 v1, p27

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    move/from16 v1, p28

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    move/from16 v1, p29

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    move/from16 v1, p32

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    move/from16 v1, p33

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    move/from16 v1, p34

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mUpdatableSystem:Z

    move-object/from16 v1, p35

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mEmergencyInstaller:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private blacklist hasAnyRequiredSplitTypes()Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-object v0
.end method

.method public blacklist getConfigForSplit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEmergencyInstaller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mEmergencyInstaller:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInstallLocation()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    return v0
.end method

.method public blacklist getLongVersionCode()J
    .locals 2

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    iget v1, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinSdkVersion()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    return v0
.end method

.method public blacklist getOverlayPriority()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredSplitTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getRequiredSystemPropertyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredSystemPropertyValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRevisionCode()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    return v0
.end method

.method public blacklist getRollbackDataPolicy()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    return v0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public blacklist getSplitName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getTargetPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTargetSdkVersion()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    return v0
.end method

.method public blacklist getUsesSplitName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVerifiers()[Landroid/content/pm/VerifierInfo;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    return-object v0
.end method

.method public blacklist getVersionCode()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    return v0
.end method

.method public blacklist getVersionCodeMajor()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    return v0
.end method

.method public blacklist isCoreApp()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    return v0
.end method

.method public blacklist isDebuggable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    return v0
.end method

.method public blacklist isExtractNativeLibs()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    return v0
.end method

.method public blacklist isFeatureSplit()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    return v0
.end method

.method public blacklist isHasDeviceAdminReceiver()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    return v0
.end method

.method public blacklist isIsSdkLibrary()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    return v0
.end method

.method public blacklist isIsolatedSplits()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    return v0
.end method

.method public blacklist isMultiArch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    return v0
.end method

.method public blacklist isOverlayIsStatic()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    return v0
.end method

.method public blacklist isProfileableByShell()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    return v0
.end method

.method public blacklist isSplitRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    return v0
.end method

.method public blacklist isUpdatableSystem()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUpdatableSystem:Z

    return v0
.end method

.method public blacklist isUse32bitAbi()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    return v0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    return v0
.end method
