.class public Lcom/android/internal/pm/parsing/pkg/PackageImpl;
.super Ljava/lang/Object;
.source "PackageImpl.java"

# interfaces
.implements Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.implements Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
.implements Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;
.implements Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.implements Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/parsing/pkg/PackageImpl$Booleans;,
        Lcom/android/internal/pm/parsing/pkg/PackageImpl$Booleans2;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

.field protected static final blacklist sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

.field public static final blacklist sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

.field public static final blacklist sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

.field public static final blacklist sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

.field public static final blacklist sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

.field public static final blacklist sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

.field public static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field protected blacklist activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist adoptPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist anyDensity:Ljava/lang/Boolean;

.field protected blacklist apexSystemServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist appComponentFactory:Ljava/lang/String;

.field private blacklist attributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist autoRevokePermissions:I

.field private blacklist backupAgentName:Ljava/lang/String;

.field private blacklist banner:I

.field private blacklist baseRevisionCode:I

.field private blacklist category:I

.field private blacklist classLoaderName:Ljava/lang/String;

.field private blacklist className:Ljava/lang/String;

.field private blacklist compatibleWidthLimitDp:I

.field private blacklist compileSdkVersion:I

.field private blacklist compileSdkVersionCodeName:Ljava/lang/String;

.field private blacklist configPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist dataExtractionRules:I

.field private blacklist descriptionRes:I

.field private blacklist featureGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist fullBackupContent:I

.field private blacklist gwpAsanMode:I

.field private blacklist iconRes:I

.field private blacklist implicitPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist installLocation:I

.field protected blacklist instrumentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist keySetMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist labelRes:I

.field private blacklist largestWidthLimitDp:I

.field private blacklist libraryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist logo:I

.field private blacklist mAllowCrossUidActivitySwitchFromBelow:Z

.field protected blacklist mBaseApkPath:Ljava/lang/String;

.field private blacklist mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

.field private blacklist mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

.field private blacklist mBaseAppInfoFlags:I

.field private blacklist mBaseAppInfoPrivateFlags:I

.field private blacklist mBaseAppInfoPrivateFlagsExt:I

.field private blacklist mBooleans:J

.field private blacklist mBooleans2:J

.field blacklist mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

.field private blacklist mEmergencyInstaller:Ljava/lang/String;

.field private blacklist mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocaleConfigRes:I

.field private blacklist mLongVersionCode:J

.field protected blacklist mPath:Ljava/lang/String;

.field private blacklist mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSplits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mStorageUuid:Ljava/util/UUID;

