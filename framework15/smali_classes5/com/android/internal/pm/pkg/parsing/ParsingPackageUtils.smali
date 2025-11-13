.class public Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
.super Ljava/lang/Object;
.source "ParsingPackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;,
        Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseFlags;
    }
.end annotation


# static fields
.field public static final blacklist ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final blacklist ASPECT_RATIO_NOT_SET:F = -1.0f

.field public static final blacklist DEBUG_BACKUP:Z = false

.field public static final blacklist DEBUG_JAR:Z = false

.field public static final blacklist DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field public static final blacklist METADATA_ACTIVITY_LAUNCH_MODE:Ljava/lang/String; = "android.activity.launch_mode"

.field public static final blacklist METADATA_ACTIVITY_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "android.activity_window_layout_affinity"

.field public static final blacklist METADATA_CAN_DISPLAY_ON_REMOTE_DEVICES:Ljava/lang/String; = "android.can_display_on_remote_devices"

.field public static final blacklist METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field public static final blacklist METADATA_SUPPORTS_SIZE_CHANGES:Ljava/lang/String; = "android.supports_size_changes"

.field public static final blacklist MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field public static final blacklist PARSE_APEX:I = 0x400

.field public static final blacklist PARSE_APK_IN_APEX:I = 0x200

.field public static final blacklist PARSE_CHATTY:I = -0x80000000

.field public static final blacklist PARSE_COLLECT_CERTIFICATES:I = 0x20

.field public static final blacklist PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final blacklist PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final blacklist PARSE_ENFORCE_CODE:I = 0x40

.field public static final blacklist PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final blacklist PARSE_IGNORE_OVERLAY_REQUIRED_SYSTEM_PROPERTY:I = 0x80

.field public static final blacklist PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final blacklist PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final blacklist PARSE_MUST_BE_APK:I = 0x1

.field public static final blacklist RIGID_PARSER:Z = false

