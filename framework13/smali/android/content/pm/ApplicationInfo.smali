.class public Landroid/content/pm/ApplicationInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ApplicationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ApplicationInfo$RawExternalStorage;,
        Landroid/content/pm/ApplicationInfo$DisplayNameComparator;,
        Landroid/content/pm/ApplicationInfo$HiddenApiEnforcementPolicy;,
        Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;,
        Landroid/content/pm/ApplicationInfo$MemtagMode;,
        Landroid/content/pm/ApplicationInfo$GwpAsanMode;,
        Landroid/content/pm/ApplicationInfo$Category;,
        Landroid/content/pm/ApplicationInfo$ApplicationInfoPrivateFlagsExt;,
        Landroid/content/pm/ApplicationInfo$ApplicationInfoPrivateFlags;
    }
.end annotation


# static fields
.field public static final blacklist AUTO_REVOKE_ALLOWED:I = 0x0

.field public static final blacklist AUTO_REVOKE_DISALLOWED:I = 0x2

.field public static final blacklist AUTO_REVOKE_DISCOURAGED:I = 0x1

.field public static final whitelist CATEGORY_ACCESSIBILITY:I = 0x8

.field public static final whitelist CATEGORY_AUDIO:I = 0x1

.field public static final whitelist CATEGORY_GAME:I = 0x0

.field public static final whitelist CATEGORY_IMAGE:I = 0x3

.field public static final whitelist CATEGORY_MAPS:I = 0x6

.field public static final whitelist CATEGORY_NEWS:I = 0x5

.field public static final whitelist CATEGORY_PRODUCTIVITY:I = 0x7

.field public static final whitelist CATEGORY_SOCIAL:I = 0x4

.field public static final whitelist CATEGORY_UNDEFINED:I = -0x1

.field public static final whitelist CATEGORY_VIDEO:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_ALLOW_BACKUP:I = 0x8000

.field public static final whitelist FLAG_ALLOW_CLEAR_USER_DATA:I = 0x40

.field public static final whitelist FLAG_ALLOW_TASK_REPARENTING:I = 0x20

.field public static final whitelist FLAG_DEBUGGABLE:I = 0x2

.field public static final whitelist FLAG_EXTERNAL_STORAGE:I = 0x40000

.field public static final whitelist FLAG_EXTRACT_NATIVE_LIBS:I = 0x10000000

.field public static final whitelist FLAG_FACTORY_TEST:I = 0x10

.field public static final whitelist FLAG_FULL_BACKUP_ONLY:I = 0x4000000

.field public static final whitelist FLAG_HARDWARE_ACCELERATED:I = 0x20000000

.field public static final whitelist FLAG_HAS_CODE:I = 0x4

.field public static final whitelist FLAG_INSTALLED:I = 0x800000

.field public static final whitelist FLAG_IS_DATA_ONLY:I = 0x1000000

.field public static final whitelist FLAG_IS_GAME:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_KILL_AFTER_RESTORE:I = 0x10000

.field public static final whitelist FLAG_LARGE_HEAP:I = 0x100000

.field public static final whitelist FLAG_MULTIARCH:I = -0x80000000

.field public static final whitelist FLAG_PERSISTENT:I = 0x8

.field public static final whitelist FLAG_RESIZEABLE_FOR_SCREENS:I = 0x1000

.field public static final whitelist FLAG_RESTORE_ANY_VERSION:I = 0x20000

.field public static final whitelist FLAG_STOPPED:I = 0x200000

.field public static final whitelist FLAG_SUPPORTS_LARGE_SCREENS:I = 0x800

.field public static final whitelist FLAG_SUPPORTS_NORMAL_SCREENS:I = 0x400

.field public static final whitelist FLAG_SUPPORTS_RTL:I = 0x400000

.field public static final whitelist FLAG_SUPPORTS_SCREEN_DENSITIES:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_SUPPORTS_SMALL_SCREENS:I = 0x200

.field public static final whitelist FLAG_SUPPORTS_XLARGE_SCREENS:I = 0x80000

.field public static final whitelist FLAG_SUSPENDED:I = 0x40000000

.field public static final whitelist FLAG_SYSTEM:I = 0x1

.field public static final whitelist FLAG_TEST_ONLY:I = 0x100

.field public static final whitelist FLAG_UPDATED_SYSTEM_APP:I = 0x80

.field public static final whitelist FLAG_USES_CLEARTEXT_TRAFFIC:I = 0x8000000

.field public static final whitelist FLAG_VM_SAFE_MODE:I = 0x4000