.field private blacklist mUsesLibrariesSorted:[Ljava/lang/String;

.field private blacklist mUsesOptionalLibrariesSorted:[Ljava/lang/String;

.field private blacklist mUsesSdkLibrariesSorted:[Ljava/lang/String;

.field private blacklist mUsesStaticLibrariesSorted:[Ljava/lang/String;

.field private blacklist manageSpaceActivityName:Ljava/lang/String;

.field private final blacklist manifestPackageName:Ljava/lang/String;

.field private blacklist maxAspectRatio:F

.field private blacklist maxSdkVersion:I

.field private blacklist memtagMode:I

.field private blacklist metaData:Landroid/os/Bundle;

.field private blacklist mimeGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist minAspectRatio:F

.field private blacklist minExtensionVersions:Landroid/util/SparseIntArray;

.field private blacklist minSdkVersion:I

.field private blacklist nativeHeapZeroInitialized:I

.field protected blacklist nativeLibraryDir:Ljava/lang/String;

.field protected blacklist nativeLibraryRootDir:Ljava/lang/String;

.field private blacklist nativeLibraryRootRequiresIsa:Z

.field private blacklist networkSecurityConfigRes:I

.field private blacklist nonLocalizedLabel:Ljava/lang/CharSequence;

.field protected blacklist originalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist overlayCategory:Ljava/lang/String;

.field private blacklist overlayPriority:I

.field private blacklist overlayTarget:Ljava/lang/String;

.field private blacklist overlayTargetOverlayableName:Ljava/lang/String;

.field private blacklist overlayables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist packageName:Ljava/lang/String;

.field private blacklist permission:Ljava/lang/String;

.field protected blacklist permissionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist preferredActivityFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected blacklist primaryCpuAbi:Ljava/lang/String;

.field private blacklist processName:Ljava/lang/String;

.field private blacklist processes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist protectedBroadcasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist queriesIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist queriesPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist queriesProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist reqFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist requestRawExternalStorageAccess:Ljava/lang/Boolean;

.field protected blacklist requestedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist requiredAccountType:Ljava/lang/String;

.field private blacklist requiresSmallestWidthDp:I

.field private blacklist resizeable:Ljava/lang/Boolean;

.field private blacklist resizeableActivity:Ljava/lang/Boolean;

.field private blacklist restrictUpdateHash:[B

.field private blacklist restrictedAccountType:Ljava/lang/String;

.field private blacklist roundIconRes:I

.field private blacklist sdkLibVersionMajor:I

.field private blacklist sdkLibraryName:Ljava/lang/String;

.field protected blacklist secondaryCpuAbi:Ljava/lang/String;

.field protected blacklist secondaryNativeLibraryDir:Ljava/lang/String;

.field protected blacklist services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sharedUserId:Ljava/lang/String;

.field private blacklist sharedUserLabel:I

.field private blacklist signingDetails:Landroid/content/pm/SigningDetails;

.field private blacklist splitClassLoaderNames:[Ljava/lang/String;

.field protected blacklist splitCodePaths:[Ljava/lang/String;

.field private blacklist splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private blacklist splitFlags:[I

.field private blacklist splitNames:[Ljava/lang/String;

.field private blacklist splitRevisionCodes:[I

.field private blacklist staticSharedLibVersion:J

.field private blacklist staticSharedLibraryName:Ljava/lang/String;

.field private blacklist supportsExtraLargeScreens:Ljava/lang/Boolean;

.field private blacklist supportsLargeScreens:Ljava/lang/Boolean;

.field private blacklist supportsNormalScreens:Ljava/lang/Boolean;

.field private blacklist supportsSmallScreens:Ljava/lang/Boolean;

.field private blacklist targetSandboxVersion:I

.field private blacklist targetSdkVersion:I

.field private blacklist taskAffinity:Ljava/lang/String;

.field private blacklist theme:I

.field private blacklist uiOptions:I

.field private blacklist uid:I

.field private blacklist upgradeKeySets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesOptionalLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesOptionalNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesSdkLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesSdkLibrariesCertDigests:[[Ljava/lang/String;

.field private blacklist usesSdkLibrariesOptional:[Z

.field private blacklist usesSdkLibrariesVersionsMajor:[J

.field private blacklist usesStaticLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field private blacklist usesStaticLibrariesVersions:[J

.field protected blacklist versionCode:I

.field protected blacklist versionCodeMajor:I

.field private blacklist versionName:Ljava/lang/String;

.field protected blacklist volumeUuid:Ljava/lang/String;

.field private blacklist zygotePreloadName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    new-instance v0, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    const-wide v1, 0x100000000000L

    iput-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    const-wide/16 v1, 0x4

    iput-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->unparcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ltz v1, :cond_0

    new-array v2, v1, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ltz v1, :cond_1

    new-array v2, v1, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    sget-object v1, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    sget-object v1, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    sget-object v1, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-virtual {v1, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    const-class v1, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    const-class v1, Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SigningDetails;

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields2()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    const-wide v3, 0x100000000000L

    iput-wide v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    const-wide/16 v3, 0x4

    iput-wide v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    if-eqz p4, :cond_0

    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    const/16 v0, 0xb

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    nop

    const/4 v0, 0x5

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBaseRevisionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    const/4 v0, 0x2

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    const/16 v0, 0x9

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompileSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    const/16 v0, 0xa

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    const/4 v0, 0x6

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    const-wide/high16 v0, 0x10000000000000L

    invoke-direct {p0, v0, v1, p5}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-void
.end method

.method private blacklist addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .locals 5

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-gt v3, v4, :cond_0

    goto :goto_2

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Max limit on number of MIME Groups reached"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private blacklist assignDerivedFields2()V
    .locals 4

    invoke-static {p0}, Lcom/android/internal/pm/parsing/AppInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    invoke-static {p0}, Lcom/android/internal/pm/parsing/AppInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    nop

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->getHiddenApiWhitelistedApps()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/pm/parsing/AppInfoUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/AndroidPackage;Z)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_de"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-void
.end method

.method private blacklist buildAppClassNamesByProcess()Landroid/util/ArrayMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    nop

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static blacklist buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 8

    new-instance v7, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    return-object v7
.end method

.method public static blacklist forTesting(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 8

    new-instance v7, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    return-object v7
.end method

.method private blacklist getBoolean(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist getBoolean2(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)I
    .locals 2

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v0

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private blacklist makeImmutable()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-void
.end method

.method private blacklist setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 4

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    :goto_0
    return-object p0
.end method

.method private blacklist setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 4

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    :goto_0
    return-object p0
.end method

.method private static blacklist sortLibraries(Ljava/util/List;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    :cond_0
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public blacklist addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic blacklist addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic blacklist addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic blacklist addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    return-object p0
.end method

.method public blacklist addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic blacklist addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic blacklist addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic blacklist addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic blacklist addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic blacklist addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic blacklist addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public blacklist addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public blacklist addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic blacklist addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    const-class v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v0, v2, p4, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    invoke-static {v0, p5}, Lcom/android/internal/util/ArrayUtils;->appendBoolean([ZZ)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    return-object p0
.end method

.method public bridge synthetic blacklist addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    const-class v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v0, v2, p4, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;)",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    iput-object p4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    array-length v0, p1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist assignDerivedFields()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLongVersionCode:J

    return-void
.end method

.method public blacklist capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPriority(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic blacklist capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic blacklist clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic blacklist clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic blacklist clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAdoptPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getApexSystemServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAppComponentFactory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getApplicationClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAttributions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAutoRevokePermissions()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    return v0
.end method

.method public blacklist getBackupAgentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBannerResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    return v0
.end method

.method public blacklist getBaseApkPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseRevisionCode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    return v0
.end method

.method public blacklist getCategory()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    return v0
.end method

.method public blacklist getClassLoaderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCompatibleWidthLimitDp()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    return v0
.end method

.method public blacklist getCompileSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    return v0
.end method

.method public blacklist getCompileSdkVersionCodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getConfigPreferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDataExtractionRulesResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    return v0
.end method

.method public blacklist getDescriptionResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    return v0
.end method

.method public blacklist getEmergencyInstaller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFeatureGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getFullBackupContentResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    return v0
.end method

.method public blacklist getGwpAsanMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    return v0
.end method

.method public blacklist getIconResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    return v0
.end method

.method public blacklist getImplicitPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getInstallLocation()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    return v0
.end method

.method public blacklist getInstrumentations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getKeySetMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getLabelResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    return v0
.end method

.method public blacklist getLargestWidthLimitDp()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    return v0
.end method

.method public blacklist getLibraryNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLocaleConfigResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    return v0
.end method

.method public blacklist getLogoResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    return v0
.end method

.method public blacklist getLongVersionCode()J
    .locals 2

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getManageSpaceActivityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getManifestPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMaxAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    return v0
.end method

.method public blacklist getMaxSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    return v0
.end method

.method public blacklist getMemtagMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    return v0
.end method

.method public blacklist getMetaData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getMimeGroups()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getMinAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    return v0
.end method

.method public blacklist getMinExtensionVersions()Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public blacklist getMinSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    return v0
.end method

.method public blacklist getNativeHeapZeroInitialized()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    return v0
.end method

.method public blacklist getNativeLibraryDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNativeLibraryRootDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNetworkSecurityConfigResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    return v0
.end method

.method public blacklist getNonLocalizedLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getOriginalPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getOverlayCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayPriority()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    return v0
.end method

.method public blacklist getOverlayTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayTargetOverlayableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPermissionGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPreferredActivityFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPrimaryCpuAbi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public blacklist getProcesses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getProtectedBroadcasts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQueriesIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQueriesPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQueriesProviders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getReceivers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRequestedFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRequestedPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getRequiredAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiresSmallestWidthDp()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    return v0
.end method

.method public blacklist getResizeableActivity()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getRestrictUpdateHash()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    return-object v0
.end method

.method public blacklist getRestrictedAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRoundIconResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    return v0
.end method

.method public blacklist getSdkLibVersionMajor()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    return v0
.end method

.method public blacklist getSdkLibraryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSecondaryCpuAbi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSecondaryNativeLibraryDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSharedUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSharedUserLabelResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    return v0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public blacklist getSplitClassLoaderNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public blacklist getSplitCodePaths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public blacklist getSplitDependencies()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    :goto_0
    return-object v0
.end method

.method public blacklist getSplitFlags()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    return-object v0
.end method

.method public blacklist getSplitNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public blacklist getSplitRevisionCodes()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    :goto_0
    return-object v0
.end method

.method public blacklist getSplits()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseRevisionCode()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->isDeclaredHavingCode()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v8

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getClassLoaderName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    aget-object v10, v3, v1

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v11, v3, v1

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    aget v12, v3, v1

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    aget v13, v3, v1

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aget-object v14, v3, v1

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    move v6, v8

    :goto_3
    if-ge v6, v5, :cond_3

    aget v7, v3, v6

    if-ltz v7, :cond_2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->fillDependencies(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    :cond_5
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getStaticSharedLibraryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStaticSharedLibraryVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    return-wide v0
.end method

.method public blacklist getStorageUuid()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public blacklist getTargetSandboxVersion()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    return v0
.end method

.method public blacklist getTargetSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    return v0
.end method

.method public blacklist getTaskAffinity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThemeResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    return v0
.end method

.method public blacklist getUiOptions()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    return v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    return v0
.end method

.method public blacklist getUpgradeKeySets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getUsesLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesLibrariesSorted()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesNativeLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesOptionalLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesOptionalLibrariesSorted()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesOptionalNativeLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesSdkLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesOptional()[Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesSorted()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesVersionsMajor()[J
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    return-object v0
.end method

.method public blacklist getUsesStaticLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesSorted()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesVersions()[J
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    return-object v0
.end method

.method public blacklist getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    return v0
.end method

.method public blacklist getVersionCodeMajor()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    return v0
.end method

.method public blacklist getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVolumeUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getZygotePreloadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasPreserveLegacyExternalStorage()Z
    .locals 2

    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasRequestForegroundServiceExemption()Z
    .locals 2

    const-wide v0, 0x400000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasRequestRawExternalStorageAccess()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields2()V

    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->makeImmutable()V

    return-object p0
.end method

.method public blacklist hideAsParsed()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    return-object p0
.end method

.method public bridge synthetic blacklist hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist is32BitAbiPreferred()Z
    .locals 2

    const-wide v0, 0x10000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAllowAudioPlaybackCapture()Z
    .locals 2

    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAllowCrossUidActivitySwitchFromBelow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    return v0
.end method

.method public blacklist isAllowNativeHeapPointerTagging()Z
    .locals 2

    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAnyDensity()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isApex()Z
    .locals 2

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAttributionsUserVisible()Z
    .locals 2

    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isBackupAllowed()Z
    .locals 2

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isBackupInForeground()Z
    .locals 2

    const-wide/32 v0, 0x1000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isClearUserDataAllowed()Z
    .locals 2

    const-wide/16 v0, 0x800

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isClearUserDataOnFailedRestoreAllowed()Z
    .locals 2

    const-wide/32 v0, 0x40000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isCleartextTrafficAllowed()Z
    .locals 2

    const-wide/16 v0, 0x2000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isCoreApp()Z
    .locals 2

    const-wide/high16 v0, 0x10000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isCrossProfile()Z
    .locals 2

    const-wide v0, 0x80000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDebuggable()Z
    .locals 2

    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDeclaredHavingCode()Z
    .locals 2

    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDefaultToDeviceProtectedStorage()Z
    .locals 2

    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDirectBootAware()Z
    .locals 2

    const-wide/32 v0, 0x8000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 2

    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isExternalStorage()Z
    .locals 2

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isExtraLargeScreensSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isExtractNativeLibrariesRequested()Z
    .locals 2

    const-wide/32 v0, 0x20000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isFactoryTest()Z
    .locals 2

    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isForceQueryable()Z
    .locals 2

    const-wide v0, 0x40000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isFullBackupOnly()Z
    .locals 2

    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isGame()Z
    .locals 2

    const-wide/32 v0, 0x40000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isHardwareAccelerated()Z
    .locals 2

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isHasDomainUrls()Z
    .locals 2

    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isIsolatedSplitLoading()Z
    .locals 2

    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isKillAfterRestoreAllowed()Z
    .locals 2

    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isLargeHeap()Z
    .locals 2

    const-wide/16 v0, 0x1000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isLargeScreensSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isLeavingSharedUser()Z
    .locals 2

    const-wide/high16 v0, 0x8000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isMultiArch()Z
    .locals 2

    const-wide/32 v0, 0x10000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isNativeLibraryRootRequiresIsa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return v0
.end method

.method public blacklist isNonSdkApiRequested()Z
    .locals 2

    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isNormalScreensSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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
    return v0
.end method

.method public blacklist isOdm()Z
    .locals 2

    const-wide/high16 v0, 0x2000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isOem()Z
    .locals 2

    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isOnBackInvokedCallbackEnabled()Z
    .locals 2

    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isOverlayIsStatic()Z
    .locals 2

    const-wide v0, 0x8000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isPartiallyDirectBootAware()Z
    .locals 2

    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isPersistent()Z
    .locals 2

    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isPrivileged()Z
    .locals 2

    const-wide/high16 v0, 0x200000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isProduct()Z
    .locals 2

    const-wide/high16 v0, 0x1000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isProfileable()Z
    .locals 2

    const-wide v0, 0x200000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isProfileableByShell()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x800000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isRequestLegacyExternalStorage()Z
    .locals 2

    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isRequiredForAllUsers()Z
    .locals 2

    const-wide v0, 0x4000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isResetEnabledSettingsOnAppDataCleared()Z
    .locals 2

    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isResizeable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isResizeableActivityViaSdkVersion()Z
    .locals 2

    const-wide/32 v0, 0x20000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isResourceOverlay()Z
    .locals 2

    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isRestoreAnyVersion()Z
    .locals 2

    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isRtlSupported()Z
    .locals 2

    const-wide/16 v0, 0x4000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSaveStateDisallowed()Z
    .locals 2

    const-wide v0, 0x800000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSdkLibrary()Z
    .locals 2

    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSignedWithPlatformKey()Z
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSmallScreensSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isStaticSharedLibrary()Z
    .locals 2

    const-wide/32 v0, 0x80000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isStub()Z
    .locals 2

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSystem()Z
    .locals 2

    const-wide/high16 v0, 0x20000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSystemExt()Z
    .locals 2

    const-wide/high16 v0, 0x100000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isTaskReparentingAllowed()Z
    .locals 2

    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isTestOnly()Z
    .locals 2

    const-wide/32 v0, 0x8000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isUpdatableSystem()Z
    .locals 2

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .locals 2

    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isUserDataFragile()Z
    .locals 2

    const-wide v0, 0x400000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isVendor()Z
    .locals 2

    const-wide/high16 v0, 0x800000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isVisibleToInstantApps()Z
    .locals 2

    const-wide v0, 0x20000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isVmSafeMode()Z
    .locals 2

    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    invoke-static {v4, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    iget-object v5, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_2

    invoke-static {v5, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    iget-object v6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_4

    invoke-static {v6, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-object p0
.end method

.method public bridge synthetic blacklist markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removePermission(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic blacklist removePermission(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removePermission(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic blacklist removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set32BitAbiPreferred(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x10000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v2, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v4, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v5, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-object p0
.end method

.method public bridge synthetic blacklist setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllowCrossUidActivitySwitchFromBelow(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    return-object p0
.end method

.method public blacklist setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAnyDensity(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic blacklist setAnyDensity(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAnyDensity(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setApex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setApex(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setApex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAttributionsAreUserVisible(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 2

    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public blacklist setAutoRevokePermissions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    return-object p0
.end method

.method public bridge synthetic blacklist setAutoRevokePermissions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAutoRevokePermissions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBackupAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBackupAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBackupInForeground(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x1000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setBackupInForeground(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBackupInForeground(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBannerResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    return-object p0
.end method

.method public bridge synthetic blacklist setBannerResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBannerResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBaseRevisionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    return-object p0
.end method

.method public bridge synthetic blacklist setBaseRevisionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBaseRevisionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCategory(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    return-object p0
.end method

.method public bridge synthetic blacklist setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCategory(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setClearUserDataAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x800

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x40000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x2000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    return-object p0
.end method

.method public bridge synthetic blacklist setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCompileSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic blacklist setCompileSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompileSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x10000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCrossProfile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x80000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setCrossProfile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCrossProfile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    return-object p0
.end method

.method public bridge synthetic blacklist setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDebuggable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setDebuggable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDebuggable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDeclaredHavingCode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDescriptionResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    return-object p0
.end method

.method public bridge synthetic blacklist setDescriptionResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDescriptionResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x8000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setEnabled(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setEnabled(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExtraLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic blacklist setExtraLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setExtraLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x20000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setForceQueryable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x40000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setForceQueryable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setForceQueryable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFullBackupContentResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    return-object p0
.end method

.method public bridge synthetic blacklist setFullBackupContentResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setFullBackupContentResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFullBackupOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setFullBackupOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setFullBackupOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setGame(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x40000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setGame(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setGame(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setGwpAsanMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    return-object p0
.end method

.method public bridge synthetic blacklist setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setGwpAsanMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setHardwareAccelerated(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setHardwareAccelerated(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setHasDomainUrls(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setHasDomainUrls(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setHasDomainUrls(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    return-object p0
.end method

.method public bridge synthetic blacklist setIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setInstallLocation(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    return-object p0
.end method

.method public bridge synthetic blacklist setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setInstallLocation(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setIsolatedSplitLoading(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setIsolatedSplitLoading(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist setLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    return-object p0
.end method

.method public bridge synthetic blacklist setLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLargeHeap(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x1000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setLargeHeap(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLargeHeap(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic blacklist setLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLargestWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    return-object p0
.end method

.method public bridge synthetic blacklist setLargestWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLargestWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLeavingSharedUser(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x8000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setLeavingSharedUser(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLeavingSharedUser(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLocaleConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    return-object p0
.end method

.method public bridge synthetic blacklist setLocaleConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLocaleConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLogoResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    return-object p0
.end method

.method public bridge synthetic blacklist setLogoResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLogoResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMaxAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    return-object p0
.end method

.method public bridge synthetic blacklist setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMaxAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMaxSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic blacklist setMaxSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMaxSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMemtagMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    return-object p0
.end method

.method public bridge synthetic blacklist setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMemtagMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public bridge synthetic blacklist setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    return-object p0
.end method

.method public bridge synthetic blacklist setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMinAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public bridge synthetic blacklist setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic blacklist setMinSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMinSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMultiArch(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x10000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setMultiArch(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMultiArch(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    return-object p0
.end method

.method public bridge synthetic blacklist setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return-object p0
.end method

.method public bridge synthetic blacklist setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    return-object p0
.end method

.method public bridge synthetic blacklist setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic blacklist setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNonSdkApiRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setNonSdkApiRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNonSdkApiRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNormalScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic blacklist setNormalScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNormalScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOdm(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x2000000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setOdm(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOdm(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setOem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOnBackInvokedCallbackEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 2

    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public blacklist setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayIsStatic(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x8000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setOverlayIsStatic(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayIsStatic(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayPriority(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayPriority(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayPriority(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v5, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_4

    iget-object v6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v7, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_5

    iget-object v7, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v8, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    iget-object v6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_6

    iget-object v8, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v9, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_6
    return-object p0
.end method

.method public bridge synthetic blacklist setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setPersistent(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x200000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;)",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic blacklist setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProduct(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x1000000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setProduct(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProduct(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProfileable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    const-wide v1, 0x200000000000L

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setProfileable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProfileable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProfileableByShell(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x800000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setProfileableByShell(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProfileableByShell(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x400000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic blacklist setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequiredForAllUsers(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x4000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setRequiredForAllUsers(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequiredForAllUsers(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    return-object p0
.end method

.method public bridge synthetic blacklist setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 2

    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public blacklist setResizeable(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic blacklist setResizeable(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResizeable(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic blacklist setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x20000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResourceOverlay(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setResourceOverlay(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResourceOverlay(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRestoreAnyVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setRestoreAnyVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestoreAnyVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    return-object p0
.end method

.method public bridge synthetic blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRoundIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    return-object p0
.end method

.method public bridge synthetic blacklist setRoundIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRoundIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRtlSupported(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x4000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setRtlSupported(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRtlSupported(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSaveStateDisallowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x800000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setSaveStateDisallowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSaveStateDisallowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSdkLibVersionMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    return-object p0
.end method

.method public bridge synthetic blacklist setSdkLibVersionMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSdkLibVersionMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSdkLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setSdkLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSdkLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSharedUserLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    return-object p0
.end method

.method public bridge synthetic blacklist setSharedUserLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSharedUserLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public bridge synthetic blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSmallScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic blacklist setSmallScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSmallScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-object p0
.end method

.method public bridge synthetic blacklist setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 4

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic blacklist setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSplitHasCode(IZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    aget v1, v1, p1

    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    aget v1, v1, p1

    and-int/lit8 v1, v1, -0x5

    :goto_0
    aput v1, v0, p1

    return-object p0
.end method

.method public bridge synthetic blacklist setSplitHasCode(IZ)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSplitHasCode(IZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStaticSharedLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x80000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setStaticSharedLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStaticSharedLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    return-object p0
.end method

.method public bridge synthetic blacklist setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStub(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setStub(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStub(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x20000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x100000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTargetSandboxVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    return-object p0
.end method

.method public bridge synthetic blacklist setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTargetSandboxVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTargetSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic blacklist setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTargetSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTaskReparentingAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setTaskReparentingAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTaskReparentingAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTestOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x8000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setTestOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTestOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setThemeResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    return-object p0
.end method

.method public bridge synthetic blacklist setThemeResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setThemeResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUiOptions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    return-object p0
.end method

.method public bridge synthetic blacklist setUiOptions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUiOptions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUid(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    return-object p0
.end method

.method public bridge synthetic blacklist setUid(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUid(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic blacklist setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUseEmbeddedDex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUserDataFragile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x400000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUserDataFragile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVendor(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x800000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic blacklist setVendor(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVendor(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    return-object p0
.end method

.method public bridge synthetic blacklist setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setVersionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    return-object p0
.end method

.method public bridge synthetic blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVisibleToInstantApps(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x20000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVmSafeMode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setVmSafeMode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVmSafeMode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist sortActivities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic blacklist sortActivities()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortActivities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sortReceivers()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic blacklist sortReceivers()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortReceivers()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sortServices()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic blacklist sortServices()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortServices()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    const-string v1, ":complete"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return-object v0
.end method

.method public blacklist toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;
    .locals 3

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->isCrossProfile()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    const-wide v1, 0x100000000000L

    invoke-direct {p0, v1, v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    nop

    sget-boolean v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    :goto_0
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v1, v2

    :goto_2
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setGwpAsanMode(I)V

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setMemtagMode(I)V

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setNativeHeapZeroInitialized(I)V

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLongVersionCode:J

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->buildAppClassNamesByProcess()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setAppClassNamesByProcess(Landroid/util/ArrayMap;)V

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setLocaleConfigRes(I)V

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->parcel(Ljava/util/Map;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
