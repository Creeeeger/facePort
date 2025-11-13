.class public final Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode;,
        Landroid/view/Display$HdrCapabilities;,
        Landroid/view/Display$HdrSdrRatioListenerWrapper;,
        Landroid/view/Display$ColorMode;,
        Landroid/view/Display$StateReason;
    }
.end annotation


# static fields
.field private static final greylist-max-o CACHED_APP_SIZE_DURATION_MILLIS:I = 0x14

.field public static final blacklist CARLIFE_DISPLAY_GROUP:I = 0x4

.field public static final greylist-max-o COLOR_MODE_ADOBE_RGB:I = 0x8

.field public static final greylist-max-o COLOR_MODE_BT601_525:I = 0x3

.field public static final greylist-max-o COLOR_MODE_BT601_525_UNADJUSTED:I = 0x4

.field public static final greylist-max-o COLOR_MODE_BT601_625:I = 0x1

.field public static final greylist-max-o COLOR_MODE_BT601_625_UNADJUSTED:I = 0x2

.field public static final greylist-max-o COLOR_MODE_BT709:I = 0x5

.field public static final greylist-max-o COLOR_MODE_DCI_P3:I = 0x6

.field public static final greylist-max-o COLOR_MODE_DEFAULT:I = 0x0

.field public static final greylist-max-o COLOR_MODE_DISPLAY_P3:I = 0x9

.field public static final greylist-max-o COLOR_MODE_INVALID:I = -0x1

.field public static final greylist-max-o COLOR_MODE_SRGB:I = 0x7

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist DEFAULT_DISPLAY:I = 0x0

.field public static final blacklist DEFAULT_DISPLAY_GROUP:I = 0x0

.field public static final blacklist DEX_DISPLAY:I = 0x2

.field public static final blacklist DEX_DISPLAY_GROUP:I = 0x2

.field public static final blacklist DISPLAY_MODE_ID_FOR_FRAME_RATE_OVERRIDE:I = 0xff

.field public static final blacklist EXTRA_BUILT_IN_DISPLAY:I = 0x1

.field public static final blacklist FLAG_ALWAYS_UNLOCKED:I = 0x200

.field public static blacklist FLAG_BACKGROUND_DISPLAY:I = 0x0

.field public static final greylist-max-o FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x20

.field public static final blacklist FLAG_CARLIFE_DISPLAY:I = 0x100000

.field public static final blacklist FLAG_EXTRA_BUILT_IN_DISPLAY:I = 0x40000

.field public static final blacklist FLAG_HIDDEN_SPACE_DISPLAY:I = 0x2000000

.field public static final blacklist FLAG_NO_LOCK_PRESENTATION:I = 0x20000000

.field public static final blacklist FLAG_OWN_DISPLAY_GROUP:I = 0x100

.field public static final blacklist FLAG_OWN_FOCUS:I = 0x800

.field public static final blacklist FLAG_PC_DEX_DISPLAY:I = 0x8000000

.field public static final whitelist FLAG_PRESENTATION:I = 0x8

.field public static final whitelist FLAG_PRIVATE:I = 0x4

.field public static final blacklist FLAG_REAR:I = 0x2000

.field public static final blacklist FLAG_REMOTE_APP_DISPLAY:I = 0x200000

.field public static final blacklist FLAG_ROTATES_WITH_CONTENT:I = 0x4000

.field public static final whitelist FLAG_ROUND:I = 0x10

.field public static final greylist-max-o FLAG_SCALING_DISABLED:I = 0x40000000

.field public static final whitelist FLAG_SECURE:I = 0x2

.field public static final blacklist FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:I = 0x40

.field public static final blacklist FLAG_SPEG_DISPLAY:I = 0x8000

.field public static final blacklist FLAG_STEAL_TOP_FOCUS_DISABLED:I = 0x1000

.field public static final whitelist FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x1

.field public static final blacklist FLAG_TOUCH_FEEDBACK_DISABLED:I = 0x400

.field public static final blacklist FLAG_TRUSTED:I = 0x80

