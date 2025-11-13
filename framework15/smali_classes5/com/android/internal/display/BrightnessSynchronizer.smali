.class public Lcom/android/internal/display/BrightnessSynchronizer;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/display/BrightnessSynchronizer$Clock;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;,
        Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;
    }
.end annotation


# static fields
.field private static final blacklist BRIGHTNESS_URI:Landroid/net/Uri;

.field private static final blacklist COVER_DISPLAY_ENABLED:Z = false

.field private static final blacklist DEBUG:Z = false

.field public static final blacklist EPSILON:F = 1.0E-4f

.field private static final blacklist MSG_RUN_UPDATE:I = 0x1

.field private static final blacklist SUB_SCREEN_BRIGHTNESS_URI:Landroid/net/Uri;

.field private static final blacklist TAG:Ljava/lang/String; = "BrightnessSynchronizer"

.field private static final blacklist UPDATE_TYPE_FLOAT:I = 0x2

.field private static final blacklist UPDATE_TYPE_INT:I = 0x1

.field private static final blacklist WAIT_FOR_RESPONSE_MILLIS:J = 0xc8L

.field private static blacklist sBrightnessUpdateCount:I

.field private static blacklist sScreenExtendedBrightnessRangeMaximumFloat:F

.field private static blacklist sScreenExtendedBrightnessRangeMaximumInt:I


# instance fields
.field private final blacklist mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

.field private final blacklist mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

.field private blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final blacklist mDisplaySynchronizers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIntRangeUserPerceptionEnabled:Z

.field private blacklist mLatestFloatBrightness:F

.field private blacklist mLatestIntBrightness:I

.field private blacklist mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

.field private blacklist mPreferredSettingValue:F