.field public static final blacklist SDK_CODENAMES:[Ljava/lang/String;

.field public static final blacklist SDK_VERSION:I

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"

.field public static final blacklist TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field public static final blacklist TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final blacklist TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field public static final blacklist TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field public static final blacklist TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field public static final blacklist TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field public static final blacklist TAG_INSTALL_CONSTRAINTS:Ljava/lang/String; = "install-constraints"

.field public static final blacklist TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field public static final blacklist TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field public static final blacklist TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field public static final blacklist TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field public static final blacklist TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final blacklist TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final blacklist TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field public static final blacklist TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final blacklist TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field public static final blacklist TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field public static final blacklist TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field public static final blacklist TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field public static final blacklist TAG_QUERIES:Ljava/lang/String; = "queries"

.field public static final blacklist TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final blacklist TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field public static final blacklist TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field public static final blacklist TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field public static final blacklist TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field public static final blacklist TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field public static final blacklist TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field public static final blacklist TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field public static final blacklist TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field public static final blacklist TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field public static final blacklist TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field public static final blacklist TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field private static final blacklist sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

.field public static blacklist sCompatibilityModeEnabled:Z

.field public static blacklist sUseRoundIcon:Z


# instance fields
.field private final blacklist mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

.field private final blacklist mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final blacklist mSeparateProcesses:[Ljava/lang/String;

.field private final blacklist mSplitPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    new-instance v0, Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/AconfigFlags;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/DisplayMetrics;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    iput-object p4, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    return-void
.end method

.method private static blacklist aFloat(FILandroid/content/res/TypedArray;)F
    .locals 1

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method private static blacklist aFloat(ILandroid/content/res/TypedArray;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method private static blacklist adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .locals 6

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setResizeMode(Lcom/android/internal/pm/pkg/component/ParsedActivity;I)V

    nop

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v4

    const v5, -0x400001

    and-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/internal/pm/pkg/component/ParsedComponent;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setMaxAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setMinAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setSupportsSizeChanges(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->hasDomainURLs(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHasDomainUrls(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    return-void
.end method

.method private static blacklist anInt(IILandroid/content/res/TypedArray;)I
    .locals 1

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private static blacklist anInt(ILandroid/content/res/TypedArray;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private static blacklist anInteger(IILandroid/content/res/TypedArray;)I
    .locals 1

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method private static blacklist bool(ZILandroid/content/res/TypedArray;)Z
    .locals 1

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method private static blacklist convertCompatPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_2

    sget-object v2, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    aget-object v2, v2, v0

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v4

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist convertSplitPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v4

    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {p1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static blacklist exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static blacklist generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":app_details"

    invoke-static {v0, v0, v1, p0}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    nop

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v4

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isHardwareAccelerated()Z

    move-result v5

    invoke-static {v0, v3, v4, v2, v5}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;
    .locals 1

    sget-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    return-object v0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/parsing/pkg/ParsedPackage;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isStaticSharedLibrary()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZI[",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p4

    sget-object v9, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const-string v0, "collectCertificates"

    const-wide/32 v10, 0x40000

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p5

    move/from16 v4, p2

    move-object v5, v9

    move/from16 v6, p3

    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/pm/SigningDetails;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "framework/framework-res.apk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v12, p1

    :try_start_3
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v13, v1

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v13, :cond_2

    const/4 v1, 0x0

    move v14, v1

    :goto_0
    array-length v1, v8

    if-ge v14, v1, :cond_2

    aget-object v2, v8, v14

    move-object v1, p0

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object v0, v1

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    nop

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v12, p1

    :goto_1
    move-object v9, v5

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v12, p1

    :goto_2
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/content/pm/SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    invoke-static {p5}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_2
    sget-object v2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p4, v2, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SigningDetails;

    invoke-static {p4, v2}, Landroid/content/pm/Signature;->areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has mismatched certificates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x68

    invoke-interface {p0, v3, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_4
    invoke-interface {p0, p4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "/mnt/expand/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static blacklist hasDomainURLs(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z
    .locals 10

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v7

    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v8, "http"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "https"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    const/4 v8, 0x1

    return v8

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method private static blacklist nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_5

    :cond_0
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v2, p2}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_3
    :try_start_1
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-class v6, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v5

    :cond_4
    :goto_1
    goto :goto_0

    :cond_5
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {p2, p3, p0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionUtils;->parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/split/SplitAssetLoader;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v12, v0

    nop

    invoke-virtual {v12, v10}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed adding asset path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x65

    invoke-interface {v9, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v12, v13, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v14, v0

    :try_start_2
    new-instance v5, Landroid/content/res/Resources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v15, p0

    :try_start_3
    iget-object v0, v15, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x0

    invoke-direct {v5, v12, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v4, p3

    move-object v6, v14

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_1

    :try_start_4
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    return-object v0

    :cond_2
    :try_start_5
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-object v2, v0

    invoke-virtual {v12}, Landroid/content/res/AssetManager;->containsAllocatedTable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Targeting R+ (version 30 and above) requires the resources.arsc of installed APKs to be stored uncompressed and aligned on a 4-byte boundary"

    const-wide/32 v3, 0x7e97bf3

    invoke-interface {v9, v0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_4

    nop

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x7c

    invoke-interface {v9, v4, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v14, :cond_3

    :try_start_6
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    return-object v3

    :cond_4
    :try_start_7
    invoke-interface/range {p4 .. p4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getBaseApkAssets()Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v0

    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    if-eqz v4, :cond_8

    :try_start_9
    invoke-virtual {v12}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Landroid/content/res/AssetManager;->getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    move-object/from16 v17, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-object/from16 v1, v18

    move-object/from16 v0, v20

    goto :goto_2

    :cond_5
    move-object/from16 v20, v0

    move-object/from16 v18, v1

    goto :goto_3

    :cond_6
    move-object/from16 v20, v0

    move-object/from16 v18, v1

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    goto :goto_1

    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v18, v1

    goto :goto_4

    :cond_8
    move-object/from16 v18, v1

    :goto_4
    invoke-interface {v2, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    and-int/lit8 v0, p5, 0x20

    if-eqz v0, :cond_b

    nop

    const/4 v0, 0x0

    invoke-static {v9, v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v14, :cond_9

    :try_start_a
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :cond_9
    return-object v1

    :cond_a
    :try_start_b
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SigningDetails;

    invoke-interface {v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    nop

    goto :goto_5

    :cond_b
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :goto_5
    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v14, :cond_c

    :try_start_c
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :cond_c
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    :goto_6
    move-object v1, v0

    if-eqz v14, :cond_d

    :try_start_d
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read manifest from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x66

    invoke-interface {v9, v2, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catch_3
    move-exception v0

    move-object/from16 v15, p0

    move-object v1, v0

    move-object v0, v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_e

    const/4 v1, -0x2

    goto :goto_9

    :cond_e
    const/16 v1, -0x64

    :goto_9
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    invoke-static {v9, v10}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9, v11}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/Pair;

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected base APK, but found split "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x6a

    invoke-interface {v9, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v7, p4

    invoke-virtual {v7, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    :try_start_0
    const-string v0, "coreApp"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v10, v2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    move-object/from16 v6, p0

    iget-object v13, v6, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    move-object/from16 v14, v19

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, v20

    invoke-interface/range {v13 .. v18}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v4, v20

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v13, v8

    move/from16 v8, p7

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    nop

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_2
    :try_start_2
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v13, v8

    :goto_0
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private blacklist parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "compatible-screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v0, "feature-group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v0, "install-constraints"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v0, "queries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "adopt-permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v0, "instrumentation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v0, "key-sets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v0, "supports-input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "eat-comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v0, "permission-group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_11
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_12
    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_13
    const-string/jumbo v0, "permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_14
    const-string/jumbo v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_15
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_16
    const-string/jumbo v0, "overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_17
    const-string/jumbo v0, "original-package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_18
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_19
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "<manifest>"

    invoke-static {v0, p3, p5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->getInstallConstraintsAllowlist()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, p3, p4, p5, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p6, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_f
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_11
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_12
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_13
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69b7c34b -> :sswitch_19
        -0x6366e724 -> :sswitch_18
        -0x420dbfb6 -> :sswitch_17
        -0x410bbbb0 -> :sswitch_16
        -0x3b806306 -> :sswitch_15
        -0x3a5d850a -> :sswitch_14
        -0x1eda3a31 -> :sswitch_13
        -0x12786f81 -> :sswitch_12
        -0xfe5a947 -> :sswitch_11
        -0xa2d06ff -> :sswitch_10
        -0x7b47f16 -> :sswitch_f
        0x71978d4 -> :sswitch_e
        0x14d5f341 -> :sswitch_d
        0x1b1d76ff -> :sswitch_c
        0x20752f6e -> :sswitch_b
        0x23c12e70 -> :sswitch_a
        0x25af09e7 -> :sswitch_9
        0x270bd766 -> :sswitch_8
        0x33694d04 -> :sswitch_7
        0x3573e73e -> :sswitch_6
        0x501aeeb1 -> :sswitch_5
        0x55ccf562 -> :sswitch_4
        0x6446f4e8 -> :sswitch_3
        0x65ae49fd -> :sswitch_2
        0x6adbbdf5 -> :sswitch_1
        0x6c5ff78e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
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
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {p1 .. p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v12

    :cond_0
    const-string/jumbo v0, "updatableSystem"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-interface {v10, v13, v0, v14}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    const-string v0, "emergencyInstaller"

    invoke-interface {v10, v13, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {v8, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v14, v1, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    and-int/lit8 v1, v11, 0x8

    if-eqz v1, :cond_1

    move v1, v14

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUpdatableSystem(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    move-object v4, v0

    move/from16 v16, v1

    :goto_1
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v3, v0

    if-eq v0, v14, :cond_b

    const/4 v0, 0x3

    if-ne v3, v0, :cond_3

    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v5, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v17, v3

    move-object v14, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    goto/16 :goto_5

    :cond_3
    :goto_2
    const/4 v0, 0x2

    if-eq v3, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v0, v10}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v0, "application"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v16, :cond_6

    const-string v0, "PackageParsing"

    const-string v1, "<manifest> has more than one <application>"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v13, v2

    move/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    goto/16 :goto_4

    :cond_6
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v2

    move-object/from16 v2, p2

    move/from16 v17, v3

    move-object/from16 v3, p4

    move-object v14, v4

    move-object/from16 v4, p5

    move/from16 v18, v5

    move/from16 v5, p6

    move-object/from16 v19, v6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v4, v14

    goto :goto_4

    :cond_7
    move-object v13, v2

    move/from16 v17, v3

    move-object v14, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    const-string v0, "application-salescode"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    nop

    move-object/from16 v6, p4

    invoke-static {v7, v8, v6, v10}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->getReplacementForApplicationSalescode(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v4, v0

    goto :goto_3

    :cond_8
    move-object v4, v14

    :goto_3
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object/from16 v6, p4

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v4, v14

    :goto_4
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_a
    move/from16 v5, v18

    move-object/from16 v6, v19

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_b
    move/from16 v17, v3

    move-object v14, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    :goto_5
    if-eqz v14, :cond_c

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v8, v14}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->modifyParsingPackageWithReplacement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;)V

    :cond_c
    if-nez v16, :cond_d

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const-wide/32 v1, 0x8fcab42

    invoke-interface {v7, v0, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseBaseAppBasicFlags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V
    .locals 8

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    nop

    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-static {v1, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0x36

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0x22

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-static {v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskReparentingAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x2f

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSaveStateDisallowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x3a

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCrossProfile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0xa

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDebuggable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x26

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x27

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x39

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setForceQueryable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1f

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGame(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x32

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x18

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargeHeap(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x21

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMultiArch(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x3d

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1b

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiredForAllUsers(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1a

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRtlSupported(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0xf

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTestOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x35

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x31

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNonSdkApiRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x14

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVmSafeMode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x3c

    invoke-static {v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAutoRevokePermissions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x45

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAttributionsAreUserVisible(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x46

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x49

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOnBackInvokedCallbackEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    const/16 v7, 0x37

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    if-lt v0, v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const/16 v6, 0x17

    invoke-static {v4, v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    if-ge v0, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    const/16 v6, 0x38

    invoke-static {v4, v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    const/16 v7, 0x24

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x19

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUiOptions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/4 v6, -0x1

    const/16 v7, 0x2b

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x33

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x1e

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBannerResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0xd

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDescriptionResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/4 v6, 0x2

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x16

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLogoResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x29

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x2a

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRoundIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-static {v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setThemeResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x42

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x47

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLocaleConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x2e

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-static {v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-static {v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v4, 0x34

    invoke-static {v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowCrossUidActivitySwitchFromBelow(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    return-void
.end method

.method private blacklist parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "profileable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v0, "library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "processes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string/jumbo v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_a
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_b
    const-string/jumbo v0, "sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "<application>"

    invoke-static {v0, p3, p5, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {p3, p4, p5, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {p3, p4, p5, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseStaticLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {p3, p4, p5, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSdkLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_a
    const/4 v2, 0x0

    const-string v5, "<property>"

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_1
    return-object v0

    :pswitch_b
    const/4 v3, 0x0

    const-string v6, "<meta-data>"

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6b7c15d8 -> :sswitch_b
        -0x5fe67eda -> :sswitch_a
        -0x5aaa6a59 -> :sswitch_9
        -0x50de9846 -> :sswitch_8
        -0x4284098e -> :sswitch_7
        -0x4140b4a3 -> :sswitch_6
        -0x3efb77a4 -> :sswitch_5
        -0x3b32222b -> :sswitch_4
        0x88b87d -> :sswitch_3
        0x9e824bb -> :sswitch_2
        0xa9d2283 -> :sswitch_1
        0x751e7745 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private blacklist parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v11

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v14, v13, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    if-nez v10, :cond_0

    :try_start_0
    const-string v0, "<application> does not contain any attributes"

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    move-object v10, v7

    goto/16 :goto_19

    :cond_0
    const/4 v0, 0x3

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v10, v0, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v1

    const-string v1, "Empty class name in package "

    if-eqz v6, :cond_3

    :try_start_2
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "<application> invalid android:name"

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_1
    if-nez v3, :cond_2

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_2
    :try_start_4
    invoke-interface {v15, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    const/4 v5, 0x1

    :try_start_5
    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v4, v2

    if-eqz v4, :cond_4

    :try_start_6
    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v15, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    if-nez v2, :cond_4

    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :try_start_7
    invoke-direct {v8, v15, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppBasicFlags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V

    const/4 v3, 0x4

    const/16 v2, 0x400

    invoke-static {v2, v3, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v17, v16

    move-object/from16 v0, v17

    if-eqz v0, :cond_6

    :try_start_8
    invoke-static {v12, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    move-object/from16 v3, v17

    if-nez v3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_5
    :try_start_9
    invoke-interface {v15, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_6
    :try_start_a
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isBackupAllowed()Z

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_b

    const/16 v3, 0x10

    :try_start_b
    invoke-static {v2, v3, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v12, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v19

    move-object/from16 v9, v20

    if-nez v9, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_7
    :try_start_c
    invoke-interface {v15, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    move-object/from16 v21, v0

    const/16 v0, 0x12

    invoke-static {v5, v0, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-static {v5, v2, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestoreAnyVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v5, v2, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setFullBackupOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {v5, v2, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupInForeground(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_0

    :cond_8
    move-object/from16 v21, v0

    :goto_0
    const/16 v0, 0x23

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    move v2, v5

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v5, :cond_a

    iget v5, v0, Landroid/util/TypedValue;->data:I

    if-nez v5, :cond_9

    const/4 v5, -0x1

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    :goto_1
    move v2, v5

    :cond_a
    invoke-interface {v15, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setFullBackupContentResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    :cond_b
    move-object/from16 v21, v0

    :cond_c
    :goto_2
    const/16 v0, 0x8

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v3, :cond_f

    const/16 v2, 0x2d

    :try_start_e
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v3, v8, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v3, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v3, 0x1

    :goto_4
    invoke-interface {v15, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPersistent(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_f
    const/16 v2, 0x25

    :try_start_f
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v3, :cond_10

    const/4 v5, 0x1

    :try_start_10
    invoke-virtual {v10, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_6

    :cond_10
    const/4 v5, 0x1

    const/16 v2, 0x18

    if-lt v11, v2, :cond_11

    move v2, v5

    goto :goto_5

    :cond_11
    const/4 v2, 0x0

    :goto_5
    :try_start_11
    invoke-interface {v15, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :goto_6
    const/16 v2, 0xc

    if-lt v11, v0, :cond_12

    const/16 v3, 0x400

    :try_start_12
    invoke-virtual {v10, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object v9, v2

    goto :goto_7

    :cond_12
    :try_start_13
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    :goto_7
    invoke-static {v12, v12, v9, v7}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v3, v2

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v2, :cond_13

    :try_start_14
    invoke-interface {v7, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_13
    :try_start_15
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v15, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    const/16 v2, 0x30

    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v2, :cond_15

    :try_start_16
    invoke-static {v12, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    move-object/from16 v5, v23

    if-nez v5, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_14
    :try_start_17
    invoke-interface {v15, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_15
    const/16 v1, 0xb

    if-lt v11, v0, :cond_16

    const/16 v0, 0x400

    invoke-virtual {v10, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_8

    :cond_16
    :try_start_18
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iget-object v5, v8, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v20, 0x0

    move-object v1, v12

    move-object/from16 v23, v2

    move-object/from16 v2, v20

    move-object/from16 v16, v3

    const/16 v20, 0x4

    move-object v3, v0

    move-object/from16 v24, v4

    move/from16 v4, p5

    move-object/from16 v22, v6

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-eqz v2, :cond_17

    :try_start_19
    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_17
    :try_start_1a
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v15, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-eqz v3, :cond_18

    if-eqz v2, :cond_18

    :try_start_1b
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "cantSaveState applications can not use custom processes"

    invoke-interface {v7, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_18
    :try_start_1c
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    if-eqz v3, :cond_19

    :try_start_1d
    invoke-static {v3}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid class loader name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_19
    const/16 v4, 0x3e

    const/4 v6, -0x1

    :try_start_1e
    invoke-virtual {v10, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-interface {v15, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    const/16 v4, 0x40

    invoke-virtual {v10, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-interface {v15, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    const/16 v4, 0x41

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    if-eqz v5, :cond_1b

    const/4 v5, 0x0

    :try_start_1f
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    nop

    if-eqz v4, :cond_1a

    const/4 v5, 0x1

    goto :goto_9

    :cond_1a
    const/4 v5, 0x0

    :goto_9
    invoke-interface {v15, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :cond_1b
    const/16 v4, 0x43

    :try_start_20
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    if-eqz v5, :cond_1c

    const/4 v5, 0x0

    :try_start_21
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v15, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :cond_1c
    const/16 v4, 0x44

    :try_start_22
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    if-eqz v5, :cond_1d

    const/4 v5, 0x0

    :try_start_23
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-interface {v15, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_a

    :cond_1d
    const/4 v5, 0x0

    :goto_a
    nop

    const/16 v4, 0x48

    :try_start_24
    invoke-static {v10, v14, v4, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v17
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    if-eqz v17, :cond_1e

    :try_start_25
    invoke-interface {v7, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :cond_1e
    nop

    :try_start_26
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    move-object/from16 v19, v17

    move-object/from16 v5, v19

    if-eqz v5, :cond_1f

    :try_start_27
    invoke-interface {v15, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :cond_1f
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    nop

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    move/from16 v19, v1

    move/from16 v21, v2

    :goto_b
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v5, v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_36

    const/4 v3, 0x3

    if-ne v5, v3, :cond_21

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v9, :cond_20

    goto :goto_c

    :cond_20
    move/from16 v17, v5

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    move-object v10, v7

    goto/16 :goto_18

    :cond_21
    :goto_c
    const/4 v1, 0x2

    if-eq v5, v1, :cond_22

    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    const/16 v25, 0x0

    goto/16 :goto_13

    :cond_22
    sget-object v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v2, v13}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v2

    if-eqz v2, :cond_23

    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    const/16 v25, 0x0

    goto/16 :goto_13

    :cond_23
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v18, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_24
    goto :goto_d

    :sswitch_0
    const-string v1, "activity-salescode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x5

    goto :goto_e

    :sswitch_1
    const-string/jumbo v1, "service"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x2

    goto :goto_e

    :sswitch_2
    const-string/jumbo v1, "provider-salescode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x6

    goto :goto_e

    :sswitch_3
    const-string v1, "activity-alias"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move/from16 v1, v20

    goto :goto_e

    :sswitch_4
    const-string/jumbo v1, "receiver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v4

    goto :goto_e

    :sswitch_5
    const-string/jumbo v1, "provider"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v3

    goto :goto_e

    :sswitch_6
    const-string v1, "apex-system-service"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x7

    goto :goto_e

    :sswitch_7
    const-string v1, "activity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    goto :goto_e

    :goto_d
    move v1, v6

    :goto_e
    packed-switch v1, :pswitch_data_0

    move-object/from16 v23, v2

    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v17, v5

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    const/16 v25, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v9, v6

    move-object/from16 v6, p4

    move-object v10, v7

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    goto/16 :goto_17

    :pswitch_0
    nop

    invoke-static {v14, v13, v7}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceUtils;->parseApexSystemService(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v16

    if-eqz v16, :cond_25

    nop

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;

    invoke-interface {v15, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_25
    move-object v3, v1

    move-object/from16 v23, v2

    move/from16 v24, v4

    move/from16 v17, v5

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    const/16 v22, 0x3

    const/16 v25, 0x0

    move-object v10, v7

    goto/16 :goto_17

    :pswitch_1
    nop

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_26

    nop

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getProviders()Ljava/util/List;

    move-result-object v3

    const-string v16, "<provider-salescode>"

    move-object/from16 v23, v2

    move-object v2, v3

    const/16 v22, 0x3

    move-object/from16 v3, p3

    move/from16 v24, v4

    move-object/from16 v4, p4

    move/from16 v17, v5

    const/16 v25, 0x0

    move-object/from16 v5, p1

    move/from16 v26, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->parseOverlayComponentAndModify(Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)V

    goto :goto_f

    :cond_26
    move-object/from16 v23, v2

    move/from16 v24, v4

    move/from16 v17, v5

    move/from16 v26, v6

    const/16 v22, 0x3

    const/16 v25, 0x0

    :goto_f
    new-instance v1, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v1}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;-><init>()V

    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move/from16 v27, v26

    move-object v10, v7

    move/from16 v26, v9

    move-object v9, v15

    goto/16 :goto_17

    :pswitch_2
    move-object/from16 v23, v2

    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v17, v5

    move/from16 v26, v6

    const/16 v25, 0x0

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_27

    nop

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    const-string v6, "<activity-salescode>"

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->parseOverlayComponentAndModify(Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)V

    :cond_27
    new-instance v1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;-><init>()V

    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move/from16 v27, v26

    move-object v10, v7

    move/from16 v26, v9

    move-object v9, v15

    goto/16 :goto_17

    :pswitch_3
    move-object/from16 v23, v2

    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v17, v5

    move/from16 v26, v6

    const/16 v25, 0x0

    if-eqz p6, :cond_28

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    move/from16 v27, v26

    move/from16 v26, v9

    goto/16 :goto_13

    :cond_28
    sget-boolean v4, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v3

    if-eqz v3, :cond_29

    move/from16 v5, v24

    goto :goto_10

    :cond_29
    move/from16 v5, v25

    :goto_10
    or-int/2addr v0, v5

    invoke-interface {v15, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_2a
    move-object v3, v1

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move/from16 v27, v26

    move-object v10, v7

    move/from16 v26, v9

    move-object v9, v15

    goto/16 :goto_17

    :pswitch_4
    move-object/from16 v23, v2

    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v17, v5

    move/from16 v26, v6

    const/16 v25, 0x0

    if-eqz p6, :cond_2b

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    move/from16 v27, v26

    move/from16 v26, v9

    goto/16 :goto_13

    :cond_2b
    iget-object v1, v8, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v3, 0x0

    move/from16 v27, v26

    move/from16 v26, v9

    move-object v9, v1

    move-object/from16 v28, v10

    move-object/from16 v10, p2

    move/from16 v29, v11

    move-object/from16 v11, p3

    move-object/from16 v30, v12

    move-object/from16 v12, p4

    move/from16 v13, p5

    move v14, v2

    move-object v6, v15

    move-object v15, v3

    move-object/from16 v16, p1

    invoke-static/range {v9 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_2c
    move-object v3, v1

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_17

    :pswitch_5
    move-object/from16 v23, v2

    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v17, v5

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    const/16 v25, 0x0

    if-eqz p6, :cond_2d

    goto/16 :goto_13

    :cond_2d
    iget-object v9, v8, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v14, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v15, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v16, p1

    invoke-static/range {v9 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getOrder()I

    move-result v3

    if-eqz v3, :cond_2e

    move/from16 v9, v24

    goto :goto_11

    :cond_2e
    move/from16 v9, v25

    :goto_11
    or-int v21, v21, v9

    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_2f
    move-object v3, v1

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_17

    :pswitch_6
    move-object/from16 v23, v2

    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v17, v5

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    const/16 v25, 0x0

    goto :goto_12

    :pswitch_7
    move-object/from16 v23, v2

    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v17, v5

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    const/16 v25, 0x0

    const/16 v18, 0x1

    :goto_12
    if-eqz p6, :cond_30

    nop

    :goto_13
    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object v15, v6

    move/from16 v9, v26

    move/from16 v6, v27

    move-object/from16 v10, v28

    move/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_b

    :cond_30
    iget-object v9, v8, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v14, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v15, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v16, p1

    invoke-static/range {v9 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    if-eqz v18, :cond_32

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v3

    if-eqz v3, :cond_31

    move/from16 v9, v24

    goto :goto_14

    :cond_31
    move/from16 v9, v25

    :goto_14
    or-int/2addr v0, v9

    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_16

    :cond_32
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v3

    if-eqz v3, :cond_33

    move/from16 v9, v24

    goto :goto_15

    :cond_33
    move/from16 v9, v25

    :goto_15
    or-int v19, v19, v9

    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_34
    :goto_16
    move-object v3, v1

    move-object v9, v6

    move-object v10, v7

    :goto_17
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v10, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_35
    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object v15, v9

    move-object v7, v10

    move/from16 v9, v26

    move/from16 v6, v27

    move-object/from16 v10, v28

    move/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_b

    :cond_36
    move/from16 v17, v5

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    move-object v10, v7

    :goto_18
    nop

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->useLegacyRuntimeManifest(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static/range {p2 .. p3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyRuntimeManifestIfNeeded(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;)V

    :cond_37
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static/range {p1 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v10, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_38
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v9, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_39
    if-eqz v0, :cond_3a

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortActivities()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_3a
    if-eqz v19, :cond_3b

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortReceivers()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_3b
    if-eqz v21, :cond_3c

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortServices()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_3c
    invoke-direct {v8, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    move-object v10, v7

    :goto_19
    invoke-virtual/range {v28 .. v28}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_7
        -0x5db446de -> :sswitch_6
        -0x3adbfa0f -> :sswitch_5
        -0x30341611 -> :sswitch_4
        0x2f1ad612 -> :sswitch_3
        0x36e4801d -> :sswitch_2
        0x7643c6b5 -> :sswitch_1
        0x76951fbb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private blacklist parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    move-object/from16 v14, p1

    move/from16 v15, p3

    const/4 v0, 0x0

    and-int/lit16 v1, v15, 0x200

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x200

    :cond_0
    and-int/lit16 v1, v15, 0x400

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x400

    move v13, v0

    goto :goto_0

    :cond_1
    move v13, v0

    :goto_0
    nop

    move-object/from16 v11, p2

    invoke-static {v14, v11, v13}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14, v10}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/parsing/PackageLite;

    const/4 v1, 0x0

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->isIsolatedSplits()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-static {v9}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/parsing/PackageLite;)Landroid/util/SparseArray;

    move-result-object v0

    move-object v1, v0

    new-instance v0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v0, v9, v1, v15}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/parsing/PackageLite;Landroid/util/SparseArray;I)V
    :try_end_0
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    move-object v12, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v2, -0x65

    invoke-virtual {v0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_3
    new-instance v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v0, v9, v15}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    move-object v8, v0

    move-object v12, v1

    :goto_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object v6, v12

    move/from16 v18, v13

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object v6, v12

    move/from16 v18, v13

    goto/16 :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_2
    move v7, v0

    nop

    :try_start_3
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v8

    move/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    :try_start_4
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :cond_5
    :try_start_5
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    nop

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object v5

    invoke-interface {v1, v2, v4, v5, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_7

    invoke-interface {v8, v4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v6, v12

    move-object v12, v5

    nop

    move-object v5, v8

    move-object/from16 v8, p0

    move-object/from16 v16, v9

    move-object/from16 v9, p1

    move-object/from16 v17, v10

    move-object v10, v1

    move v11, v4

    move/from16 v18, v13

    move/from16 v13, p3

    :try_start_6
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v14, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v9

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v11, p2

    move-object v8, v5

    move-object v12, v6

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move/from16 v13, v18

    goto :goto_3

    :cond_7
    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object v6, v12

    move/from16 v18, v13

    goto :goto_4

    :cond_8
    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object v6, v12

    move/from16 v18, v13

    :goto_4
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object v6, v12

    move/from16 v18, v13

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object v6, v12

    move/from16 v18, v13

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_9

    const/4 v1, -0x2

    goto :goto_6

    :cond_9
    const/16 v1, -0x64

    :goto_6
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_2
    move-exception v0

    :goto_7
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public static blacklist parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;Z",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/parsing/pkg/ParsedPackage;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p3, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    if-eqz p4, :cond_2

    nop

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    :cond_1
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SigningDetails;

    invoke-interface {v2, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_2
    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestExtensionSdk:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    const/16 v3, -0x6c

    if-gez v1, :cond_0

    const-string v4, "<extension-sdk> must specify an sdkVersion >= 0"

    invoke-interface {p0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :cond_0
    if-gez v2, :cond_1

    const-string v4, "<extension-sdk> must specify minExtensionVersion >= 0"

    invoke-interface {p0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v4

    if-ge v4, v2, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extension version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " which exceeds device version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0xc

    invoke-interface {p0, v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :cond_2
    nop

    invoke-virtual {p3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-interface {p0, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Specified sdkVersion "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    const/4 v3, 0x3

    if-ne v4, v3, :cond_0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_4

    :cond_0
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v3, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "uses-feature"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v6

    iget v7, v6, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/FeatureInfo;->flags:I

    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <feature-group>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageParsing"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    iget-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    :cond_5
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5

    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static blacklist parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/pm/pkg/component/InstallConstraintsTagParser;->parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationUtils;->parseInstrumentation(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    const/4 v0, -0x1

    const/4 v6, 0x0

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v6

    move v6, v0

    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v12, v0

    const-string v13, "PackageParsing"

    const/4 v14, 0x1

    if-eq v0, v14, :cond_d

    const/4 v0, 0x3

    if-ne v12, v0, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v5, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    goto/16 :goto_a

    :cond_1
    :goto_1
    if-ne v12, v0, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-ne v0, v6, :cond_2

    const/4 v11, 0x0

    const/4 v6, -0x1

    goto :goto_0

    :cond_2
    move/from16 v18, v5

    move/from16 v16, v6

    goto/16 :goto_4

    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_4
    goto :goto_2

    :sswitch_0
    const-string/jumbo v0, "public-key"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :sswitch_1
    const-string/jumbo v0, "key-set"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :sswitch_2
    const-string/jumbo v0, "upgrade-key-set"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_3

    :goto_2
    const/4 v0, -0x1

    :goto_3
    const-string v14, "Improperly nested \'key-set\' tag at "

    packed-switch v0, :pswitch_data_0

    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    const-string v0, "<key-sets>"

    invoke-static {v0, v2, v4, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    :pswitch_0
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    nop

    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :pswitch_1
    if-nez v11, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_5
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move/from16 v18, v5

    const/4 v5, 0x1

    :try_start_2
    invoke-static {v5, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-nez v5, :cond_6

    :try_start_3
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v16, v6

    :try_start_4
    const-string v6, "\'public-key\' "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " must define a public-key value on first use at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :catchall_1
    move-exception v0

    move/from16 v19, v12

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move/from16 v16, v6

    move/from16 v19, v12

    goto/16 :goto_7

    :cond_6
    move/from16 v16, v6

    if-eqz v5, :cond_a

    nop

    :try_start_5
    invoke-static {v5}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v6

    if-nez v6, :cond_7

    move-object/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v19, v12

    :try_start_6
    const-string v12, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " key-set "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    nop

    :goto_4
    move/from16 v6, v16

    move/from16 v5, v18

    goto/16 :goto_0

    :cond_7
    move-object/from16 v17, v5

    move/from16 v19, v12

    :try_start_7
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/PublicKey;

    invoke-interface {v5, v6}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value of \'public-key\' "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " conflicts with previously defined value at "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :cond_9
    :goto_5
    :try_start_8
    invoke-virtual {v7, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_3
    move-exception v0

    move/from16 v19, v12

    goto :goto_7

    :cond_a
    move-object/from16 v17, v5

    move/from16 v19, v12

    :goto_6
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    nop

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move/from16 v16, v6

    move/from16 v19, v12

    goto :goto_7

    :catchall_6
    move-exception v0

    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    :goto_7
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :pswitch_2
    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    if-eqz v11, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move v0, v6

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    nop

    move v6, v0

    goto :goto_9

    :catchall_7
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_c
    :goto_8
    move/from16 v6, v16

    :goto_9
    move/from16 v5, v18

    goto/16 :goto_0

    :cond_d
    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    :goto_a
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    const-string v12, "Package"

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " AndroidManifest.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    :cond_e
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/ArraySet;

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v17

    const-string v3, " AndroidManifest.xml \'key-set\' "

    if-nez v17, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_b

    :cond_f
    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_b

    :cond_10
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v3

    move-object/from16 v3, v17

    check-cast v3, Ljava/security/PublicKey;

    invoke-interface {v2, v15, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-object/from16 v3, v20

    goto :goto_c

    :cond_11
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto/16 :goto_b

    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AndroidManifest.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x519cd6bd -> :sswitch_2
        -0x30ac780c -> :sswitch_1
        0x717268fb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist parseLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_0
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static blacklist parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/internal/pm/pkg/component/ParsedComponent;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    nop

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, v0, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " requires an android:name attribute"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v7

    :goto_0
    move-object v14, v8

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    move-object v15, v8

    if-eqz v15, :cond_2

    iget v8, v15, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_2

    new-instance v0, Landroid/content/pm/PackageManager$Property;

    iget v9, v15, Landroid/util/TypedValue;->resourceId:I

    const/4 v10, 0x1

    move-object v7, v0

    move-object v8, v6

    move-object v11, v13

    move-object v12, v14

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    move-object v15, v9

    if-eqz v15, :cond_9

    iget v9, v15, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    invoke-virtual {v15}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_3
    new-instance v8, Landroid/content/pm/PackageManager$Property;

    invoke-direct {v8, v6, v7, v13, v14}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto/16 :goto_1

    :cond_4
    iget v7, v15, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x12

    if-ne v7, v9, :cond_6

    new-instance v7, Landroid/content/pm/PackageManager$Property;

    iget v9, v15, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_5

    move v0, v8

    :cond_5
    invoke-direct {v7, v6, v0, v13, v14}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_1

    :cond_6
    iget v0, v15, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v0, v7, :cond_7

    iget v0, v15, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v0, v7, :cond_7

    new-instance v0, Landroid/content/pm/PackageManager$Property;

    iget v9, v15, Landroid/util/TypedValue;->data:I

    const/4 v10, 0x0

    move-object v7, v0

    move-object v8, v6

    move-object v11, v13

    move-object v12, v14

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget v0, v15, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x4

    if-ne v0, v7, :cond_8

    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {v15}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    invoke-direct {v0, v6, v7, v13, v14}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v0, "PackageParsing"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v7

    :cond_9
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " requires an android:value or android:resource attribute"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private blacklist parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I
    .locals 4

    move v0, p3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    iget v0, v1, Landroid/util/TypedValue;->data:I

    :cond_0
    return v0
.end method

.method private blacklist parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    and-int/lit8 v0, p3, -0x21

    nop

    invoke-static {p1, p2, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/PackageLite;

    new-instance v7, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v7, v2, p3}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    :try_start_0
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v9, v3

    nop

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v4

    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v4

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x66

    invoke-interface {p1, v5, v4, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v4

    :goto_1
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private static blacklist parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    if-nez v2, :cond_0

    const-string v1, "<overlay> does not specify a target package"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_0
    if-ltz v4, :cond_3

    const/16 v5, 0x270f

    if-le v4, v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x5

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping target and overlay pair "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": overlay ignored due to required system property: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageParsing"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_2
    :try_start_2
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResourceOverlay(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayPriority(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v7, 0x4

    invoke-static {v3, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayIsStatic(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_3
    :goto_0
    :try_start_3
    const-string v1, "<overlay> priority must be between 0 and 9999"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_1
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermissionGroup(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermissionTree(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    nop

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseProcesses([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isProfileableByShell()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {v2, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProfileableByShell(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isProfileable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProfileable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v13, v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_16

    const/4 v0, 0x3

    if-ne v13, v0, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v12, :cond_16

    :cond_0
    const/4 v0, 0x2

    if-eq v13, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v0, v11}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v6

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v7

    invoke-virtual {v1}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    if-nez v5, :cond_4

    const-string/jumbo v14, "intent tags must contain either an action or data."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    :cond_4
    if-le v5, v14, :cond_5

    const-string/jumbo v14, "intent tag may have at most one action."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    :cond_5
    if-le v7, v14, :cond_6

    const-string/jumbo v14, "intent tag may have at most one data type."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    :cond_6
    if-le v6, v14, :cond_7

    const-string/jumbo v14, "intent tag may have at most one data scheme."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    :cond_7
    if-le v15, v14, :cond_8

    const-string/jumbo v14, "intent tag may have at most one data host."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    :cond_8
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    move-object/from16 v17, v16

    const/16 v16, 0x0

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v14

    move-object/from16 v18, v0

    move/from16 v0, v16

    :goto_1
    if-ge v0, v14, :cond_9

    move-object/from16 v16, v2

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    goto :goto_1

    :cond_9
    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    const/4 v0, 0x1

    if-ne v15, v0, :cond_a

    invoke-virtual {v1}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    aget-object v4, v2, v14

    goto :goto_2

    :cond_a
    const/4 v14, 0x0

    :goto_2
    const-string v2, "/*"

    if-ne v6, v0, :cond_b

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    move/from16 v17, v6

    invoke-virtual {v1, v14}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_b
    move/from16 v17, v6

    move-object/from16 v0, v16

    :goto_3
    const/4 v6, 0x1

    if-ne v7, v6, :cond_e

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v14

    const-string v6, "/"

    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    :cond_c
    if-nez v0, :cond_d

    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "content"

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v6, "*"

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    :cond_d
    move-object/from16 v16, v0

    goto :goto_4

    :cond_e
    move-object/from16 v16, v0

    move-object/from16 v14, v19

    :goto_4
    invoke-virtual {v3, v0, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    if-ne v5, v2, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    invoke-interface {v9, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto/16 :goto_0

    :cond_10
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesPackage:[I

    invoke-virtual {v10, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "Package name is missing from package tag."

    invoke-interface {v8, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_11
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_12
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesProvider:[I

    invoke-virtual {v10, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "Authority missing from provider tag."

    const/16 v3, -0x6c

    invoke-interface {v8, v3, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_13
    :try_start_3
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :cond_14
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_15
    :goto_6
    goto/16 :goto_0

    :cond_16
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private blacklist parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredFeature:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Feature name is missing from <required-feature> tag."

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private blacklist parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredNotFeature:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Feature name is missing from <required-not-feature> tag."

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    invoke-interface {p2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    nop

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    :cond_2
    :goto_2
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseSdkLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSdkLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eqz v1, :cond_3

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v3, "sharedUserId not allowed in SDK library"

    const/16 v4, -0x6b

    invoke-interface {p3, v4, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_1
    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple SDKs for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibVersionMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_3
    :goto_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sdk-library declaration name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "android"

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {p0, v1, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x6b

    invoke-interface {p0, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    const/16 v4, 0xd

    invoke-static {v0, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v4

    if-eqz v4, :cond_2

    sget v5, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v4, v5, :cond_2

    move v0, v3

    :cond_2
    nop

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLeavingSharedUser(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSharedUserLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private blacklist parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "I",
            "Landroid/content/res/AssetManager;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {p4, v0}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed adding asset path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x65

    invoke-interface {p1, v3, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_0
    :try_start_0
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {p4, v1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    invoke-direct {v6, p4, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v2

    move v8, p5

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    return-object v4

    :cond_2
    nop

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object v3

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read manifest from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x66

    invoke-interface {p1, v4, v3, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private blacklist parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    nop

    invoke-static {p1, p4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_1
    :goto_0
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_7

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-lt v3, v5, :cond_1

    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v3, p4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "application"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    const-string v5, "PackageParsing"

    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    goto :goto_1

    :cond_5
    const-string v5, "<manifest>"

    invoke-static {v5, p2, p4, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    :cond_6
    goto :goto_0

    :cond_7
    if-nez v1, :cond_8

    const-string v3, "<manifest> does not contain an <application>"

    const-wide/32 v5, 0x8fcab42

    invoke-interface {p1, v3, v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    :cond_8
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private blacklist parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p4

    move/from16 v12, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v11, p3

    invoke-virtual {v11, v13, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v0, 0x7

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v10, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-interface {v14, v12, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSplitHasCode(IZ)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object/from16 v22, v10

    move-object v8, v15

    goto/16 :goto_9

    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v14, v12, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v12

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    :goto_1
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v6, v1

    if-eq v1, v9, :cond_d

    const/4 v1, 0x3

    if-ne v6, v1, :cond_3

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v19, v6

    move/from16 v20, v8

    move-object/from16 v22, v10

    move-object v8, v15

    goto/16 :goto_8

    :cond_3
    :goto_2
    const/4 v2, 0x2

    if-eq v6, v2, :cond_4

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v3, v13}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_6
    goto :goto_3

    :sswitch_0
    const-string/jumbo v1, "service"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_4

    :sswitch_1
    const-string v1, "activity-alias"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    goto :goto_4

    :sswitch_2
    const-string/jumbo v1, "receiver"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v9

    goto :goto_4

    :sswitch_3
    const-string/jumbo v2, "provider"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :sswitch_4
    const-string v1, "activity"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :goto_3
    const/4 v1, -0x1

    :goto_4
    packed-switch v1, :pswitch_data_0

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v4, p2

    move-object v8, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto/16 :goto_7

    :pswitch_0
    sget-boolean v4, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v18, v5

    move-object v5, v0

    move/from16 v19, v6

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v14, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-object/from16 v16, v2

    :cond_7
    move-object v2, v1

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object v8, v15

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v18, v5

    move/from16 v19, v6

    iget-object v1, v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move/from16 v20, v8

    move-object v8, v1

    move/from16 v21, v9

    move-object/from16 v9, p2

    move-object/from16 v22, v10

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move v13, v2

    move-object v6, v14

    move-object v14, v0

    move-object v5, v15

    move-object/from16 v15, p1

    invoke-static/range {v8 .. v15}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-object/from16 v16, v2

    :cond_8
    move-object v2, v1

    move-object v8, v5

    goto/16 :goto_7

    :pswitch_2
    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object v6, v14

    move-object v5, v15

    iget-object v8, v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v13, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object v14, v0

    move-object/from16 v15, p1

    invoke-static/range {v8 .. v15}, Lcom/android/internal/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-object/from16 v16, v2

    :cond_9
    move-object v2, v1

    move-object v8, v5

    goto :goto_7

    :pswitch_3
    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object v6, v14

    move-object v5, v15

    goto :goto_5

    :pswitch_4
    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object v6, v14

    move-object v5, v15

    const/16 v17, 0x1

    :goto_5
    iget-object v8, v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v13, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object v14, v0

    move-object/from16 v15, p1

    invoke-static/range {v8 .. v15}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    if-eqz v17, :cond_a

    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_6

    :cond_a
    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :goto_6
    move-object v3, v2

    move-object/from16 v16, v3

    :cond_b
    move-object v2, v1

    move-object v8, v5

    :goto_7
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v8, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_c
    move-object/from16 v14, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    move/from16 v12, p6

    move-object v15, v8

    move/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_1

    :cond_d
    move/from16 v19, v6

    move/from16 v20, v8

    move-object/from16 v22, v10

    move-object v8, v15

    :goto_8
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v22, v10

    move-object v8, v15

    :goto_9
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_4
        -0x3adbfa0f -> :sswitch_3
        -0x30341611 -> :sswitch_2
        0x2f1ad612 -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "<application>"

    invoke-static {v0, p3, p5, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_5
    const/4 v2, 0x0

    const-string v5, "<property>"

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_1
    return-object v0

    :pswitch_6
    const/4 v3, 0x0

    const-string v6, "<meta-data>"

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5fe67eda -> :sswitch_6
        -0x5aaa6a59 -> :sswitch_5
        -0x50de9846 -> :sswitch_4
        -0x4284098e -> :sswitch_3
        -0x3b32222b -> :sswitch_2
        0x88b87d -> :sswitch_1
        0x751e7745 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist parseStaticLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eqz v2, :cond_3

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v4, "sharedUserId not allowed in static shared library"

    const/16 v5, -0x6b

    invoke-interface {p3, v5, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_1
    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple static-shared libs for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    invoke-static {v1, v3}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_3
    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad static-library declaration name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2, v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v1

    const/4 v3, 0x7

    invoke-static {v2, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v2, v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    nop

    const/4 v5, 0x1

    invoke-static {v5, v5, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {p1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSmallScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNormalScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtraLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeable(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    invoke-static {v5, v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAnyDensity(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargestWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v5

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_1
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static blacklist parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    iget v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesNativeLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private blacklist parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, -0x80000000

    const/4 v9, 0x1

    invoke-direct {v1, v6, v9, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v8

    const/4 v10, 0x2

    const v11, 0x7fffffff

    invoke-direct {v1, v6, v10, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v10

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const/4 v12, 0x3

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    const/4 v15, 0x4

    invoke-virtual {v6, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    if-eqz v13, :cond_1

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v15, 0x5

    invoke-virtual {v6, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v18, v17

    :goto_0
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v19, v0

    if-eq v0, v9, :cond_9

    move/from16 v0, v19

    if-ne v0, v12, :cond_3

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    move/from16 v12, v18

    if-le v9, v12, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v18, v0

    goto/16 :goto_6

    :cond_3
    move/from16 v12, v18

    :goto_1
    const/4 v9, 0x3

    if-eq v0, v9, :cond_8

    const/4 v9, 0x4

    if-ne v0, v9, :cond_4

    move/from16 v18, v12

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x3

    goto :goto_0

    :cond_4
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    move/from16 v18, v0

    goto :goto_2

    :sswitch_0
    move/from16 v18, v0

    const-string/jumbo v0, "required-feature"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :sswitch_1
    move/from16 v18, v0

    const-string/jumbo v0, "required-not-feature"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, -0x1

    :goto_3
    packed-switch v0, :pswitch_data_0

    const-string v0, "<uses-permission>"

    goto :goto_4

    :pswitch_0
    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v14, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_1
    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :goto_4
    invoke-static {v0, v3, v5, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    :cond_6
    :goto_5
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v9

    :cond_7
    move/from16 v18, v12

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x3

    goto/16 :goto_0

    :cond_8
    move/from16 v18, v0

    move/from16 v18, v12

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x3

    goto/16 :goto_0

    :cond_9
    move/from16 v12, v18

    move/from16 v18, v19

    :goto_6
    :try_start_1
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_a

    nop

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_a
    :try_start_2
    sget v9, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v9, v8, :cond_14

    sget v9, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-le v9, v10, :cond_b

    move/from16 v20, v8

    goto/16 :goto_b

    :cond_b
    iget-object v9, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    if-eqz v9, :cond_f

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v9

    const/16 v16, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_7
    if-ltz v9, :cond_d

    iget-object v4, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_c

    nop

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_c
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    goto :goto_7

    :cond_d
    :try_start_3
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_8
    if-ltz v4, :cond_f

    iget-object v5, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_e

    nop

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_e
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :try_start_4
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/16 v16, 0x0

    move/from16 v1, v16

    :goto_9
    if-ge v1, v9, :cond_12

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    move/from16 v17, v4

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v19, v5

    const-string v5, " at: "

    move/from16 v20, v8

    const-string v8, " in package: "

    if-eq v4, v15, :cond_10

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v9

    const-string v9, "Conflicting uses-permissions flags: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_10
    move/from16 v21, v9

    :try_start_6
    const-string v4, "PackageParsing"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_a

    :cond_11
    move-object/from16 v19, v5

    move/from16 v20, v8

    move/from16 v21, v9

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p1

    move/from16 v4, v17

    goto/16 :goto_9

    :cond_12
    move/from16 v17, v4

    move-object/from16 v19, v5

    move/from16 v20, v8

    move/from16 v21, v9

    :goto_a
    if-nez v4, :cond_13

    new-instance v1, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;

    invoke-direct {v1, v7, v15}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_13
    nop

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_14
    move/from16 v20, v8

    :goto_b
    nop

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x341a4cce -> :sswitch_1
        0x64ee7ac8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-lez v0, :cond_14

    move/from16 v5, p4

    and-int/lit16 v0, v5, 0x200

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    move v8, v0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v0, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0x7fffffff

    :try_start_0
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    const/4 v15, 0x3

    if-eqz v6, :cond_2

    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v7, v15, :cond_1

    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v16, 0x1

    xor-int/lit8 v7, v7, 0x1

    move v11, v7

    goto :goto_1

    :cond_1
    iget v7, v6, Landroid/util/TypedValue;->data:I

    move v0, v7

    const/4 v11, 0x1

    :cond_2
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v17

    move-object/from16 v6, v17

    if-eqz v6, :cond_4

    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v7, v15, :cond_3

    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    if-nez v11, :cond_5

    move-object v10, v13

    goto :goto_2

    :cond_3
    iget v7, v6, Landroid/util/TypedValue;->data:I

    move v12, v7

    goto :goto_2

    :cond_4
    move v12, v0

    move-object v13, v10

    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    const/4 v7, 0x2

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    move-object v6, v7

    if-eqz v6, :cond_6

    iget v7, v6, Landroid/util/TypedValue;->data:I

    move v14, v7

    :cond_6
    sget-object v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v12, v13, v7, v1, v8}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v1, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v15

    :cond_7
    :try_start_1
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v18, v17

    nop

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move/from16 v5, v18

    invoke-interface {v1, v15, v5}, Landroid/content/pm/parsing/result/ParseInput;->enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v1, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v16

    :cond_8
    move-object/from16 v18, v6

    :try_start_2
    sget v6, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    move-object/from16 v19, v7

    sget-object v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v0, v10, v6, v7, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v7

    :cond_9
    :try_start_3
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move/from16 v20, v0

    invoke-interface {v2, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    if-eqz v8, :cond_b

    sget v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    invoke-static {v14, v0, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMaxSdkVersion(IILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v16

    :cond_a
    :try_start_4
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v22, v21

    move-object/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v22, v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move/from16 v23, v5

    move-object/from16 v24, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    move/from16 v5, v23

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_c

    goto :goto_4

    :cond_c
    move/from16 v23, v0

    goto :goto_8

    :cond_d
    :goto_4
    const/4 v6, 0x3

    if-eq v5, v6, :cond_12

    const/4 v6, 0x4

    if-ne v5, v6, :cond_e

    move/from16 v23, v0

    goto :goto_7

    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v23, v0

    const-string v0, "extension-sdk"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v21, :cond_f

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v21, v0

    goto :goto_5

    :cond_f
    move-object/from16 v0, v21

    :goto_5
    invoke-static {v1, v3, v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v21, v0

    goto :goto_6

    :cond_10
    const-string v0, "<uses-sdk>"

    invoke-static {v0, v2, v4, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v6, v0

    :goto_6
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_11
    move/from16 v5, v22

    move/from16 v0, v23

    move-object/from16 v6, v24

    goto :goto_3

    :cond_12
    move/from16 v23, v0

    :goto_7
    move/from16 v5, v22

    move/from16 v0, v23

    move-object/from16 v6, v24

    goto :goto_3

    :cond_13
    move/from16 v5, v23

    move/from16 v23, v0

    :goto_8
    :try_start_5
    invoke-static/range {v21 .. v21}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_14
    :goto_9
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, ""

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdkLibrary:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    nop

    const/4 v10, 0x3

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v0, :cond_4

    if-ltz v7, :cond_4

    if-nez v9, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Depending on multiple versions of SDK library "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    const-string v0, ":"

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "debug.pm.uses_sdk_library_default_cert_digest"

    invoke-static {v9, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v9, v6}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    move-object v0, v4

    :cond_2
    :goto_0
    :try_start_3
    invoke-static {v1, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_3
    :try_start_4
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    array-length v11, v9

    add-int/2addr v11, v8

    new-array v11, v11, [Ljava/lang/String;

    move-object v15, v11

    aput-object v0, v15, v6

    array-length v11, v9

    invoke-static {v9, v6, v15, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v13, v7

    move-object/from16 v11, p1

    move-object v6, v15

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v8

    invoke-interface {v1, v8}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v8

    :cond_4
    :goto_1
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad uses-sdk-library declaration name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " certDigest"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static blacklist parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_4

    if-ltz v3, :cond_4

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Depending on multiple versions of static library "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    sget-object v7, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v8

    const/16 v9, 0x1b

    if-lt v8, v9, :cond_3

    invoke-static {p0, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {p0, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_2
    :try_start_2
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v7, v9

    :cond_3
    array-length v8, v7

    add-int/2addr v8, v4

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v1

    array-length v9, v7

    invoke-static {v7, v1, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v9, v3

    invoke-interface {p1, v2, v9, v10, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_4
    :goto_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad uses-static-library declaration name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " version: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " certDigest"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static blacklist readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .locals 15

    const v0, 0x1110276

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v2, :cond_1

    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    const-class v9, Ljava/security/PublicKey;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-class v10, Ljava/security/PublicKey;

    invoke-virtual {p0, v9, v10}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/PublicKey;

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private static blacklist resId(ILandroid/content/res/TypedArray;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public static blacklist setCompatibilityModeEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    return-void
.end method

.method private static blacklist setMaxAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .locals 9

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const v0, 0x3fee147b    # 1.86f

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMaxAspectRatio()F

    move-result v1

    cmpl-float v2, v1, v2

    const-string v3, "android.max_aspect"

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v7

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v8

    invoke-static {v6, v8, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setMaxAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private blacklist setMinAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .locals 7

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMinAspectRatio()F

    move-result v0

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v5

    invoke-static {v4, v5, v0}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setMinAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist setSupportsSizeChanges(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .locals 10

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.supports_size_changes"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    if-nez v4, :cond_1

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    invoke-static {v8, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setSupportsSizeChanges(Lcom/android/internal/pm/pkg/component/ParsedActivity;Z)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static blacklist string(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionUtils;->isCombinationValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x65

    const-string v1, "Combination <attribution> tags are not valid"

    invoke-interface {p1, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->declareDuplicatePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    const/16 v1, -0x6c

    if-eqz v0, :cond_1

    const-string v0, "Found duplicate permission with a different attribute value."

    invoke-interface {p1, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->convertCompatPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    invoke-direct {p0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->convertSplitPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_NAL_GET_APP_LIST:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.permission.cts.appthataccesseslocation"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.permission.cts.appthatrequestcustompermission"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.google.android.sdksandbox"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.appenumeration.queries.nothing.hasprovider"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.appenumeration.queries.nothing.haspermission"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v3

    :goto_1
    if-nez v4, :cond_4

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.samsung.android.permission.GET_APP_LIST"

    invoke-interface {p2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_4
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v4, 0x4

    if-lt v0, v4, :cond_5

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSmallScreensSupported()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isNormalScreensSupported()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isLargeScreensSupported()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isExtraLargeScreensSupported()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isAnyDensity()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-static {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    :cond_6
    and-int/lit16 v0, p3, 0x400

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    if-eqz v0, :cond_8

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is an APEX package and shouldn\'t declare permissions."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_8
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-nez v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/Serializable;

    invoke-virtual {p0, v7}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parsePackageFromPackageLite(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/PackageLite;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/PackageLite;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v1, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->isCoreApp()Z

    move-result v6

    move-object v2, v10

    move-object v5, v11

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v1

    invoke-interface {v12, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getVersionCodeMajor()I

    move-result v1

    invoke-interface {v12, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionCodeMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getBaseRevisionCode()I

    move-result v1

    invoke-interface {v12, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBaseRevisionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v12, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompileSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v12, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v12, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIsolatedSplitLoading(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v12, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v2

    invoke-interface {v12, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    and-int/lit8 v4, v8, 0x8

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v5

    if-nez v5, :cond_1

    const/16 v1, -0x66

    const-string v2, "archivePackage is missing"

    invoke-interface {v7, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_1
    nop

    invoke-interface {v12, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v4, 0x1d

    if-lt v13, v4, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0xe

    if-lt v13, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    iget-object v3, v5, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    if-ge v13, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0x1c

    if-ge v13, v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    iget-object v3, v5, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    iget-object v3, v5, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/4 v4, -0x1

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v12, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    const/4 v3, 0x0

    invoke-static {v10, v10, v3, v7}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_6
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v12, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object/from16 v19, v1

    move-object v1, v10

    move-object/from16 v20, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    move/from16 v4, p3

    move-object/from16 v21, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_7
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v12, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    const/4 v2, -0x1

    invoke-interface {v12, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v12, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-direct {v0, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    invoke-direct {v0, v7, v12, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_8

    return-object v2

    :cond_8
    invoke-interface {v12, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    and-int/lit8 v3, v8, 0x20

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-interface {v12, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_5

    :cond_9
    sget-object v3, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {v12, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :goto_5
    nop

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v3

    invoke-interface {v12, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    invoke-interface {v7, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method