.field public static final blacklist FLAG_VIEW_COVER_DISPLAY:I = 0x80000

.field public static final blacklist FLAG_WIFI_DISPLAY:I = 0x10000000

.field public static final blacklist FLAG_WIRELESS_DEX_DISPLAY:I = 0x4000000

.field public static final whitelist INVALID_DISPLAY:I = -0x1

.field public static final blacklist INVALID_DISPLAY_GROUP:I = -0x1

.field public static final blacklist INVALID_DISPLAY_HEIGHT:I = -0x1

.field public static final blacklist INVALID_DISPLAY_REFRESH_RATE:F = 0.0f

.field public static final blacklist INVALID_DISPLAY_WIDTH:I = -0x1

.field public static final blacklist MAX_STATIC_DISPLAY:I = 0x4

.field public static final blacklist MAX_STATIC_DISPLAY_GROUP:I = 0x4

.field public static final greylist-max-o REMOVE_MODE_DESTROY_CONTENT:I = 0x1

.field public static final greylist-max-o REMOVE_MODE_MOVE_CONTENT_TO_PRIMARY:I = 0x0

.field public static final whitelist SEM_TYPE_EXTERNAL:I = 0x2

.field public static final whitelist STATE_DOZE:I = 0x3

.field public static final whitelist STATE_DOZE_SUSPEND:I = 0x4

.field public static final whitelist STATE_OFF:I = 0x1

.field public static final whitelist STATE_ON:I = 0x2

.field public static final whitelist STATE_ON_SUSPEND:I = 0x6

.field public static final blacklist STATE_REASON_DEFAULT_POLICY:I = 0x1

.field public static final blacklist STATE_REASON_DRAW_WAKE_LOCK:I = 0x2

.field public static final blacklist STATE_REASON_DREAM_MANAGER:I = 0x5

.field public static final blacklist STATE_REASON_KEY:I = 0x6

.field public static final blacklist STATE_REASON_MOTION:I = 0x7

.field public static final blacklist STATE_REASON_OFFLOAD:I = 0x3

.field public static final blacklist STATE_REASON_TILT:I = 0x4

.field public static final blacklist STATE_REASON_UNKNOWN:I = 0x0

.field public static final whitelist STATE_UNKNOWN:I = 0x0

.field public static final whitelist STATE_VR:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Display"

.field public static final greylist-max-r TYPE_EXTERNAL:I = 0x2

.field public static final blacklist TYPE_INTERNAL:I = 0x1

.field public static final greylist-max-o TYPE_OVERLAY:I = 0x4

.field public static final greylist TYPE_UNKNOWN:I = 0x0

.field public static final greylist TYPE_VIRTUAL:I = 0x5

.field public static final greylist TYPE_WIFI:I = 0x3

.field public static final blacklist VIEW_COVER_DISPLAY:I = 0x4


# instance fields
.field private greylist-max-o mCachedAppHeightCompat:I

.field private greylist-max-o mCachedAppWidthCompat:I

.field private greylist-max-o mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final greylist-max-o mDisplayId:I

.field private greylist mDisplayInfo:Landroid/view/DisplayInfo;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private blacklist mHdrSdrRatioListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Display$HdrSdrRatioListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIsValid:Z

.field private greylist-max-o mLastCachedAppSizeUpdate:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private final greylist-max-o mOwnerPackageName:Ljava/lang/String;

.field private final greylist-max-o mOwnerUid:I

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mTempMetrics:Landroid/util/DisplayMetrics;

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/high16 v0, -0x80000000

    sput v0, Landroid/view/Display;->FLAG_BACKGROUND_DISPLAY:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/content/res/Resources;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iput p2, p0, Landroid/view/Display;->mDisplayId:I

    iput-object p3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput-object p5, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/DisplayAdjustments;

    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/DisplayAdjustments;

    if-eqz p4, :cond_1

    invoke-direct {v0, p4}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    goto :goto_0

    :cond_1
    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    iget v0, p3, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/Display;->mFlags:I

    iget v0, p3, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/Display;->mType:I

    iget v0, p3, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/Display;->mOwnerUid:I

    iget-object v0, p3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    return-void
