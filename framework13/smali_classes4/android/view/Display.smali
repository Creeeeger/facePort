.class public final Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$HdrCapabilities;,
        Landroid/view/Display$Mode;,
        Landroid/view/Display$ColorMode;
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

.field public static final greylist-max-o FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x20

.field public static final blacklist FLAG_CARLIFE_DISPLAY:I = 0x1000

.field public static final blacklist FLAG_HIDDEN_SPACE_DISPLAY:I = 0x800

.field public static final blacklist FLAG_NO_LOCK_PRESENTATION:I = 0x20000000

.field public static final blacklist FLAG_OWN_DISPLAY_GROUP:I = 0x100

.field public static final blacklist FLAG_PC_DEX_DISPLAY:I = 0x8000000

.field public static final whitelist FLAG_PRESENTATION:I = 0x8

.field public static final whitelist FLAG_PRIVATE:I = 0x4

.field public static final blacklist FLAG_REMOTE_APP_DISPLAY:I = 0x2000000

.field public static final whitelist FLAG_ROUND:I = 0x10

.field public static final greylist-max-o FLAG_SCALING_DISABLED:I = 0x40000000

.field public static final whitelist FLAG_SECURE:I = 0x2

.field public static final blacklist FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:I = 0x40

.field public static final blacklist FLAG_SPEG_DISPLAY:I = 0x8000

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

.field private greylist-max-o mIsValid:Z

.field private greylist-max-o mLastCachedAppSizeUpdate:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private final greylist-max-o mOwnerPackageName:Ljava/lang/String;

.field private final greylist-max-o mOwnerUid:I

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mTempMetrics:Landroid/util/DisplayMetrics;

.field private final greylist-max-o mType:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "res"    # Landroid/content/res/Resources;

    .line 684
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V

    .line 685
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V
    .locals 6
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;

    .line 672
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V

    .line 673
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;
    .param p5, "res"    # Landroid/content/res/Resources;

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    .line 689
    iput-object p1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 690
    iput p2, p0, Landroid/view/Display;->mDisplayId:I

    .line 691
    iput-object p3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 692
    iput-object p5, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 693
    if-eqz p5, :cond_0

    .line 694
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 695
    :cond_0
    new-instance v0, Landroid/view/DisplayAdjustments;

    if-eqz p4, :cond_1

    invoke-direct {v0, p4}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    goto :goto_0

    :cond_1
    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    .line 699
    iget v0, p3, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/Display;->mFlags:I

    .line 700
    iget v0, p3, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/Display;->mType:I

    .line 701
    iget v0, p3, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/Display;->mOwnerUid:I

    .line 702
    iget-object v0, p3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    .line 703
    return-void
.end method