.field public static final whitelist GWP_ASAN_ALWAYS:I = 0x1

.field public static final whitelist GWP_ASAN_DEFAULT:I = -0x1

.field public static final whitelist GWP_ASAN_NEVER:I = 0x0

.field public static final greylist-max-o HIDDEN_API_ENFORCEMENT_DEFAULT:I = -0x1

.field public static final blacklist HIDDEN_API_ENFORCEMENT_DISABLED:I = 0x0

.field public static final blacklist HIDDEN_API_ENFORCEMENT_ENABLED:I = 0x2

.field public static final greylist-max-o HIDDEN_API_ENFORCEMENT_JUST_WARN:I = 0x1

.field private static final greylist-max-o HIDDEN_API_ENFORCEMENT_MAX:I = 0x2

.field private static final blacklist HIDDEN_API_ENFORCEMENT_MIN:I = -0x1

.field public static final whitelist MEMTAG_ASYNC:I = 0x1

.field public static final whitelist MEMTAG_DEFAULT:I = -0x1

.field public static final whitelist MEMTAG_OFF:I = 0x0

.field public static final whitelist MEMTAG_SYNC:I = 0x2

.field public static final greylist-max-o METADATA_PRELOADED_FONTS:Ljava/lang/String; = "preloaded_fonts"

.field public static final greylist-max-o PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE:I = 0x400

.field public static final greylist-max-o PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION:I = 0x1000

.field public static final greylist-max-o PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE:I = 0x800

.field public static final blacklist PRIVATE_FLAG_ALLOW_AUDIO_PLAYBACK_CAPTURE:I = 0x8000000

.field public static final blacklist PRIVATE_FLAG_ALLOW_CLEAR_USER_DATA_ON_FAILED_RESTORE:I = 0x4000000

.field public static final blacklist PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING:I = -0x80000000

.field public static final greylist-max-o PRIVATE_FLAG_BACKUP_IN_FOREGROUND:I = 0x2000

.field public static final greylist-max-o PRIVATE_FLAG_CANT_SAVE_STATE:I = 0x2

.field public static final greylist-max-o PRIVATE_FLAG_DEFAULT_TO_DEVICE_PROTECTED_STORAGE:I = 0x20

.field public static final greylist-max-o PRIVATE_FLAG_DIRECT_BOOT_AWARE:I = 0x40

.field public static final blacklist PRIVATE_FLAG_EXT_ATTRIBUTIONS_ARE_USER_VISIBLE:I = 0x4

.field public static final blacklist PRIVATE_FLAG_EXT_ENABLE_ON_BACK_INVOKED_CALLBACK:I = 0x8

.field public static final blacklist PRIVATE_FLAG_EXT_PROFILEABLE:I = 0x1

.field public static final blacklist PRIVATE_FLAG_EXT_REQUEST_FOREGROUND_SERVICE_EXEMPTION:I = 0x2

.field public static final greylist-max-o PRIVATE_FLAG_HAS_DOMAIN_URLS:I = 0x10

.field public static final blacklist PRIVATE_FLAG_HAS_FRAGILE_USER_DATA:I = 0x1000000

.field public static final greylist-max-o PRIVATE_FLAG_HIDDEN:I = 0x1

.field public static final greylist-max-o PRIVATE_FLAG_INSTANT:I = 0x80

.field public static final greylist-max-o PRIVATE_FLAG_ISOLATED_SPLIT_LOADING:I = 0x8000

.field public static final blacklist PRIVATE_FLAG_IS_RESOURCE_OVERLAY:I = 0x10000000

.field public static final blacklist PRIVATE_FLAG_ODM:I = 0x40000000

.field public static final greylist-max-o PRIVATE_FLAG_OEM:I = 0x20000

.field public static final greylist-max-o PRIVATE_FLAG_PARTIALLY_DIRECT_BOOT_AWARE:I = 0x100

.field public static final greylist PRIVATE_FLAG_PRIVILEGED:I = 0x8

.field public static final greylist-max-o PRIVATE_FLAG_PRODUCT:I = 0x80000

.field public static final blacklist PRIVATE_FLAG_PROFILEABLE_BY_SHELL:I = 0x800000

.field public static final blacklist PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE:I = 0x20000000

.field public static final greylist-max-o PRIVATE_FLAG_REQUIRED_FOR_SYSTEM_USER:I = 0x200

.field public static final greylist-max-o PRIVATE_FLAG_SIGNED_WITH_PLATFORM_KEY:I = 0x100000

.field public static final greylist-max-o PRIVATE_FLAG_STATIC_SHARED_LIBRARY:I = 0x4000

