.class public Landroid/content/pm/ActivityInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ActivityInfo$WindowLayout;,
        Landroid/content/pm/ActivityInfo$SizeChangesSupportMode;,
        Landroid/content/pm/ActivityInfo$Config;,
        Landroid/content/pm/ActivityInfo$ScreenOrientation;,
        Landroid/content/pm/ActivityInfo$ColorMode;,
        Landroid/content/pm/ActivityInfo$LaunchMode;
    }
.end annotation


# static fields
.field public static final blacklist ALWAYS_SANDBOX_DISPLAY_APIS:J = 0xb06f389L

.field private static final blacklist CHECK_MIN_WIDTH_HEIGHT_FOR_MULTI_WINDOW:J = 0xbc7f809L

.field public static final blacklist COLOR_MODE_A8:I = 0x4

.field public static final whitelist COLOR_MODE_DEFAULT:I = 0x0

.field public static final whitelist COLOR_MODE_HDR:I = 0x2

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT:I = 0x1

.field public static final greylist-max-o CONFIG_ASSETS_PATHS:I = -0x80000000

.field public static final blacklist CONFIG_BOLD_TEXT:I = 0x1000000

.field public static final whitelist CONFIG_COLOR_MODE:I = 0x4000

.field public static final whitelist CONFIG_DENSITY:I = 0x1000

.field public static final blacklist CONFIG_DISPLAY_DEVICE_TYPE:I = 0x8000000

.field public static final blacklist CONFIG_FLIPFONT:I = 0x10000000

.field public static final whitelist CONFIG_FONT_SCALE:I = 0x40000000

.field public static final whitelist CONFIG_FONT_WEIGHT_ADJUSTMENT:I = 0x10000000

.field public static final whitelist CONFIG_KEYBOARD:I = 0x10

.field public static final whitelist CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final whitelist CONFIG_LAYOUT_DIRECTION:I = 0x2000

.field public static final whitelist CONFIG_LOCALE:I = 0x4

.field public static final whitelist CONFIG_MCC:I = 0x1

.field public static final whitelist CONFIG_MNC:I = 0x2