.end method

.method private blacklist adjustMetrics(Landroid/util/DisplayMetrics;II)V
    .locals 2

    invoke-static {p2, p3}, Landroid/view/Display;->noFlip(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    return-void
.end method

.method private blacklist adjustSize(Landroid/graphics/Point;II)V
    .locals 2

    invoke-static {p2, p3}, Landroid/view/Display;->noFlip(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private blacklist contains([II)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private blacklist filteredSupportedModes([Landroid/view/Display$Mode;)[Landroid/view/Display$Mode;
    .locals 6

    iget v0, p0, Landroid/view/Display;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->refreshRateMode:I

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/Display$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v2}, Landroid/view/Display$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)V

    invoke-interface {v3, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Landroid/view/Display$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/view/Display$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;

    return-object v1

    :cond_1
    new-instance v1, Landroid/view/Display$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/view/Display$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;)V

    invoke-interface {v3, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Landroid/view/Display$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Landroid/view/Display$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;

    return-object v1

    :cond_2
    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->refreshRateMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    new-instance v1, Landroid/view/Display$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, v2}, Landroid/view/Display$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)V

    invoke-interface {v3, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Landroid/view/Display$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Landroid/view/Display$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;

    return-object v1

    :cond_3
    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->refreshRateMode:I

    if-ne v4, v1, :cond_4

    new-instance v1, Landroid/view/Display$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Landroid/view/Display$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;)V

    invoke-interface {v3, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Landroid/view/Display$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Landroid/view/Display$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;

    return-object v1

    :cond_4
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;

    return-object v1
.end method

.method private blacklist findHdrSdrRatioListenerLocked(Ljava/util/function/Consumer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display$HdrSdrRatioListenerWrapper;

    iget-object v2, v1, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mListener:Ljava/util/function/Consumer;

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getLocalRotation()I
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    return v1
.end method

.method public static blacklist hasAccess(IIII)Z
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    if-eq p0, p2, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Landroid/hardware/display/DisplayManagerGlobal;->isUidPresentOnDisplay(II)Z

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

.method public static blacklist isActiveState(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

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

.method public static greylist-max-o isDozeState(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

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

.method public static blacklist isHeightValid(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isOffState(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isOnState(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

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

.method public static blacklist isRefreshRateValid(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isSuspendedState(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist isWidthValid(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$filteredSupportedModes$0(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$filteredSupportedModes$1(I)[Landroid/view/Display$Mode;
    .locals 1

    new-array v0, p0, [Landroid/view/Display$Mode;

    return-object v0
.end method

.method static synthetic blacklist lambda$filteredSupportedModes$2(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$filteredSupportedModes$3(I)[Landroid/view/Display$Mode;
    .locals 1

    new-array v0, p0, [Landroid/view/Display$Mode;

    return-object v0
.end method

.method static synthetic blacklist lambda$filteredSupportedModes$4(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$filteredSupportedModes$5(I)[Landroid/view/Display$Mode;
    .locals 1

    new-array v0, p0, [Landroid/view/Display$Mode;

    return-object v0
.end method

.method static synthetic blacklist lambda$filteredSupportedModes$6(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$filteredSupportedModes$7(I)[Landroid/view/Display$Mode;
    .locals 1

    new-array v0, p0, [Landroid/view/Display$Mode;

    return-object v0
.end method

.method private static blacklist noFlip(II)Z
    .locals 1

    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist shouldReportMaxBounds()Z
    .locals 3

    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isDexCompatMode()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static blacklist stateReasonToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "MOTION"

    return-object v0

    :pswitch_1
    const-string v0, "KEY"

    return-object v0

    :pswitch_2
    const-string v0, "DREAM_MANAGER"

    return-object v0

    :pswitch_3
    const-string v0, "TILT"

    return-object v0

    :pswitch_4
    const-string v0, "OFFLOAD"

    return-object v0

    :pswitch_5
    const-string v0, "DRAW_WAKE_LOCK"

    return-object v0

    :pswitch_6
    const-string v0, "DEFAULT_POLICY"

    return-object v0

    :pswitch_7
    const-string v0, "UNKNOWN"

    return-object v0

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

.method public static greylist-max-o stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ON_SUSPEND"

    return-object v0

    :pswitch_1
    const-string v0, "VR"

    return-object v0

    :pswitch_2
    const-string v0, "DOZE_SUSPEND"

    return-object v0

    :pswitch_3
    const-string v0, "DOZE"

    return-object v0

    :pswitch_4
    const-string v0, "ON"

    return-object v0

    :pswitch_5
    const-string v0, "OFF"

    return-object v0

    :pswitch_6
    const-string v0, "UNKNOWN"

    return-object v0

    nop

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

.method public static greylist-max-o typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "VIRTUAL"

    return-object v0

    :pswitch_1
    const-string v0, "OVERLAY"

    return-object v0

    :pswitch_2
    const-string v0, "WIFI"

    return-object v0

    :pswitch_3
    const-string v0, "EXTERNAL"

    return-object v0

    :pswitch_4
    const-string v0, "INTERNAL"

    return-object v0

    :pswitch_5
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o updateCachedAppSizeIfNeededLocked()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    iput-wide v0, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    :cond_0
    return-void
.end method

.method private greylist-max-o updateDisplayInfoLocked()V
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->updateSubScreen(Landroid/view/DisplayAddress;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist canStealTopFocus()Z
    .locals 1

    iget v0, p0, Landroid/view/Display;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist clearUserPreferredDisplayMode()V
    .locals 3

    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    return-void
.end method

.method public blacklist getAddress()Landroid/view/DisplayAddress;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getAppVsyncOffsetNanos()J
    .locals 3

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v1, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getBrightnessDefault()F
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getColorMode()I
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->colorMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getCommittedState()I
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->committedState:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, p2, Landroid/graphics/Point;->y:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getCutout()Landroid/view/DisplayCutout;
    .locals 6

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getDefaultMode()Landroid/view/Display$Mode;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getDeviceProductInfo()Landroid/hardware/display/DeviceProductInfo;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, v0}, Landroid/view/DisplayAdjustments;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    iput-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    :cond_0
    iget-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public blacklist getDisplayDecorationSupport()Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayId()I
    .locals 1

    iget v0, p0, Landroid/view/Display;->mDisplayId:I

    return v0
.end method

.method public greylist-max-p getDisplayInfo(Landroid/view/DisplayInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/view/Display;->mFlags:I

    return v0
.end method

.method public whitelist getHdrCapabilities()Landroid/view/Display$HdrCapabilities;
    .locals 7

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v1, v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    iget-object v6, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v6, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    invoke-direct {p0, v6, v5}, Landroid/view/Display;->contains([II)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    aput v5, v2, v3

    move v3, v6

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_2
    new-instance v2, Landroid/view/Display$HdrCapabilities;

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v3, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v3}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMaxLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v3

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v4, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v4}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMaxAverageLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v4

    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v5, v5, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v5}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMinLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/view/Display$HdrCapabilities;-><init>([IFFF)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getHdrSdrRatio()F
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getHeight()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    iget v1, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getInstallOrientation()I
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->installOrientation:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getLayerStack()I
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->layerStack:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getMaximumSizeDimension()I
    .locals 3

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getMode()Landroid/view/Display$Mode;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getOrientation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public whitelist getOverlaySupport()Landroid/hardware/OverlayProperties;
    .locals 3

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/hardware/OverlayProperties;->getDefault()Landroid/hardware/OverlayProperties;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getOwnerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getOwnerUid()I
    .locals 1

    iget v0, p0, Landroid/view/Display;->mOwnerUid:I

    return v0
.end method

.method public whitelist getPixelFormat()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getPresentationDeadlineNanos()J
    .locals 3

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v1, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRealMetrics(Landroid/util/DisplayMetrics;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    invoke-direct {p0}, Landroid/view/Display;->shouldReportMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getMaxBoundsMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v2, v1}, Landroid/view/Display;->adjustMetrics(Landroid/util/DisplayMetrics;II)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getRealRotation()I
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRealSize(Landroid/graphics/Point;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    invoke-direct {p0}, Landroid/view/Display;->shouldReportMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v2, v1}, Landroid/view/Display;->adjustSize(Landroid/graphics/Point;II)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRectSize(Landroid/graphics/Rect;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRefreshRate()F
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getRemoveMode()I
    .locals 1

    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->removeMode:I

    return v0
.end method

.method public blacklist getReportedHdrTypes()[I
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRotation()I
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .locals 5

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/RoundedCorners;->rotate(III)Landroid/view/RoundedCorners;

    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    :goto_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getShape()Landroid/view/DisplayShape;
    .locals 4

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/DisplayShape;->setRotation(I)Landroid/view/DisplayShape;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSize(Landroid/graphics/Point;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getState()I
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getSupportedColorModes()[I
    .locals 3

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSupportedModes()[Landroid/view/Display$Mode;
    .locals 3

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-direct {p0, v1}, Landroid/view/Display;->filteredSupportedModes([Landroid/view/Display$Mode;)[Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSupportedRefreshRates()[F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getSupportedWideColorGamut()[Landroid/graphics/ColorSpace;
    .locals 8

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Landroid/graphics/ColorSpace;

    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    invoke-virtual {p0}, Landroid/view/Display;->isWideColorGamut()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedColorModes()[I

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    :goto_0
    if-ge v1, v5, :cond_1

    aget v6, v3, v1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    sget-object v7, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    sget-object v7, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/ColorSpace;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getSystemPreferredDisplayMode()Landroid/view/Display$Mode;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemSupportedModes()[Landroid/view/Display$Mode;
    .locals 3

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-direct {p0, v1}, Landroid/view/Display;->filteredSupportedModes([Landroid/view/Display$Mode;)[Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getType()I
    .locals 1

    iget v0, p0, Landroid/view/Display;->mType:I

    return v0
.end method

.method public blacklist getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserPreferredDisplayMode()Landroid/view/Display$Mode;
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWidth()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    iget v1, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o hasAccess(I)Z
    .locals 3

    iget v0, p0, Landroid/view/Display;->mFlags:I

    iget v1, p0, Landroid/view/Display;->mOwnerUid:I

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-static {p1, v0, v1, v2}, Landroid/view/Display;->hasAccess(IIII)Z

    move-result v0

    return v0
.end method

.method public whitelist isHdr()Z
    .locals 4

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isHdrSdrRatioAvailable()Z
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isMinimalPostProcessingSupported()Z
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v1, v1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o isPublicPresentation()Z
    .locals 2

    iget v0, p0, Landroid/view/Display;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isTrusted()Z
    .locals 2

    iget v0, p0, Landroid/view/Display;->mFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isValid()Z
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isWideColorGamut()Z
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist registerHdrSdrRatioChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/Display;->isHdrSdrRatioAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p2}, Landroid/view/Display;->findHdrSdrRatioListenerLocked(Ljava/util/function/Consumer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Landroid/view/Display$HdrSdrRatioListenerWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Landroid/view/Display$HdrSdrRatioListenerWrapper;-><init>(Landroid/view/Display;Ljava/util/function/Consumer;Landroid/view/Display$HdrSdrRatioListenerWrapper-IA;)V

    move-object v0, v2

    iget-object v2, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v6, 0x12

    move-object v4, v0

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JLjava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HDR/SDR ratio changed not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o requestColorMode(I)V
    .locals 2

    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->requestColorMode(II)V

    return-void
.end method

.method public whitelist semGetType()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    return v0
.end method

.method public blacklist setUserPreferredDisplayMode(Landroid/view/Display$Mode;)V
    .locals 4

    new-instance v0, Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isValid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/Display;->mIsValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unregisterHdrSdrRatioChangedListener(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/Display;->findHdrSdrRatioListenerLocked(Ljava/util/function/Consumer;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$HdrSdrRatioListenerWrapper;

    move-object v0, v3

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