# direct methods
.method public static synthetic blacklist $r8$lambda$WNdbLxC0d-pcD3r4BRBeXMKXlH0(Lcom/android/internal/display/BrightnessSynchronizer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->setScreenBrightnessInt(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rTm82akFekRfUDlrQDjjJwZ30ls(Lcom/android/internal/display/BrightnessSynchronizer;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessInt()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClock(Lcom/android/internal/display/BrightnessSynchronizer;)Lcom/android/internal/display/BrightnessSynchronizer$Clock;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayManager(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplaySynchronizers(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplaySynchronizers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntRangeUserPerceptionEnabled(Lcom/android/internal/display/BrightnessSynchronizer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mIntRangeUserPerceptionEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatestFloatBrightness(Lcom/android/internal/display/BrightnessSynchronizer;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatestIntBrightness(Lcom/android/internal/display/BrightnessSynchronizer;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLatestFloatBrightness(Lcom/android/internal/display/BrightnessSynchronizer;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLatestIntBrightness(Lcom/android/internal/display/BrightnessSynchronizer;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunUpdate(Lcom/android/internal/display/BrightnessSynchronizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->runUpdate()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetBRIGHTNESS_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBrightnessUpdateCount()I
    .locals 1

    sget v0, Lcom/android/internal/display/BrightnessSynchronizer;->sBrightnessUpdateCount:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsBrightnessUpdateCount(I)V
    .locals 0

    sput p0, Lcom/android/internal/display/BrightnessSynchronizer;->sBrightnessUpdateCount:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    nop

    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/display/BrightnessSynchronizer;->sBrightnessUpdateCount:I

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumInt:I

    sget v0, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumInt:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumFloat:F

    const-string/jumbo v0, "sub_screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->SUB_SCREEN_BRIGHTNESS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/display/BrightnessSynchronizer$Clock;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplaySynchronizers:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver-IA;)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    iput-boolean p4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mIntRangeUserPerceptionEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/internal/display/BrightnessSynchronizer;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/display/BrightnessSynchronizer$Clock;Z)V

    return-void
.end method

.method public static blacklist brightnessFloatToInt(F)I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntRange(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static blacklist brightnessFloatToIntRange(F)F
    .locals 5

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    sget v1, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumFloat:F

    const/4 v3, 0x0

    sget v4, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumInt:I

    int-to-float v4, v4

    invoke-static {v2, v4, v2, v1, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v2

    return v2
.end method

.method public static blacklist brightnessFloatToIntSetting(Landroid/content/Context;F)I
    .locals 8

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget v1, v2, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iget v3, v2, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-static {v1, v3, p1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x437f0000    # 255.0f

    invoke-static {v6, v7, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    return v7
.end method

.method public static blacklist brightnessIntSettingToFloat(Landroid/content/Context;I)F
    .locals 8

    if-nez p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_0
    const/4 v0, -0x1

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x437f0000    # 255.0f

    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3, v4}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v3

    invoke-static {v3}, Lcom/android/internal/display/BrightnessUtils;->convertGammaToLinear(F)F

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-nez v5, :cond_2

    return v1

    :cond_2
    invoke-virtual {v5}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v6

    if-nez v6, :cond_3

    return v1

    :cond_3
    iget v1, v6, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iget v7, v6, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-static {v1, v7, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    return v1
.end method

.method public static blacklist brightnessIntToFloat(I)F
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    :cond_1
    const/4 v1, 0x0

    sget v2, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumFloat:F

    const/4 v3, 0x0

    sget v4, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumInt:I

    int-to-float v4, v4

    int-to-float v5, p0

    invoke-static {v0, v2, v0, v4, v5}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    return v0
.end method

.method public static blacklist floatEquals(FF)Z
    .locals 3

    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getScreenBrightnessFloat()F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result v0

    return v0
.end method

.method private blacklist getScreenBrightnessInt()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private blacklist getSubScreenBrightnessInt()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string/jumbo v3, "sub_screen_brightness"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private blacklist handleBrightnessChange(IF)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->swallowUpdate(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    new-instance v2, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->runUpdate()V

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New PendingUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BrightnessSynchronizer"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private blacklist handleBrightnessChangeFloat(F)V
    .locals 1

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChange(IF)V

    return-void
.end method

.method private blacklist handleBrightnessChangeInt(I)V
    .locals 2

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChange(IF)V

    return-void
.end method

.method private blacklist runUpdate()V
    .locals 3

    nop

    :cond_0
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->update()V

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->madeUpdates()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed Update: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessSynchronizer"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    :cond_3
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iput-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    :cond_4
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method private blacklist setScreenBrightnessInt(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private blacklist setSubScreenBrightnessInt(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sub_screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private blacklist updateScreenBrightness(I)V
    .locals 9

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessInt()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessFloat()F

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateScreenBrightness: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPreferredSettingValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") currentBrightnessInt="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " currentBrightnessIntFromFloat="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BrightnessSynchronizer"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_1

    iget v3, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "synced: mPreferredSettingValue: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " currentBrightnessFloat: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    if-ne p1, v7, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-ne p1, v6, :cond_7

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v5

    if-ne v0, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    if-ne v2, v5, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const-string/jumbo v8, "onChange: both changed"

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v7, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    if-ne p1, v6, :cond_7

    const/4 v3, 0x0

    :cond_7
    :goto_0
    const-string v5, " -> "

    if-eqz v3, :cond_8

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v6

    iput v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onChange: last float changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_brightness"

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_8
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v6

    iput v6, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onChange: last int changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "BrightnessSynchronizer"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLatestIntBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLatestFloatBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIntRangeUserPerceptionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mIntRangeUserPerceptionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist startSynchronizing()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->isObserving()Z

    move-result v0

    const-string v1, "BrightnessSynchronizer"

    if-eqz v0, :cond_1

    const-string v0, "Brightness sync observer requesting synchronization a second time."

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessFloat()F

    move-result v0

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial brightness readings: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(int), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(float)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-direct {v0, p0, v3, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    int-to-float v1, v1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x105010d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    new-instance v4, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting initial brightness to default value of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplaySynchronizers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;

    iget-object v3, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v4, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;)V

    new-instance v5, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;)V

    const/4 v6, 0x0

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;-><init>(ILandroid/hardware/display/DisplayManager;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->startObserving(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    invoke-interface {v1}, Lcom/android/internal/display/BrightnessSynchronizer$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method