.field public static greylist-max-o CONFIG_NATIVE_BITS:[I = null

.field public static final whitelist CONFIG_NAVIGATION:I = 0x40

.field public static final blacklist CONFIG_NIGHT_DIM:I = 0x400000

.field public static final whitelist CONFIG_ORIENTATION:I = 0x80

.field public static final whitelist CONFIG_SCREEN_LAYOUT:I = 0x100

.field public static final whitelist CONFIG_SCREEN_SIZE:I = 0x400

.field public static final blacklist CONFIG_SHOW_BUTTON_SHAPE:I = 0x200000

.field public static final whitelist CONFIG_SMALLEST_SCREEN_SIZE:I = 0x800

.field public static final blacklist CONFIG_THEME_SEQ:I = 0x10000

.field public static final whitelist CONFIG_TOUCHSCREEN:I = 0x8

.field public static final whitelist CONFIG_UI_MODE:I = 0x200

.field public static final greylist-max-o CONFIG_WINDOW_CONFIGURATION:I = 0x20000000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DOCUMENT_LAUNCH_ALWAYS:I = 0x2

.field public static final whitelist DOCUMENT_LAUNCH_INTO_EXISTING:I = 0x1

.field public static final whitelist DOCUMENT_LAUNCH_NEVER:I = 0x3

.field public static final whitelist DOCUMENT_LAUNCH_NONE:I = 0x0

.field public static final greylist-max-r FLAG_ALLOW_EMBEDDED:I = -0x80000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_ALLOW_TASK_REPARENTING:I = 0x40

.field public static final whitelist FLAG_ALLOW_UNTRUSTED_ACTIVITY_EMBEDDING:I = 0x10000000

.field public static final greylist-max-o FLAG_ALWAYS_FOCUSABLE:I = 0x40000

.field public static final whitelist FLAG_ALWAYS_RETAIN_TASK_STATE:I = 0x8

.field public static final whitelist FLAG_AUTO_REMOVE_FROM_RECENTS:I = 0x2000

.field public static final blacklist FLAG_CAN_DISPLAY_ON_REMOTE_DEVICES:I = 0x10000

.field public static final whitelist FLAG_CLEAR_TASK_ON_LAUNCH:I = 0x4

.field public static final whitelist FLAG_ENABLE_VR_MODE:I = 0x8000

.field public static final whitelist FLAG_EXCLUDE_FROM_RECENTS:I = 0x20

.field public static final whitelist FLAG_FINISH_ON_CLOSE_SYSTEM_DIALOGS:I = 0x100

.field public static final whitelist FLAG_FINISH_ON_TASK_LAUNCH:I = 0x2

.field public static final whitelist FLAG_HARDWARE_ACCELERATED:I = 0x200

.field public static final whitelist FLAG_IMMERSIVE:I = 0x800

.field public static final greylist-max-o FLAG_IMPLICITLY_VISIBLE_TO_INSTANT_APP:I = 0x200000

.field public static final blacklist FLAG_INHERIT_SHOW_WHEN_LOCKED:I = 0x1

.field public static final whitelist FLAG_MULTIPROCESS:I = 0x1

.field public static final whitelist FLAG_NO_HISTORY:I = 0x80

.field public static final whitelist FLAG_PREFER_MINIMAL_POST_PROCESSING:I = 0x2000000

.field public static final whitelist FLAG_RELINQUISH_TASK_IDENTITY:I = 0x1000

.field public static final whitelist FLAG_RESUME_WHILE_PAUSING:I = 0x4000

.field public static final greylist-max-r FLAG_SHOW_FOR_ALL_USERS:I = 0x400

.field public static final greylist-max-o FLAG_SHOW_WHEN_LOCKED:I = 0x800000

.field public static final whitelist FLAG_SINGLE_USER:I = 0x40000000

.field public static final whitelist FLAG_STATE_NOT_NEEDED:I = 0x10

.field public static final greylist-max-o FLAG_SUPPORTS_PICTURE_IN_PICTURE:I = 0x400000

.field public static final greylist-max-o FLAG_SYSTEM_USER_ONLY:I = 0x20000000

.field public static final greylist-max-o FLAG_TURN_SCREEN_ON:I = 0x1000000

.field public static final greylist-max-o FLAG_VISIBLE_TO_INSTANT_APP:I = 0x100000

.field public static final blacklist FORCE_NON_RESIZE_APP:J = 0xacbec0bL

.field public static final blacklist FORCE_RESIZE_APP:J = 0xa5faf38L

.field public static final whitelist LAUNCH_MULTIPLE:I = 0x0

.field public static final whitelist LAUNCH_SINGLE_INSTANCE:I = 0x3

.field public static final whitelist LAUNCH_SINGLE_INSTANCE_PER_TASK:I = 0x4

.field public static final whitelist LAUNCH_SINGLE_TASK:I = 0x2

.field public static final whitelist LAUNCH_SINGLE_TOP:I = 0x1

.field public static final greylist-max-o LOCK_TASK_LAUNCH_MODE_ALWAYS:I = 0x2

.field public static final greylist-max-o LOCK_TASK_LAUNCH_MODE_DEFAULT:I = 0x0

.field public static final blacklist LOCK_TASK_LAUNCH_MODE_IF_ALLOWLISTED:I = 0x3

.field public static final greylist-max-o LOCK_TASK_LAUNCH_MODE_NEVER:I = 0x1

.field public static final blacklist NEVER_SANDBOX_DISPLAY_APIS:J = 0xb0468a2L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO:J = 0xa5faf64L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_LARGE:J = 0xabf9183L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_LARGE_VALUE:F = 1.7777778f

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_MEDIUM:J = 0xabf91bdL

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_MEDIUM_VALUE:F = 1.5f

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_PORTRAIT_ONLY:J = 0xc2368d6L

.field public static final whitelist PERSIST_ACROSS_REBOOTS:I = 0x2

.field public static final whitelist PERSIST_NEVER:I = 0x1

.field public static final whitelist PERSIST_ROOT_ONLY:I = 0x0

.field public static final blacklist PRIVATE_FLAG_HOME_TRANSITION_SOUND:I = 0x2

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZABLE_LANDSCAPE_ONLY:I = 0x5

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZABLE_PORTRAIT_ONLY:I = 0x6

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZABLE_PRESERVE_ORIENTATION:I = 0x7

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZEABLE:I = 0x4

.field public static final blacklist RESIZE_MODE_RESIZABLE_ALLOW_LIST:I = 0x100000

.field public static final blacklist RESIZE_MODE_RESIZEABLE:I = 0x2

.field public static final greylist-max-o RESIZE_MODE_RESIZEABLE_AND_PIPABLE_DEPRECATED:I = 0x3

.field public static final greylist-max-o RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION:I = 0x1

.field public static final blacklist RESIZE_MODE_UNRESIZABLE_BLOCK_LIST:I = 0x200000

.field public static final greylist-max-o RESIZE_MODE_UNRESIZEABLE:I = 0x0

.field public static final whitelist SCREEN_ORIENTATION_BEHIND:I = 0x3

.field public static final whitelist SCREEN_ORIENTATION_FULL_SENSOR:I = 0xa

.field public static final whitelist SCREEN_ORIENTATION_FULL_USER:I = 0xd

.field public static final whitelist SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final whitelist SCREEN_ORIENTATION_LOCKED:I = 0xe

.field public static final whitelist SCREEN_ORIENTATION_NOSENSOR:I = 0x5

.field public static final whitelist SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final whitelist SCREEN_ORIENTATION_REVERSE_LANDSCAPE:I = 0x8

.field public static final whitelist SCREEN_ORIENTATION_REVERSE_PORTRAIT:I = 0x9

.field public static final whitelist SCREEN_ORIENTATION_SENSOR:I = 0x4

.field public static final whitelist SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final whitelist SCREEN_ORIENTATION_SENSOR_PORTRAIT:I = 0x7

.field public static final greylist-max-o SCREEN_ORIENTATION_UNSET:I = -0x2

.field public static final whitelist SCREEN_ORIENTATION_UNSPECIFIED:I = -0x1

.field public static final whitelist SCREEN_ORIENTATION_USER:I = 0x2

.field public static final whitelist SCREEN_ORIENTATION_USER_LANDSCAPE:I = 0xb

.field public static final whitelist SCREEN_ORIENTATION_USER_PORTRAIT:I = 0xc

.field public static final blacklist SIZE_CHANGES_SUPPORTED_METADATA:I = 0x2

.field public static final blacklist SIZE_CHANGES_SUPPORTED_OVERRIDE:I = 0x3

.field public static final blacklist SIZE_CHANGES_UNSUPPORTED_METADATA:I = 0x0

.field public static final blacklist SIZE_CHANGES_UNSUPPORTED_OVERRIDE:I = 0x1

.field public static final whitelist UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:I = 0x1

.field private static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public whitelist colorMode:I

.field public whitelist configChanges:I

.field public whitelist documentLaunchMode:I

.field public whitelist flags:I

.field public whitelist launchMode:I

.field public greylist-max-o launchToken:Ljava/lang/String;

.field public greylist-max-o lockTaskLaunchMode:I

.field private blacklist mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxAspectRatio:F

.field private blacklist mMinAspectRatio:F

.field public whitelist maxRecents:I

.field public whitelist parentActivityName:Ljava/lang/String;

.field public whitelist permission:Ljava/lang/String;

.field public whitelist persistableMode:I

.field public blacklist privateFlags:I

.field public blacklist requestTransientBarDelay:I

.field public greylist-max-o requestedVrComponent:Ljava/lang/String;

.field public greylist resizeMode:I

.field public greylist-max-o rotationAnimation:I

.field public whitelist screenOrientation:I

.field public whitelist softInputMode:I

.field public blacklist supportsSizeChanges:Z

.field public whitelist targetActivity:Ljava/lang/String;

.field public whitelist taskAffinity:Ljava/lang/String;

.field public whitelist theme:I

.field public whitelist uiOptions:I

.field public whitelist windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

.field public blacklist xrFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 65
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 1025
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    .line 1935
    new-instance v0, Landroid/content/pm/ActivityInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x800
        0x1000
        0x200
        0x2000
        0x100
        0x4000
        0x10000
        0x20000
        0x8000
        0x40000
        0x80000
        0x100000
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 1377
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    .line 286
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->xrFlags:I

    .line 380
    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 792
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1304
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1328
    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1374
    iput v1, p0, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    .line 1378
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/ActivityInfo;

    .line 1381
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 286
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->xrFlags:I

    .line 380
    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 792
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1304
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1328
    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1374
    iput v1, p0, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    .line 1382
    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1383
    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1384
    iget v0, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 1385
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1386
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1387
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1388
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 1389
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1390
    iget v0, p1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 1391
    iget v0, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1392
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1393
    iget v0, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1394
    iget v0, p1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1395
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 1396
    iget v0, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 1397
    iget v0, p1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 1398
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1399
    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1400
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 1401
    iget v0, p1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1402
    iget v0, p1, Landroid/content/pm/ActivityInfo;->colorMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 1403
    iget v0, p1, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    .line 1404
    iget v0, p1, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    .line 1405
    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 1413
    iget v0, p1, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    .line 1416
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1946
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 286
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->xrFlags:I

    .line 380
    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 792
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1304
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1328
    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1374
    iput v1, p0, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    .line 1947
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 1950
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1951
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1952
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 1953
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 1954
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 1956
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1957
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1960
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 1961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 1962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 1963
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 1964
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1965
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1967
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1968
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 1969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 1971
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    .line 1972
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    .line 1973
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 1981
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    .line 1984
    sget-object v0, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1985
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1986
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1988
    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-r activityInfoConfigJavaToNative(I)I
    .locals 4
    .param p0, "input"    # I

    .line 1232
    const/4 v0, 0x0

    .line 1233
    .local v0, "output":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1234
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p0

    if-eqz v3, :cond_0

    .line 1235
    aget v2, v2, v1

    or-int/2addr v0, v2

    .line 1233
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1238
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static greylist-max-o activityInfoConfigNativeToJava(I)I
    .locals 4
    .param p0, "input"    # I

    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "output":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1249
    aget v2, v2, v1

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 1250
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 1248
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1253
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static greylist-max-o colorModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "colorMode"    # I

    .line 1921
    packed-switch p0, :pswitch_data_0

    .line 1931
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1929
    :pswitch_1
    const-string v0, "COLOR_MODE_A8"

    return-object v0

    .line 1927
    :pswitch_2
    const-string v0, "COLOR_MODE_HDR"

    return-object v0

    .line 1925
    :pswitch_3
    const-string v0, "COLOR_MODE_WIDE_COLOR_GAMUT"

    return-object v0

    .line 1923
    :pswitch_4
    const-string v0, "COLOR_MODE_DEFAULT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist isChangeEnabled(J)Z
    .locals 2
    .param p1, "changeId"    # J

    .line 1638
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1639
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1638
    invoke-static {p1, p2, v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isFixedOrientationLandscape(I)Z
    .locals 1
    .param p0, "orientation"    # I

    .line 1468
    if-eqz p0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

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

.method public static greylist-max-o isFixedOrientationPortrait(I)Z
    .locals 2
    .param p0, "orientation"    # I

    .line 1487
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static greylist-max-o isPreserveOrientationMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 1663
    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

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

.method public static greylist isResizeableMode(I)Z
    .locals 2
    .param p0, "mode"    # I

    .line 1650
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static greylist isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z
    .locals 3
    .param p0, "attributes"    # Landroid/content/res/TypedArray;

    .line 1862
    nop

    .line 1863
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 1865
    .local v0, "isTranslucent":Z
    nop

    .line 1866
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1869
    .local v2, "isFloating":Z
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final greylist-max-o lockTaskLaunchModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "lockTaskLaunchMode"    # I

    .line 1341
    packed-switch p0, :pswitch_data_0

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1349
    :pswitch_0
    const-string v0, "LOCK_TASK_LAUNCH_MODE_IF_ALLOWLISTED"

    return-object v0

    .line 1347
    :pswitch_1
    const-string v0, "LOCK_TASK_LAUNCH_MODE_ALWAYS"

    return-object v0

    .line 1345
    :pswitch_2
    const-string v0, "LOCK_TASK_LAUNCH_MODE_NEVER"

    return-object v0

    .line 1343
    :pswitch_3
    const-string v0, "LOCK_TASK_LAUNCH_MODE_DEFAULT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o persistableModeToString()Ljava/lang/String;
    .locals 2

    .line 1430
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    packed-switch v0, :pswitch_data_0

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1433
    :pswitch_0
    const-string v0, "PERSIST_ACROSS_REBOOTS"

    return-object v0

    .line 1432
    :pswitch_1
    const-string v0, "PERSIST_NEVER"

    return-object v0

    .line 1431
    :pswitch_2
    const-string v0, "PERSIST_ROOT_ONLY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o resizeModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 1670
    packed-switch p0, :pswitch_data_0

    .line 1687
    :pswitch_0
    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 1688
    const-string v0, "RESIZE_MODE_RESIZEABLE_S"

    return-object v0

    .line 1684
    :pswitch_1
    const-string v0, "RESIZE_MODE_FORCE_RESIZABLE_PRESERVE_ORIENTATION"

    return-object v0

    .line 1680
    :pswitch_2
    const-string v0, "RESIZE_MODE_FORCE_RESIZABLE_PORTRAIT_ONLY"

    return-object v0

    .line 1682
    :pswitch_3
    const-string v0, "RESIZE_MODE_FORCE_RESIZABLE_LANDSCAPE_ONLY"

    return-object v0

    .line 1678
    :pswitch_4
    const-string v0, "RESIZE_MODE_FORCE_RESIZEABLE"

    return-object v0

    .line 1676
    :pswitch_5
    const-string v0, "RESIZE_MODE_RESIZEABLE"

    return-object v0

    .line 1674
    :pswitch_6
    const-string v0, "RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    return-object v0

    .line 1672
    :pswitch_7
    const-string v0, "RESIZE_MODE_UNRESIZEABLE"

    return-object v0

    .line 1693
    :cond_0
    const/high16 v0, 0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 1694
    const-string v0, "RESIZE_MODE_UNRESIZEABLE_S"

    return-object v0

    .line 1697
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist reverseOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .line 1499
    packed-switch p0, :pswitch_data_0

    .line 1517
    :pswitch_0
    return p0

    .line 1515
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 1513
    :pswitch_2
    const/16 v0, 0xc

    return v0

    .line 1511
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 1509
    :pswitch_4
    const/16 v0, 0x9

    return v0

    .line 1507
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 1505
    :pswitch_6
    const/4 v0, 0x7

    return v0

    .line 1503
    :pswitch_7
    const/4 v0, 0x0

    return v0

    .line 1501
    :pswitch_8
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static greylist-max-o screenOrientationToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "orientation"    # I

    .line 1877
    packed-switch p0, :pswitch_data_0

    .line 1913
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1911
    :pswitch_0
    const-string v0, "SCREEN_ORIENTATION_LOCKED"

    return-object v0

    .line 1909
    :pswitch_1
    const-string v0, "SCREEN_ORIENTATION_FULL_USER"

    return-object v0

    .line 1907
    :pswitch_2
    const-string v0, "SCREEN_ORIENTATION_USER_PORTRAIT"

    return-object v0

    .line 1905
    :pswitch_3
    const-string v0, "SCREEN_ORIENTATION_USER_LANDSCAPE"

    return-object v0

    .line 1903
    :pswitch_4
    const-string v0, "SCREEN_ORIENTATION_FULL_SENSOR"

    return-object v0

    .line 1901
    :pswitch_5
    const-string v0, "SCREEN_ORIENTATION_REVERSE_PORTRAIT"

    return-object v0

    .line 1899
    :pswitch_6
    const-string v0, "SCREEN_ORIENTATION_REVERSE_LANDSCAPE"

    return-object v0

    .line 1897
    :pswitch_7
    const-string v0, "SCREEN_ORIENTATION_SENSOR_PORTRAIT"

    return-object v0

    .line 1895
    :pswitch_8
    const-string v0, "SCREEN_ORIENTATION_SENSOR_LANDSCAPE"

    return-object v0

    .line 1893
    :pswitch_9
    const-string v0, "SCREEN_ORIENTATION_NOSENSOR"

    return-object v0

    .line 1891
    :pswitch_a
    const-string v0, "SCREEN_ORIENTATION_SENSOR"

    return-object v0

    .line 1889
    :pswitch_b
    const-string v0, "SCREEN_ORIENTATION_BEHIND"

    return-object v0

    .line 1887
    :pswitch_c
    const-string v0, "SCREEN_ORIENTATION_USER"

    return-object v0

    .line 1885
    :pswitch_d
    const-string v0, "SCREEN_ORIENTATION_PORTRAIT"

    return-object v0

    .line 1883
    :pswitch_e
    const-string v0, "SCREEN_ORIENTATION_LANDSCAPE"

    return-object v0

    .line 1881
    :pswitch_f
    const-string v0, "SCREEN_ORIENTATION_UNSPECIFIED"

    return-object v0

    .line 1879
    :pswitch_10
    const-string v0, "SCREEN_ORIENTATION_UNSET"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist sizeChangesSupportModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 1703
    packed-switch p0, :pswitch_data_0

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1711
    :pswitch_0
    const-string v0, "SIZE_CHANGES_SUPPORTED_OVERRIDE"

    return-object v0

    .line 1709
    :pswitch_1
    const-string v0, "SIZE_CHANGES_SUPPORTED_METADATA"

    return-object v0

    .line 1707
    :pswitch_2
    const-string v0, "SIZE_CHANGES_UNSUPPORTED_OVERRIDE"

    return-object v0

    .line 1705
    :pswitch_3
    const-string v0, "SIZE_CHANGES_UNSUPPORTED_METADATA"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z
    .locals 2
    .param p1, "constrainDisplayApisConfig"    # Landroid/content/pm/ConstrainDisplayApisConfig;

    .line 1565
    const-wide/32 v0, 0xb06f389

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1566
    invoke-virtual {p1, v0}, Landroid/content/pm/ConstrainDisplayApisConfig;->getAlwaysConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1565
    :goto_1
    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1807
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1727
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 1728
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpFlags"    # I

    .line 1732
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1733
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1736
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    .line 1737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "taskAffinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " persistableMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1739
    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;->persistableModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1737
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1741
    :cond_1
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_3

    .line 1742
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1743
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " privateFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 1744
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " theme=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1745
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1742
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1747
    :cond_3
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-nez v0, :cond_4

    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v0, :cond_5

    .line 1749
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "screenOrientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " configChanges=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1750
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " softInputMode=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1751
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1749
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1753
    :cond_5
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v0, :cond_6

    .line 1754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " uiOptions=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1756
    :cond_6
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_7

    .line 1757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lockTaskLaunchMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 1758
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->lockTaskLaunchModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1757
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1760
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_8

    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "windowLayout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v3, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v4, v4, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1765
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "resizeMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1766
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "requestedVrComponent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1769
    :cond_9
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_a

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "maxAspectRatio="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1772
    :cond_a
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p0, v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio(I)F

    move-result v0

    .line 1773
    .local v0, "minAspectRatio":F
    cmpl-float v2, v0, v2

    if-eqz v2, :cond_b

    .line 1774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "minAspectRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_b

    .line 1776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getManifestMinAspectRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1779
    :cond_b
    iget-boolean v2, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz v2, :cond_c

    .line 1780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "supportsSizeChanges=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1790
    :cond_c
    iget v2, p0, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    if-eq v2, v1, :cond_d

    .line 1791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestTransientBarDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1794
    :cond_d
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-eqz v1, :cond_e

    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "knownActivityEmbeddingCerts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1797
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 1798
    return-void
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

    .line 1619
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 1620
    :cond_0
    nop

    .line 1619
    :goto_0
    return-object v0
.end method

.method public blacklist getManifestMinAspectRatio()F
    .locals 1

    .line 1644
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return v0
.end method

.method public blacklist getMaxAspectRatio()F
    .locals 1

    .line 1576
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    return v0
.end method

.method public blacklist getMinAspectRatio(I)F
    .locals 2
    .param p1, "orientation"    # I

    .line 1595
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    const-wide/32 v0, 0xa5faf64

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/32 v0, 0xc2368d6

    .line 1596
    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1601
    :cond_0
    const-wide/32 v0, 0xabf9183

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1602
    const v0, 0x3fe38e39

    iget v1, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 1605
    :cond_1
    const-wide/32 v0, 0xabf91bd

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1606
    const/high16 v0, 0x3fc00000    # 1.5f

    iget v1, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 1609
    :cond_2
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return v0

    .line 1598
    :cond_3
    :goto_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return v0
.end method

.method public greylist-max-o getRealConfigChanged()I
    .locals 2

    .line 1265
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 1266
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 v0, v0, 0x800

    goto :goto_0

    .line 1268
    :cond_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    :goto_0
    or-int/lit8 v0, v0, 0x0

    .line 1265
    return v0
.end method

.method public final whitelist getThemeResource()I
    .locals 1

    .line 1426
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    :goto_0
    return v0
.end method

.method public blacklist hasFixedAspectRatio(I)Z
    .locals 2
    .param p1, "orientation"    # I

    .line 1443
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio(I)F

    move-result v0

    cmpl-float v0, v0, v1

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

.method public greylist-max-o isFixedOrientation()Z
    .locals 2

    .line 1451
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

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

.method greylist-max-o isFixedOrientationLandscape()Z
    .locals 1

    .line 1460
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o isFixedOrientationPortrait()Z
    .locals 1

    .line 1479
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    return v0
.end method

.method public blacklist neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z
    .locals 2
    .param p1, "constrainDisplayApisConfig"    # Landroid/content/pm/ConstrainDisplayApisConfig;

    .line 1556
    const-wide/32 v0, 0xb0468a2

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1557
    invoke-virtual {p1, v0}, Landroid/content/pm/ConstrainDisplayApisConfig;->getNeverConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1556
    :goto_1
    return v0
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

    .line 1631
    .local p1, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1632
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1633
    .local v1, "knownCert":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1634
    .end local v1    # "knownCert":Ljava/lang/String;
    goto :goto_0

    .line 1635
    :cond_0
    return-void
.end method

.method public blacklist setMaxAspectRatio(F)V
    .locals 2
    .param p1, "maxAspectRatio"    # F

    .line 1571
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    move v0, p1

    :cond_0
    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    .line 1572
    return-void
.end method

.method public blacklist setMinAspectRatio(F)V
    .locals 2
    .param p1, "minAspectRatio"    # F

    .line 1581
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    move v0, p1

    :cond_0
    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    .line 1582
    return-void
.end method

.method public blacklist shouldCheckMinWidthHeightForMultiWindow()Z
    .locals 2

    .line 1723
    const-wide/32 v0, 0xbc7f809

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public greylist supportsPictureInPicture()Z
    .locals 2

    .line 1527
    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

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

.method public blacklist supportsSizeChanges()I
    .locals 2

    .line 1536
    const-wide/32 v0, 0xacbec0b

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    const/4 v0, 0x1

    return v0

    .line 1540
    :cond_0
    iget-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz v0, :cond_1

    .line 1541
    const/4 v0, 0x2

    return v0

    .line 1544
    :cond_1
    const-wide/32 v0, 0xa5faf38

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1545
    const/4 v0, 0x3

    return v0

    .line 1548
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1802
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1801
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 1811
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1812
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1814
    iget v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1815
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1816
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1817
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1818
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1819
    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1820
    iget v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1821
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1822
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1823
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1824
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1825
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1826
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1827
    iget v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1828
    iget v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    .line 1830
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1831
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1833
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1835
    :goto_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1836
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1837
    iget v0, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1838
    iget v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1840
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1841
    iget-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1849
    iget v0, p0, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    sget-object v0, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 1853
    return-void
.end method