.method private blacklist adjustMetrics(Landroid/util/DisplayMetrics;II)V
    .locals 2
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "realRotation"    # I
    .param p3, "localRotation"    # I

    .line 1922
    invoke-static {p2, p3}, Landroid/view/Display;->noFlip(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1923
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1924
    .local v0, "w":I
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1925
    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1927
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 1928
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 1929
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 1930
    return-void
.end method

.method private blacklist adjustSize(Landroid/graphics/Point;II)V
    .locals 2
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "realRotation"    # I
    .param p3, "localRotation"    # I

    .line 1910
    invoke-static {p2, p3}, Landroid/view/Display;->noFlip(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1911
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 1912
    .local v0, "w":I
    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1913
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 1914
    return-void
.end method

.method private blacklist getLocalRotation()I
    .locals 2

    .line 1933
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    return v0

    .line 1934
    :cond_0
    nop

    .line 1935
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 1936
    .local v0, "localRotation":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    .line 1937
    :cond_1
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    return v1
.end method

.method public static blacklist hasAccess(IIII)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "flags"    # I
    .param p2, "ownerUid"    # I
    .param p3, "displayId"    # I

    .line 1830
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    if-eq p0, p2, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    .line 1835
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

    .line 1830
    :goto_1
    return v0
.end method

.method public static blacklist isActiveState(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 2022
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
    .param p0, "state"    # I

    .line 2013
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
    .param p0, "height"    # I

    .line 2055
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
    .param p0, "state"    # I

    .line 2030
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
    .param p0, "state"    # I

    .line 2039
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
    .param p0, "refreshRate"    # F

    .line 2063
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
    .param p0, "state"    # I

    .line 2004
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
    .param p0, "width"    # I

    .line 2047
    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist noFlip(II)Z
    .locals 1
    .param p0, "realRotation"    # I
    .param p1, "localRotation"    # I

    .line 1901
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

    .line 1786
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1787
    return v1

    .line 1792
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1793
    .local v0, "thread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isDexCompatMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1794
    return v1

    .line 1801
    .end local v0    # "thread":Landroid/app/ActivityThread;
    :cond_1
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1802
    .local v0, "config":Landroid/content/res/Configuration;
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

.method public static greylist-max-o stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 1978
    packed-switch p0, :pswitch_data_0

    .line 1994
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1992
    :pswitch_0
    const-string v0, "ON_SUSPEND"

    return-object v0

    .line 1990
    :pswitch_1
    const-string v0, "VR"

    return-object v0

    .line 1988
    :pswitch_2
    const-string v0, "DOZE_SUSPEND"

    return-object v0

    .line 1986
    :pswitch_3
    const-string v0, "DOZE"

    return-object v0

    .line 1984
    :pswitch_4
    const-string v0, "ON"

    return-object v0

    .line 1982
    :pswitch_5
    const-string v0, "OFF"

    return-object v0

    .line 1980
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
    .param p0, "type"    # I

    .line 1956
    packed-switch p0, :pswitch_data_0

    .line 1970
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1968
    :pswitch_0
    const-string v0, "VIRTUAL"

    return-object v0

    .line 1966
    :pswitch_1
    const-string v0, "OVERLAY"

    return-object v0

    .line 1964
    :pswitch_2
    const-string v0, "WIFI"

    return-object v0

    .line 1962
    :pswitch_3
    const-string v0, "EXTERNAL"

    return-object v0

    .line 1960
    :pswitch_4
    const-string v0, "INTERNAL"

    return-object v0

    .line 1958
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

    .line 1887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1888
    .local v0, "now":J
    iget-wide v2, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1889
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1890
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1891
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    .line 1892
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    .line 1893
    iput-wide v0, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    .line 1895
    :cond_0
    return-void
.end method

.method private greylist-max-o updateDisplayInfoLocked()V
    .locals 2

    .line 1859
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1860
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_0

    .line 1862
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_1

    .line 1863
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    goto :goto_0

    .line 1870
    :cond_0
    iput-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 1871
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-nez v1, :cond_1

    .line 1872
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    .line 1880
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    if-nez v1, :cond_2

    .line 1881
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->updateSubScreen(Landroid/view/DisplayInfo;)V

    .line 1884
    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist clearUserPreferredDisplayMode()V
    .locals 3

    .line 1451
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1452
    return-void
.end method

.method public blacklist getAddress()Landroid/view/DisplayAddress;
    .locals 2

    .line 837
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 839
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    monitor-exit v0

    return-object v1

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getAppVsyncOffsetNanos()J
    .locals 3

    .line 1553
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1554
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1555
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v1, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    monitor-exit v0

    return-wide v1

    .line 1556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getBrightnessDefault()F
    .locals 2

    .line 910
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 912
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    monitor-exit v0

    return v1

    .line 913
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .locals 2

    .line 922
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getColorMode()I
    .locals 2

    .line 1311
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1312
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1313
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->colorMode:I

    monitor-exit v0

    return v1

    .line 1314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "outSmallestSize"    # Landroid/graphics/Point;
    .param p2, "outLargestSize"    # Landroid/graphics/Point;

    .line 1021
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1022
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1023
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1024
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1025
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 1026
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 1027
    monitor-exit v0

    .line 1028
    return-void

    .line 1027
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getCutout()Landroid/view/DisplayCutout;
    .locals 6

    .line 1123
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1124
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1125
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    monitor-exit v0

    return-object v1

    .line 1126
    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1127
    .local v1, "localCutout":Landroid/view/DisplayCutout;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1128
    :cond_1
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    .line 1129
    .local v2, "rotation":I
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_2

    .line 1130
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

    .line 1133
    :cond_2
    monitor-exit v0

    return-object v1

    .line 1134
    .end local v1    # "localCutout":Landroid/view/DisplayCutout;
    .end local v2    # "rotation":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getDefaultMode()Landroid/view/Display$Mode;
    .locals 2

    .line 1213
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1215
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getDeviceProductInfo()Landroid/hardware/display/DeviceProductInfo;
    .locals 2

    .line 1586
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1587
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1588
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    monitor-exit v0

    return-object v1

    .line 1589
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 2

    .line 878
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 880
    .local v0, "currentAdjustments":Landroid/view/DisplayAdjustments;
    iget-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, v0}, Landroid/view/DisplayAdjustments;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    iput-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 885
    .end local v0    # "currentAdjustments":Landroid/view/DisplayAdjustments;
    :cond_0
    iget-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public blacklist getDisplayDecorationSupport()Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .locals 2

    .line 2076
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayId()I
    .locals 1

    .line 713
    iget v0, p0, Landroid/view/Display;->mDisplayId:I

    return v0
.end method

.method public greylist-max-p getDisplayInfo(Landroid/view/DisplayInfo;)Z
    .locals 2
    .param p1, "outDisplayInfo"    # Landroid/view/DisplayInfo;

    .line 758
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 760
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 761
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    monitor-exit v0

    return v1

    .line 762
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getFlags()I
    .locals 1

    .line 792
    iget v0, p0, Landroid/view/Display;->mFlags:I

    return v0
.end method

.method public whitelist getHdrCapabilities()Landroid/view/Display$HdrCapabilities;
    .locals 12

    .line 1351
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1352
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1353
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v1, v1

    if-nez v1, :cond_0

    .line 1354
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    monitor-exit v0

    return-object v1

    .line 1357
    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-nez v1, :cond_1

    .line 1358
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1361
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1362
    .local v1, "enabledTypesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v2, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v2}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget v6, v2, v5

    .line 1363
    .local v6, "supportedType":I
    const/4 v7, 0x0

    .line 1364
    .local v7, "typeDisabled":Z
    iget-object v8, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v8, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v9, v8

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_3

    aget v11, v8, v10

    .line 1365
    .local v11, "userDisabledType":I
    if-ne v6, v11, :cond_2

    .line 1366
    const/4 v7, 0x1

    .line 1367
    goto :goto_2

    .line 1364
    .end local v11    # "userDisabledType":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1370
    :cond_3
    :goto_2
    if-nez v7, :cond_4

    .line 1371
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1362
    .end local v6    # "supportedType":I
    .end local v7    # "typeDisabled":Z
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1375
    :cond_5
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1376
    .local v2, "enabledTypes":[I
    const/4 v3, 0x0

    .line 1377
    .local v3, "index":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1378
    .local v5, "enabledType":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    aput v5, v2, v3

    .line 1379
    .end local v5    # "enabledType":I
    move v3, v6

    goto :goto_3

    .line 1380
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_6
    new-instance v4, Landroid/view/Display$HdrCapabilities;

    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v5, v5, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v5}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMaxLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v5

    iget-object v6, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v6, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v6}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMaxAverageLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v6

    iget-object v7, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v7, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v7}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMinLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v7

    invoke-direct {v4, v2, v5, v6, v7}, Landroid/view/Display$HdrCapabilities;-><init>([IFFF)V

    monitor-exit v0

    return-object v4

    .line 1384
    .end local v1    # "enabledTypesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v2    # "enabledTypes":[I
    .end local v3    # "index":I
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

    .line 1059
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 1061
    iget v1, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    monitor-exit v0

    return v1

    .line 1062
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getInstallOrientation()I
    .locals 2

    .line 1099
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1100
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1101
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->installOrientation:I

    monitor-exit v0

    return v1

    .line 1102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getLayerStack()I
    .locals 2

    .line 775
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 777
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->layerStack:I

    monitor-exit v0

    return v1

    .line 778
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getMaximumSizeDimension()I
    .locals 3

    .line 1037
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1038
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1039
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1040
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1629
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1630
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1631
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1632
    monitor-exit v0

    .line 1633
    return-void

    .line 1632
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getMode()Landroid/view/Display$Mode;
    .locals 2

    .line 1201
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1203
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 2

    .line 897
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 899
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 900
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

    .line 1112
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public greylist getOwnerPackageName()Ljava/lang/String;
    .locals 1

    .line 867
    iget-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getOwnerUid()I
    .locals 1

    .line 853
    iget v0, p0, Landroid/view/Display;->mOwnerUid:I

    return v0
.end method

.method public whitelist getPixelFormat()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1168
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;
    .locals 2

    .line 1488
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1489
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1490
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1491
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1493
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getPresentationDeadlineNanos()J
    .locals 3

    .line 1571
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1572
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1573
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v1, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    monitor-exit v0

    return-wide v1

    .line 1574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRealMetrics(Landroid/util/DisplayMetrics;)V
    .locals 4
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1753
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1754
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1755
    invoke-direct {p0}, Landroid/view/Display;->shouldReportMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1756
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 1758
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1756
    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getMaxBoundsMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1764
    monitor-exit v0

    return-void

    .line 1766
    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1768
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    .line 1769
    .local v1, "rotation":I
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_1

    .line 1770
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v2, v1}, Landroid/view/Display;->adjustMetrics(Landroid/util/DisplayMetrics;II)V

    .line 1772
    .end local v1    # "rotation":I
    :cond_1
    monitor-exit v0

    .line 1773
    return-void

    .line 1772
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRealSize(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1682
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1683
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1684
    invoke-direct {p0}, Landroid/view/Display;->shouldReportMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1685
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1686
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1687
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 1688
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 1694
    monitor-exit v0

    return-void

    .line 1696
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1697
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1698
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    .line 1699
    .local v1, "rotation":I
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_1

    .line 1700
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v2, v1}, Landroid/view/Display;->adjustSize(Landroid/graphics/Point;II)V

    .line 1702
    .end local v1    # "rotation":I
    :cond_1
    monitor-exit v0

    .line 1703
    return-void

    .line 1702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRectSize(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outSize"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 983
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 985
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 986
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 987
    monitor-exit v0

    .line 988
    return-void

    .line 987
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRefreshRate()F
    .locals 2

    .line 1175
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1176
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1177
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    monitor-exit v0

    return v1

    .line 1178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getRemoveMode()I
    .locals 1

    .line 1329
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->removeMode:I

    return v0
.end method

.method public blacklist getReportedHdrTypes()[I
    .locals 2

    .line 1397
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1398
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1399
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-nez v1, :cond_0

    .line 1400
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v0

    return-object v1

    .line 1402
    :cond_0
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v1}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRotation()I
    .locals 2

    .line 1087
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1089
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1090
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .locals 5
    .param p1, "position"    # I

    .line 1147
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1148
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1149
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 1150
    .local v1, "roundedCorners":Landroid/view/RoundedCorners;
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    .line 1151
    .local v2, "rotation":I
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_0

    .line 1152
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/RoundedCorners;->rotate(III)Landroid/view/RoundedCorners;

    .line 1155
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

    .line 1156
    .end local v1    # "roundedCorners":Landroid/view/RoundedCorners;
    .end local v2    # "rotation":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSize(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 965
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 966
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 967
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 968
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 969
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 970
    monitor-exit v0

    .line 971
    return-void

    .line 970
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getState()I
    .locals 2

    .line 1813
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1814
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1815
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

    .line 1816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getSupportedColorModes()[I
    .locals 3

    .line 1502
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1503
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1504
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 1505
    .local v1, "colorModes":[I
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1506
    .end local v1    # "colorModes":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSupportedModes()[Landroid/view/Display$Mode;
    .locals 10

    .line 1223
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1227
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/view/Display;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1228
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v1

    .line 1229
    .local v1, "config":Lcom/samsung/android/hardware/display/RefreshRateConfig;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v2, "availableModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$Mode;>;"
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v3

    .line 1231
    .local v3, "activeMode":Landroid/view/Display$Mode;
    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v4, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 1232
    .local v7, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    float-to-int v8, v8

    .line 1233
    .local v8, "refreshRate":I
    iget-object v9, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v9, Landroid/view/DisplayInfo;->refreshRateMode:I

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 1249
    :pswitch_0
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 1251
    invoke-virtual {v7, v3}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1252
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1256
    :pswitch_1
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 1257
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 1258
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1235
    :pswitch_2
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1236
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 1238
    invoke-virtual {v7, v3}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1239
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1242
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 1243
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 1244
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    .end local v7    # "mode":Landroid/view/Display$Mode;
    .end local v8    # "refreshRate":I
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1263
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/Display$Mode;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    monitor-exit v0

    return-object v4

    .line 1267
    .end local v1    # "config":Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .end local v2    # "availableModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$Mode;>;"
    .end local v3    # "activeMode":Landroid/view/Display$Mode;
    :cond_3
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 1268
    .local v1, "modes":[Landroid/view/Display$Mode;
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    return-object v2

    .line 1269
    .end local v1    # "modes":[Landroid/view/Display$Mode;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getSupportedRefreshRates()[F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1191
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1193
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getSupportedWideColorGamut()[Landroid/graphics/ColorSpace;
    .locals 8

    .line 1519
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1520
    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Landroid/graphics/ColorSpace;

    .line 1521
    .local v2, "defaultColorSpaces":[Landroid/graphics/ColorSpace;
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1522
    invoke-virtual {p0}, Landroid/view/Display;->isWideColorGamut()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1523
    monitor-exit v0

    return-object v2

    .line 1526
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedColorModes()[I

    move-result-object v3

    .line 1527
    .local v3, "colorModes":[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    .local v4, "colorSpaces":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/ColorSpace;>;"
    array-length v5, v3

    :goto_0
    if-ge v1, v5, :cond_1

    aget v6, v3, v1

    .line 1530
    .local v6, "colorMode":I
    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    .line 1535
    :sswitch_0
    sget-object v7, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1532
    :sswitch_1
    sget-object v7, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    nop

    .line 1528
    .end local v6    # "colorMode":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1539
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/ColorSpace;

    monitor-exit v0

    return-object v1

    .line 1540
    .end local v2    # "defaultColorSpaces":[Landroid/graphics/ColorSpace;
    .end local v3    # "colorModes":[I
    .end local v4    # "colorSpaces":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/ColorSpace;>;"
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

    .line 1342
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public greylist getType()I
    .locals 1

    .line 811
    iget v0, p0, Landroid/view/Display;->mType:I

    return v0
.end method

.method public blacklist getUniqueId()Ljava/lang/String;
    .locals 1

    .line 726
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserPreferredDisplayMode()Landroid/view/Display$Mode;
    .locals 2

    .line 1462
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

    .line 1048
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 1050
    iget v1, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    monitor-exit v0

    return v1

    .line 1051
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o hasAccess(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1825
    iget v0, p0, Landroid/view/Display;->mFlags:I

    iget v1, p0, Landroid/view/Display;->mOwnerUid:I

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-static {p1, v0, v1, v2}, Landroid/view/Display;->hasAccess(IIII)Z

    move-result v0

    return v0
.end method

.method public whitelist isHdr()Z
    .locals 4

    .line 1413
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1414
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1415
    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v1

    .line 1416
    .local v1, "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1417
    monitor-exit v0

    return v2

    .line 1419
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    .line 1420
    .end local v1    # "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isMinimalPostProcessingSupported()Z
    .locals 2

    .line 1291
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1293
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v1, v1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    monitor-exit v0

    return v1

    .line 1294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o isPublicPresentation()Z
    .locals 2

    .line 1843
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

    .line 1854
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

    .line 743
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 745
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    monitor-exit v0

    return v1

    .line 746
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isWideColorGamut()Z
    .locals 2

    .line 1473
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1474
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1475
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1476
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o requestColorMode(I)V
    .locals 2
    .param p1, "colorMode"    # I

    .line 1303
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->requestColorMode(II)V

    .line 1304
    return-void
.end method

.method public whitelist semGetType()I
    .locals 1

    .line 825
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    return v0
.end method

.method public blacklist setUserPreferredDisplayMode(Landroid/view/Display$Mode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/Display$Mode;

    .line 1438
    new-instance v0, Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 1439
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 1440
    .local v0, "preferredMode":Landroid/view/Display$Mode;
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1441
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1943
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1944
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1945
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    .line 1946
    .local v1, "adjustments":Landroid/view/DisplayAdjustments;
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1947
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

    .line 1949
    .end local v1    # "adjustments":Landroid/view/DisplayAdjustments;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