.field public static final blacklist PRIVATE_FLAG_SYSTEM_EXT:I = 0x200000

.field public static final blacklist PRIVATE_FLAG_USES_NON_SDK_API:I = 0x400000

.field public static final blacklist PRIVATE_FLAG_USE_EMBEDDED_DEX:I = 0x2000000

.field public static final greylist-max-o PRIVATE_FLAG_VENDOR:I = 0x40000

.field public static final greylist-max-o PRIVATE_FLAG_VIRTUAL_PRELOAD:I = 0x10000

.field public static final whitelist RAW_EXTERNAL_STORAGE_ACCESS_DEFAULT:I = 0x0

.field public static final whitelist RAW_EXTERNAL_STORAGE_ACCESS_NOT_REQUESTED:I = 0x2

.field public static final whitelist RAW_EXTERNAL_STORAGE_ACCESS_REQUESTED:I = 0x1

.field public static final whitelist ZEROINIT_DEFAULT:I = -0x1

.field public static final whitelist ZEROINIT_DISABLED:I = 0x0

.field public static final whitelist ZEROINIT_ENABLED:I = 0x1

.field private static blacklist sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

.field private static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public whitelist appComponentFactory:Ljava/lang/String;

.field public whitelist backupAgentName:Ljava/lang/String;

.field public whitelist category:I

.field public greylist-max-o classLoaderName:Ljava/lang/String;

.field public whitelist className:Ljava/lang/String;

.field public whitelist compatibleWidthLimitDp:I

.field public whitelist compileSdkVersion:I

.field public whitelist compileSdkVersionCodename:Ljava/lang/String;

.field public blacklist createTimestamp:J

.field public whitelist credentialProtectedDataDir:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public blacklist crossProfile:Z

.field public whitelist dataDir:Ljava/lang/String;

.field public blacklist dataExtractionRulesRes:I

.field public whitelist descriptionRes:I

.field public whitelist deviceProtectedDataDir:Ljava/lang/String;

.field public whitelist enabled:Z

.field public greylist enabledSetting:I

.field public whitelist flags:I

.field public greylist-max-r fullBackupContent:I

.field private blacklist gwpAsanMode:I

.field public blacklist hiddenUntilInstalled:Z

.field public blacklist iconRes:I

.field public greylist installLocation:I

.field public whitelist largestWidthLimitDp:I

.field private blacklist localeConfigRes:I

.field public greylist-max-o longVersionCode:J

.field private blacklist mAppClassNamesByProcess:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHiddenApiPolicy:I

.field private blacklist mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist manageSpaceActivityName:Ljava/lang/String;

.field public greylist-max-o maxAspectRatio:F

.field private blacklist memtagMode:I

.field public blacklist minAspectRatio:F

.field public whitelist minSdkVersion:I

.field private blacklist nativeHeapZeroInitialized:I

.field public whitelist nativeLibraryDir:Ljava/lang/String;

.field public greylist nativeLibraryRootDir:Ljava/lang/String;

.field public greylist-max-o nativeLibraryRootRequiresIsa:Z

.field public greylist-max-o networkSecurityConfigRes:I

