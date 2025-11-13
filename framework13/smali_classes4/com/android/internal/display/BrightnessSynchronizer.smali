.class public Lcom/android/internal/display/BrightnessSynchronizer;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;,
        Lcom/android/internal/display/BrightnessSynchronizer$Clock;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;
    }
.end annotation


# static fields
.field private static final blacklist BRIGHTNESS_URI:Landroid/net/Uri;

.field private static final blacklist DEBUG:Z = false

.field public static final blacklist EPSILON:F = 0.001f

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

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLatestFloatBrightness:F

.field private blacklist mLatestIntBrightness:I

.field private blacklist mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

.field private blacklist mPreferredSettingValue:F


# direct methods
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

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    return-object p0
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

.method static bridge synthetic blacklist -$$Nest$mgetSubScreenBrightnessInt(Lcom/android/internal/display/BrightnessSynchronizer;Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->getSubScreenBrightnessInt(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrunUpdate(Lcom/android/internal/display/BrightnessSynchronizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->runUpdate()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateScreenBrightness(Lcom/android/internal/display/BrightnessSynchronizer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->updateScreenBrightness(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSubScreenBrightness(Lcom/android/internal/display/BrightnessSynchronizer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->updateSubScreenBrightness(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetBRIGHTNESS_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSUB_SCREEN_BRIGHTNESS_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->SUB_SCREEN_BRIGHTNESS_URI:Landroid/net/Uri;

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

    .line 52
    nop

    .line 53
    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 63
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/display/BrightnessSynchronizer;->sBrightnessUpdateCount:I

    .line 82
    nop

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 82
    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumInt:I

    .line 85
    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumFloat:F

    .line 90
    const-string/jumbo v0, "sub_screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->SUB_SCREEN_BRIGHTNESS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/display/BrightnessSynchronizer$Clock;)V

    .line 98
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/display/BrightnessSynchronizer$Clock;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "clock"    # Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    .line 102
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    .line 103
    iput-object p3, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    .line 104
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver-IA;)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    .line 105
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method public static blacklist brightnessFloatToInt(F)I
    .locals 1
    .param p0, "brightnessFloat"    # F

    .line 178
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntRange(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static blacklist brightnessFloatToIntRange(F)F
    .locals 5
    .param p0, "brightnessFloat"    # F

    .line 188
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    return v0

    .line 190
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 193
    :cond_1
    const/4 v1, 0x0

    .line 195
    .local v1, "minFloat":F
    sget v2, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumFloat:F

    .line 196
    .local v2, "maxFloat":F
    const/4 v3, 0x0

    .line 197
    .local v3, "minInt":F
    sget v4, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumInt:I

    int-to-float v4, v4

    .line 199
    .local v4, "maxInt":F
    invoke-static {v0, v4, v0, v2, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    return v0
.end method

.method public static blacklist brightnessIntToFloat(I)F
    .locals 6
    .param p0, "brightnessInt"    # I

    .line 159
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 160
    return v0

    .line 161
    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 162
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 164
    :cond_1
    const/4 v1, 0x0

    .line 166
    .local v1, "minFloat":F
    sget v2, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumFloat:F

    .line 167
    .local v2, "maxFloat":F
    const/4 v3, 0x0

    .line 168
    .local v3, "minInt":F
    sget v4, Lcom/android/internal/display/BrightnessSynchronizer;->sScreenExtendedBrightnessRangeMaximumInt:I

    int-to-float v4, v4

    .line 170
    .local v4, "maxInt":F
    int-to-float v5, p0

    invoke-static {v0, v2, v0, v4, v5}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    return v0
.end method

.method public static blacklist floatEquals(FF)Z
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 376
    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 377
    return v1

    .line 378
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    return v1

    .line 380
    :cond_1
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 381
    return v1

    .line 383
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getScreenBrightnessFloat()F
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result v0

    return v0
.end method

.method private blacklist getScreenBrightnessInt()I
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private blacklist getSubScreenBrightnessInt(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sub_screen_brightness"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private blacklist handleBrightnessChange(IF)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "brightness"    # F

    .line 243
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->swallowUpdate(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 245
    .local v0, "swallowUpdate":Z
    :goto_0
    const/4 v1, 0x0

    .line 246
    .local v1, "prevUpdate":Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;
    if-nez v0, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 248
    new-instance v2, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->runUpdate()V

    .line 253
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v2, :cond_2

    .line 254
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

    .line 256
    :cond_2
    return-void
.end method

.method private blacklist handleBrightnessChangeFloat(F)V
    .locals 1
    .param p1, "brightness"    # F

    .line 209
    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    .line 210
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChange(IF)V

    .line 211
    return-void
.end method

.method private blacklist handleBrightnessChangeInt(I)V
    .locals 2
    .param p1, "brightness"    # I

    .line 219
    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    .line 220
    int-to-float v0, p1

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChange(IF)V

    .line 221
    return-void
.end method

.method private blacklist runUpdate()V
    .locals 3

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 270
    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->update()V

    .line 271
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->madeUpdates()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
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

    .line 277
    :cond_2
    iput-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v0, :cond_4

    .line 282
    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 283
    iput-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void
.end method

.method private blacklist updateScreenBrightness(I)V
    .locals 9
    .param p1, "type"    # I

    .line 307
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessInt()I

    move-result v0

    .line 309
    .local v0, "currentBrightnessInt":I
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessFloat()F

    move-result v1

    .line 310
    .local v1, "currentBrightnessFloat":F
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    .line 312
    .local v2, "currentBrightnessIntFromFloat":I
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

    .line 314
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

    .line 312
    const-string v4, "BrightnessSynchronizer"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-ne v0, v2, :cond_1

    .line 319
    iget v3, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_0

    .line 320
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

    .line 321
    iput v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    .line 323
    :cond_0
    return-void

    .line 326
    :cond_1
    const/4 v3, 0x0

    .line 328
    .local v3, "lastFloatChanged":Z
    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 329
    if-ne p1, v7, :cond_2

    .line 330
    const/4 v3, 0x0

    goto :goto_0

    .line 331
    :cond_2
    if-ne p1, v6, :cond_7

    .line 332
    const/4 v3, 0x1

    goto :goto_0

    .line 335
    :cond_3
    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v5

    .line 337
    .local v5, "preferredSettingValueInt":I
    if-ne v0, v5, :cond_4

    .line 338
    const/4 v3, 0x1

    goto :goto_0

    .line 339
    :cond_4
    if-ne v2, v5, :cond_5

    .line 340
    const/4 v3, 0x0

    goto :goto_0

    .line 342
    :cond_5
    const-string/jumbo v8, "onChange: both changed"

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-ne p1, v7, :cond_6

    .line 344
    const/4 v3, 0x1

    goto :goto_0

    .line 345
    :cond_6
    if-ne p1, v6, :cond_7

    .line 346
    const/4 v3, 0x0

    .line 351
    .end local v5    # "preferredSettingValueInt":I
    :cond_7
    :goto_0
    const-string v5, " -> "

    if-eqz v3, :cond_8

    .line 352
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v6

    .line 353
    .local v6, "newBrightnessInt":I
    iput v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    .line 354
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

    .line 356
    iget-object v4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, -0x2

    const-string/jumbo v7, "screen_brightness"

    invoke-static {v4, v7, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 358
    .end local v6    # "newBrightnessInt":I
    goto :goto_1

    .line 359
    :cond_8
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v6

    .line 360
    .local v6, "newBrightnessFloat":F
    iput v6, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPreferredSettingValue:F

    .line 361
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

    .line 363
    iget-object v4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 365
    .end local v6    # "newBrightnessFloat":F
    :goto_1
    return-void
.end method

.method private blacklist updateSubScreenBrightness(I)V
    .locals 3
    .param p1, "value"    # I

    .line 231
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    .line 232
    .local v0, "brightnessFloat":F
    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 233
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 148
    const-string v0, "BrightnessSynchronizer"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
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

    .line 150
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

    .line 151
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

    .line 152
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

    .line 153
    return-void
.end method

.method public blacklist startSynchronizing()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->isObserving()Z

    move-result v0

    const-string v1, "BrightnessSynchronizer"

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "Brightness sync observer requesting synchronization a second time."

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessFloat()F

    move-result v0

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    .line 124
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    .line 125
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

    .line 128
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 129
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-direct {v0, p0, v3, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    goto :goto_0

    .line 131
    :cond_2
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 132
    new-instance v1, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    int-to-float v0, v0

    invoke-direct {v1, p0, v2, v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10500d3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 137
    .local v0, "defaultBrightness":F
    new-instance v4, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 138
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

    .line 141
    .end local v0    # "defaultBrightness":F
    :goto_0
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->startObserving()V

    .line 142
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    invoke-interface {v1}, Lcom/android/internal/display/BrightnessSynchronizer$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 143
    return-void
.end method