.field public blacklist overlayPaths:[Ljava/lang/String;

.field public whitelist permission:Ljava/lang/String;

.field public greylist primaryCpuAbi:Ljava/lang/String;

.field public greylist privateFlags:I

.field public blacklist privateFlagsExt:I

.field public whitelist processName:Ljava/lang/String;

.field public whitelist publicSourceDir:Ljava/lang/String;

.field private blacklist requestRawExternalStorageAccess:Ljava/lang/Boolean;

.field public whitelist requiresSmallestWidthDp:I

.field public greylist resourceDirs:[Ljava/lang/String;

.field public blacklist roundIconRes:I

.field public greylist scanPublicSourceDir:Ljava/lang/String;

.field public greylist scanSourceDir:Ljava/lang/String;

.field public greylist-max-o seInfo:Ljava/lang/String;

.field public greylist-max-o seInfoUser:Ljava/lang/String;

.field public greylist secondaryCpuAbi:Ljava/lang/String;

.field public greylist secondaryNativeLibraryDir:Ljava/lang/String;

.field public whitelist sharedLibraryFiles:[Ljava/lang/String;

.field public blacklist sharedLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist sourceDir:Ljava/lang/String;

.field public greylist-max-o splitClassLoaderNames:[Ljava/lang/String;

.field public greylist-max-o splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public whitelist splitNames:[Ljava/lang/String;

.field public whitelist splitPublicSourceDirs:[Ljava/lang/String;

.field public whitelist splitSourceDirs:[Ljava/lang/String;

.field public whitelist storageUuid:Ljava/util/UUID;

.field public whitelist targetSandboxVersion:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist targetSdkVersion:I

.field public whitelist taskAffinity:Ljava/lang/String;

.field public whitelist theme:I

.field public whitelist uiOptions:I

.field public whitelist uid:I

.field public greylist versionCode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist volumeUuid:Ljava/lang/String;

.field public blacklist zygotePreloadName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    sput-object v0, Landroid/content/pm/ApplicationInfo;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    .line 72
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 73
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Landroid/content/pm/ApplicationInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 2051
    new-instance v0, Landroid/content/pm/ApplicationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 1870
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 160
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 174
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 490
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 878
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 886
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 894
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1204
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1210
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 1217
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1263
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1433
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    .line 1472
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    .line 1503
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 1559
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 1871
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    .line 1872
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/ApplicationInfo;

    .line 1875
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 160
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 174
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 490
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 878
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 886
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 894
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1204
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1210
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 1217
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1263
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1433
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    .line 1472
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    .line 1503
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 1559
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 1876
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 1877
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 1878
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1879
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1880
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1881
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1882
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1883
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1884
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 1885
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 1886
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 1887
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1888
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 1889
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 1890
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 1891
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 1892
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1893
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1894
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1895
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 1896
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 1897
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1898
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 1899
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 1900
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 1901
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 1902
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1903
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1904
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 1905
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 1906
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 1907
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 1908
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 1909
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 1910
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1911
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1912
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1913
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1914
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1915
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1916
    iget-wide v0, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1917
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1918
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 1919
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1920
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 1921
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 1922
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 1923
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1924
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 1925
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 1926
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    .line 1927
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 1928
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->category:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1929
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 1930
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 1931
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1932
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 1933
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->iconRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 1934
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 1935
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 1936
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 1937
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 1938
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 1939
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 1940
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    .line 1941
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    .line 1942
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 1943
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 1944
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    .line 1945
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    .line 1946
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2066
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 160
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 174
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 490
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 878
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 886
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 894
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1204
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1210
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 1217
    const/4 v2, -0x1

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1263
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1433
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    .line 1472
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    .line 1503
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 1559
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 2067
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 2068
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 2069
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2070
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2071
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 2072
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2073
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2074
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 2075
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2076
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2077
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2078
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2079
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 2080
    invoke-static {v2}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 2082
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 2083
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 2084
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2085
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 2086
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 2087
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 2088
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 2089
    const-class v2, [I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 2090
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 2091
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 2092
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 2093
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 2094
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 2095
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 2096
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 2097
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 2098
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 2099
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 2100
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2101
    sget-object v2, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 2102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 2104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 2105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 2109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 2110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 2111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 2112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 2113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 2115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 2116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 2117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 2118
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    .line 2119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 2120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 2122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 2123
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 2124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 2125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 2126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 2127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 2128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 2129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 2130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 2131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 2132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    .line 2133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    .line 2134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 2135
    sget-object v0, Landroid/content/pm/ApplicationInfo;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 2136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    .line 2137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2138
    .local v0, "allClassesSize":I
    if-lez v0, :cond_4

    .line 2139
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    .line 2140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 2141
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2144
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    .line 2145
    sget-object v1, Landroid/content/pm/ApplicationInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2146
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2147
    iput-object v3, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2149
    :cond_5
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist getCategoryTitle(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I

    .line 1366
    packed-switch p1, :pswitch_data_0

    .line 1386
    const/4 v0, 0x0

    return-object v0

    .line 1384
    :pswitch_0
    const v0, 0x10401b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1382
    :pswitch_1
    const v0, 0x10401bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1380
    :pswitch_2
    const v0, 0x10401bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1378
    :pswitch_3
    const v0, 0x10401be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1376
    :pswitch_4
    const v0, 0x10401c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1374
    :pswitch_5
    const v0, 0x10401bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1372
    :pswitch_6
    const v0, 0x10401c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1370
    :pswitch_7
    const v0, 0x10401ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1368
    :pswitch_8
    const v0, 0x10401bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private greylist-max-o isAllowedToUseHiddenApis()Z
    .locals 3

    .line 2326
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2327
    return v1

    .line 2328
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2331
    :cond_1
    return v2

    .line 2329
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->usesNonSdkApi()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;->isPackageWhitelistedForHiddenApis()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method private greylist-max-p isPackageUnavailable(Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 2399
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    .line 2400
    :catch_0
    move-exception v1

    .line 2401
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private greylist-max-o isPackageWhitelistedForHiddenApis()Z
    .locals 2

    .line 2221
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getHiddenApiWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isValidHiddenApiEnforcementPolicy(I)Z
    .locals 1
    .param p0, "policy"    # I

    .line 1556
    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist allowsNativeHeapPointerTagging()Z
    .locals 2

    .line 2322
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist areAttributionsUserVisible()Z
    .locals 1

    .line 2562
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1955
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-p disableCompatibilityMode()V
    .locals 2

    .line 2179
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x83e00

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2182
    return-void
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1583
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 1584
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpFlags"    # I

    .line 1588
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1589
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1593
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  process="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " className="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    .line 1595
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1594
    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1598
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1601
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1602
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_3

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "taskAffinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1605
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " privateFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1606
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " theme=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1607
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1605
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1608
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_4

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "requiresSmallestWidthDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " compatibleWidthLimitDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " largestWidthLimitDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1613
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sourceDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "publicSourceDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1617
    :cond_5
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "splitSourceDirs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1620
    :cond_6
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 1621
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "splitPublicSourceDirs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1624
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "resourceDirs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1627
    :cond_8
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "overlayPaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1630
    :cond_9
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "seinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "seinfoUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1634
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1635
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_b

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deviceProtectedDataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "credentialProtectedDataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sharedLibraryFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1642
    :cond_b
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "classLoaderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1645
    :cond_c
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "splitClassLoaderNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1649
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetSandboxVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1654
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1e

    .line 1655
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "manageSpaceActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1658
    :cond_e
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v0, :cond_f

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "description=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1661
    :cond_f
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    if-eqz v0, :cond_10

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "uiOptions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1664
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "supportsRtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v1

    const-string/jumbo v2, "true"

    const-string v3, "false"

    if-eqz v1, :cond_11

    move-object v1, v2

    goto :goto_1

    :cond_11
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1665
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-lez v0, :cond_12

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fullBackupContent=@xml/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1668
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fullBackupContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1669
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-gez v1, :cond_13

    move-object v1, v3

    goto :goto_2

    :cond_13
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1668
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1671
    :goto_3
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    if-eqz v0, :cond_14

    .line 1672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dataExtractionRules=@xml/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1674
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "crossProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    if-eqz v1, :cond_15

    move-object v1, v2

    goto :goto_4

    :cond_15
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1675
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    if-eqz v0, :cond_16

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "networkSecurityConfigRes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 1677
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1676
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1679
    :cond_16
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "category="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1682
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "HiddenApiEnforcementPolicy="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "usesNonSdkApi="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->usesNonSdkApi()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "allowsPlaybackCapture="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1685
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isAudioPlaybackCaptureAllowed()Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_5

    :cond_18
    move-object v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1684
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1686
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    if-eq v0, v1, :cond_19

    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "gwpAsanMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1689
    :cond_19
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    if-eq v0, v1, :cond_1a

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "memtagMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1692
    :cond_1a
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    if-eq v0, v1, :cond_1b

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "nativeHeapZeroInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1695
    :cond_1b
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "requestRawExternalStorageAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1699
    :cond_1c
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    if-eqz v0, :cond_1d

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "localeConfigRes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    .line 1701
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1700
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1703
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enableOnBackInvokedCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1705
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "createTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1706
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-eqz v0, :cond_1f

    .line 1707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "knownActivityEmbeddingCerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1709
    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1710
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 17
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpFlags"    # I

    .line 1714
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1715
    .local v3, "token":J
    const-wide v5, 0x10b00000001L

    invoke-super {v0, v1, v5, v6, v2}, Landroid/content/pm/PackageItemInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1716
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    const-wide v6, 0x10900000002L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1717
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-wide v8, 0x10900000003L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1718
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1719
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const-wide v10, 0x10500000005L

    invoke-virtual {v1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1720
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const-wide v12, 0x10500000006L

    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1721
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    const-wide v12, 0x10500000007L

    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1722
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-wide v12, 0x10900000008L

    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1723
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v5, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-wide v14, 0x10900000009L

    if-nez v5, :cond_0

    .line 1724
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v14, v15, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1726
    :cond_0
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    const-wide v14, 0x2090000000aL

    const/16 v16, 0x0

    if-nez v5, :cond_1

    .line 1727
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v12, v5

    move/from16 v13, v16

    :goto_0
    if-ge v13, v12, :cond_1

    aget-object v6, v5, v13

    .line 1728
    .local v6, "dir":Ljava/lang/String;
    invoke-virtual {v1, v14, v15, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1727
    .end local v6    # "dir":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    const-wide v6, 0x10900000002L

    goto :goto_0

    .line 1731
    :cond_1
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 1732
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1733
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    array-length v6, v5

    move/from16 v7, v16

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v12, v5, v7

    .line 1734
    .local v12, "dir":Ljava/lang/String;
    const-wide v14, 0x2090000000bL

    invoke-virtual {v1, v14, v15, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1733
    .end local v12    # "dir":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    const-wide v14, 0x2090000000aL

    goto :goto_1

    .line 1737
    :cond_2
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1738
    array-length v6, v5

    move/from16 v7, v16

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v12, v5, v7

    .line 1739
    .restart local v12    # "dir":Ljava/lang/String;
    const-wide v13, 0x2090000000cL

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1738
    .end local v12    # "dir":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1742
    :cond_3
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1743
    array-length v6, v5

    move/from16 v7, v16

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v12, v5, v7

    .line 1744
    .restart local v12    # "dir":Ljava/lang/String;
    const-wide v13, 0x20900000012L

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1743
    .end local v12    # "dir":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1747
    :cond_4
    const-wide v5, 0x1090000000dL

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1748
    const-wide v5, 0x1090000000eL

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1749
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1750
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    array-length v6, v5

    move/from16 v7, v16

    :goto_4
    if-ge v7, v6, :cond_5

    aget-object v12, v5, v7

    .line 1751
    .local v12, "name":Ljava/lang/String;
    const-wide v13, 0x2090000000fL

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1750
    .end local v12    # "name":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1755
    :cond_5
    const-wide v5, 0x10b00000010L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 1756
    .local v5, "versionToken":J
    const-wide v12, 0x10800000001L

    iget-boolean v7, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1757
    const-wide v12, 0x10500000002L

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1758
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-wide v12, 0x10500000003L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1759
    iget-wide v14, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v1, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1760
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1761
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1763
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_13

    .line 1764
    const-wide v14, 0x10b00000011L

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 1765
    .local v14, "detailToken":J
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 1766
    const-wide v10, 0x10900000001L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1768
    :cond_6
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    const-wide v10, 0x10900000002L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1769
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1771
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1773
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const-wide v8, 0x10500000005L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1775
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 1776
    const-wide v8, 0x10900000006L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1777
    const-wide v7, 0x10900000007L

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1779
    :cond_7
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const-wide v8, 0x10900000008L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1781
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    const-wide v8, 0x10900000009L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1783
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 1784
    array-length v8, v7

    move/from16 v9, v16

    :goto_5
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 1785
    .local v10, "f":Ljava/lang/String;
    const-wide v11, 0x2090000000aL

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1784
    .end local v10    # "f":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1788
    :cond_8
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 1789
    const-wide v8, 0x1090000000bL

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1792
    :cond_9
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v7, :cond_a

    .line 1793
    const-wide v8, 0x1050000000cL

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1795
    :cond_a
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    if-eqz v7, :cond_b

    .line 1796
    const-wide v8, 0x1050000000dL

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1798
    :cond_b
    const-wide v7, 0x1080000000eL

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v9

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1799
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-lez v7, :cond_c

    .line 1800
    const-wide v7, 0x1090000000fL

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@xml/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_6

    .line 1802
    :cond_c
    const-wide v8, 0x10800000010L

    if-nez v7, :cond_d

    const/16 v16, 0x1

    :cond_d
    move/from16 v7, v16

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1804
    :goto_6
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    if-eqz v7, :cond_e

    .line 1805
    const-wide v8, 0x10500000011L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1808
    :cond_e
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_f

    .line 1809
    const-wide v9, 0x10500000012L

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1811
    :cond_f
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    if-eq v7, v8, :cond_10

    .line 1812
    const-wide v9, 0x10500000013L

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1814
    :cond_10
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    if-eq v7, v8, :cond_11

    .line 1815
    const-wide v9, 0x10500000014L

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1817
    :cond_11
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    if-eq v7, v8, :cond_12

    .line 1818
    const-wide v8, 0x10800000015L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1821
    :cond_12
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1823
    .end local v14    # "detailToken":J
    :cond_13
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1824
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1825
    .local v8, "knownCert":Ljava/lang/String;
    const-wide v9, 0x20900000013L

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1826
    .end local v8    # "knownCert":Ljava/lang/String;
    goto :goto_7

    .line 1828
    :cond_14
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1829
    return-void
.end method

.method public blacklist getAllApkPaths()[Ljava/lang/String;
    .locals 9

    .line 2617
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 2620
    .local v0, "inputLists":[[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2621
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2622
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2624
    :cond_0
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 2625
    .local v5, "inputList":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 2626
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 2627
    .local v8, "input":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2626
    .end local v8    # "input":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2624
    .end local v5    # "inputList":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2631
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method protected greylist-max-o getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 2608
    return-object p0
.end method

.method public greylist-max-o getBaseCodePath()Ljava/lang/String;
    .locals 1

    .line 2666
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getBaseResourcePath()Ljava/lang/String;
    .locals 1

    .line 2671
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getCodePath()Ljava/lang/String;
    .locals 1

    .line 2665
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCustomApplicationClassNameForProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 2702
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 2703
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2704
    .local v0, "byProcess":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2705
    return-object v0

    .line 2708
    .end local v0    # "byProcess":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGwpAsanMode()I
    .locals 1

    .line 2674
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    return v0
.end method

.method public greylist-max-o getHiddenApiEnforcementPolicy()I
    .locals 2

    .line 2339
    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;->isAllowedToUseHiddenApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2340
    const/4 v0, 0x0

    return v0

    .line 2342
    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2343
    return v0

    .line 2345
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2746
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 2747
    :cond_0
    nop

    .line 2746
    :goto_0
    return-object v0
.end method

.method public blacklist getLocaleConfigRes()I
    .locals 1

    .line 2720
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    return v0
.end method

.method public whitelist getMemtagMode()I
    .locals 1

    .line 2682
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    return v0
.end method

.method public whitelist getNativeHeapZeroInitialized()I
    .locals 1

    .line 2691
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    return v0
.end method

.method public whitelist getRequestRawExternalStorageAccess()I
    .locals 1

    .line 2309
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2310
    const/4 v0, 0x0

    return v0

    .line 2312
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 2313
    :cond_1
    const/4 v0, 0x2

    .line 2312
    :goto_0
    return v0
.end method

.method public greylist-max-o getResourcePath()Ljava/lang/String;
    .locals 1

    .line 2668
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSharedLibraryInfos()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 2733
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2734
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 2736
    :cond_0
    return-object v0
.end method

.method public greylist-max-o getSplitCodePaths()[Ljava/lang/String;
    .locals 1

    .line 2667
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSplitResourcePaths()[Ljava/lang/String;
    .locals 1

    .line 2672
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o hasCode()Z
    .locals 1

    .line 1842
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasFragileUserData()Z
    .locals 2

    .line 2239
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasRequestForegroundServiceExemption()Z
    .locals 1

    .line 2589
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasRequestedLegacyExternalStorage()Z
    .locals 2

    .line 2259
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist hasRtlSupport()Z
    .locals 2

    .line 1837
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o initForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 2198
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2200
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2201
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2202
    return-void

    .line 2205
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2206
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2207
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 2208
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2209
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2210
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 2212
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 2214
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_0

    .line 2216
    :cond_1
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2218
    :goto_0
    return-void
.end method

.method public blacklist isAudioPlaybackCaptureAllowed()Z
    .locals 2

    .line 2250
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isDefaultToDeviceProtectedStorage()Z
    .locals 1

    .line 2407
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isDirectBootAware()Z
    .locals 1

    .line 2413
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isEmbeddedDexUsed()Z
    .locals 2

    .line 2531
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEncryptionAware()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2426
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isDirectBootAware()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPartiallyDirectBootAware()Z

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

.method public greylist-max-o isExternal()Z
    .locals 2

    .line 2431
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isExternalAsec()Z
    .locals 1

    .line 2437
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isInstantApp()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2447
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isInternal()Z
    .locals 2

    .line 2452
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isOdm()Z
    .locals 2

    .line 2466
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isOem()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2461
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isOnBackInvokedCallbackEnabled()Z
    .locals 1

    .line 2601
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isPartiallyDirectBootAware()Z
    .locals 1

    .line 2471
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPrivilegedApp()Z
    .locals 1

    .line 2482
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isProduct()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2521
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isProfileable()Z
    .locals 2

    .line 2553
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isProfileableByShell()Z
    .locals 2

    .line 2546
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isRequiredForSystemUser()Z
    .locals 1

    .line 2487
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isResourceOverlay()Z
    .locals 2

    .line 2579
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isSignedWithPlatformKey()Z
    .locals 2

    .line 2476
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isStaticSharedLibrary()Z
    .locals 1

    .line 2492
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSystemApp()Z
    .locals 2

    .line 2498
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isSystemExt()Z
    .locals 2

    .line 2526
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isUpdatedSystemApp()Z
    .locals 1

    .line 2503
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isVendor()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2512
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isVirtualPreload()Z
    .locals 2

    .line 2538
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 2388
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2389
    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;->isPackageUnavailable(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2390
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080af5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 2393
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 2163
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v0, :cond_0

    .line 2164
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2165
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 2166
    return-object v0

    .line 2169
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist maybeUpdateHiddenApiEnforcementPolicy(I)V
    .locals 1
    .param p1, "policy"    # I

    .line 2369
    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;->isPackageWhitelistedForHiddenApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2370
    return-void

    .line 2372
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->setHiddenApiEnforcementPolicy(I)V

    .line 2373
    return-void
.end method

.method public greylist-max-o requestsIsolatedSplitLoading()Z
    .locals 2

    .line 2571
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setAppClassNamesByProcess(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2656
    .local p1, "value":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2657
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    goto :goto_0

    .line 2659
    :cond_0
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    .line 2661
    :goto_0
    return-void
.end method

.method public greylist-max-o setBaseCodePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 2635
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setBaseResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseResourcePath"    # Ljava/lang/String;

    .line 2638
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setCodePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "codePath"    # Ljava/lang/String;

    .line 2634
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    return-void
.end method

.method public blacklist setEnableOnBackInvokedCallback(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .line 2775
    if-eqz p1, :cond_0

    .line 2776
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_0

    .line 2778
    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 2780
    :goto_0
    return-void
.end method

.method public blacklist setGwpAsanMode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 2640
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    return-void
.end method

.method public greylist-max-o setHiddenApiEnforcementPolicy(I)V
    .locals 3
    .param p1, "policy"    # I

    .line 2352
    invoke-static {p1}, Landroid/content/pm/ApplicationInfo;->isValidHiddenApiEnforcementPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2355
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 2356
    return-void

    .line 2353
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid API enforcement policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setKnownActivityEmbeddingCerts(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2759
    .local p1, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2760
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2761
    .local v1, "knownCert":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2762
    .end local v1    # "knownCert":Ljava/lang/String;
    goto :goto_0

    .line 2763
    :cond_0
    return-void
.end method

.method public blacklist setLocaleConfigRes(I)V
    .locals 0
    .param p1, "value"    # I

    .line 2711
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    return-void
.end method

.method public blacklist setMemtagMode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 2641
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    return-void
.end method

.method public blacklist setNativeHeapZeroInitialized(I)V
    .locals 0
    .param p1, "value"    # I

    .line 2643
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 2644
    return-void
.end method

.method public blacklist setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 2647
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 2648
    return-void
.end method

.method public greylist-max-o setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .line 2637
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setSplitCodePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "splitCodePaths"    # [Ljava/lang/String;

    .line 2636
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setSplitResourcePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "splitResourcePaths"    # [Ljava/lang/String;

    .line 2639
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setVersionCode(J)V
    .locals 1
    .param p1, "newVersionCode"    # J

    .line 2379
    iput-wide p1, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 2380
    long-to-int v0, p1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 2381
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1950
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1949
    return-object v0
.end method

.method public greylist-max-o usesCompatibilityMode()Z
    .locals 2

    .line 2190
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x83e00

    and-int/2addr v0, v1

    if-nez v0, :cond_0

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

.method public blacklist usesNonSdkApi()Z
    .locals 2

    .line 2228
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 1960
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->maybeWriteSquashed(Landroid/os/Parcelable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    return-void

    .line 1963
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1964
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1965
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1966
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1967
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1968
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1970
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1971
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1976
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1977
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1978
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 1980
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1982
    :goto_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1983
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1984
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1986
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 1987
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 1989
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 1990
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1993
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1996
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 1998
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1999
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 2001
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2002
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2004
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2005
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2006
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2007
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2008
    iget-wide v2, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2009
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2011
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2012
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2013
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2014
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2015
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2016
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2017
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2018
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2019
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2020
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2021
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2022
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2023
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 2024
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2026
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2027
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2028
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2029
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2030
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2031
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2032
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2033
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2034
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2035
    sget-object v0, Landroid/content/pm/ApplicationInfo;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 2036
    iget-wide v2, p0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2037
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    if-nez v0, :cond_2

    .line 2038
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 2040
    :cond_2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2041
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2042
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2043
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2044
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2042
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2047
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_3
    :goto_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    sget-object v0, Landroid/content/pm/ApplicationInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 2049
    return-void
.end method
