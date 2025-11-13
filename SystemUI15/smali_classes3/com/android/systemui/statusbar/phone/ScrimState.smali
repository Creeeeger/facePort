.class public enum Lcom/android/systemui/statusbar/phone/ScrimState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/ScrimState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AUTH_SCRIMMED_SHADE:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum GLANCEABLE_HUB:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;


# instance fields
.field mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field mAnimateChange:Z

.field mAnimationDuration:J

.field mAodFrontScrimAlpha:F

.field mBackgroundColor:I

.field mBehindAlpha:F

.field mBehindTint:I

.field mBlankScreen:Z

.field mClipQsScrim:Z

.field mDefaultScrimAlpha:F

.field mDisplayRequiresBlanking:Z

.field mDockManager:Lcom/android/systemui/dock/DockManager;

.field mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field mFrontAlpha:F

.field mFrontTint:I

.field mHasBackdrop:Z

.field mKeyguardFadingAway:Z

.field mKeyguardFadingAwayDuration:J

.field mLaunchingAffordanceWithPreview:Z

.field mNotifAlpha:F

.field mNotifTint:I

.field mOccludeAnimationPlaying:Z

.field mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

.field mScrimBehindAlphaKeyguard:F

.field mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

.field mSurfaceColor:I

.field mWakeLockScreenSensorActive:Z

.field mWallpaperSupportsAmbientMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimState$1;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/ScrimState$1;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimState$2;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/ScrimState$2;-><init>()V

    sput-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimState$3;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/ScrimState$3;-><init>()V

    sput-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->AUTH_SCRIMMED_SHADE:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v4, Lcom/android/systemui/statusbar/phone/ScrimState$4;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/phone/ScrimState$4;-><init>()V

    new-instance v5, Lcom/android/systemui/statusbar/phone/ScrimState$5;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/ScrimState$5;-><init>()V

    sput-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v6, Lcom/android/systemui/statusbar/phone/ScrimState$6;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/phone/ScrimState$6;-><init>()V

    sput-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v7, Lcom/android/systemui/statusbar/phone/ScrimState$7;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/phone/ScrimState$7;-><init>()V

    sput-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v8, Lcom/android/systemui/statusbar/phone/ScrimState$8;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/ScrimState$8;-><init>()V

    sput-object v8, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v9, Lcom/android/systemui/statusbar/phone/ScrimState$9;

    invoke-direct {v9}, Lcom/android/systemui/statusbar/phone/ScrimState$9;-><init>()V

    sput-object v9, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v10, Lcom/android/systemui/statusbar/phone/ScrimState$10;

    invoke-direct {v10}, Lcom/android/systemui/statusbar/phone/ScrimState$10;-><init>()V

    sput-object v10, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v11, Lcom/android/systemui/statusbar/phone/ScrimState$11;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/phone/ScrimState$11;-><init>()V

    sput-object v11, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v12, Lcom/android/systemui/statusbar/phone/ScrimState$12;

    invoke-direct {v12}, Lcom/android/systemui/statusbar/phone/ScrimState$12;-><init>()V

    sput-object v12, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v13, Lcom/android/systemui/statusbar/phone/ScrimState$13;

    invoke-direct {v13}, Lcom/android/systemui/statusbar/phone/ScrimState$13;-><init>()V

    sput-object v13, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v14, Lcom/android/systemui/statusbar/phone/ScrimState$14;

    invoke-direct {v14}, Lcom/android/systemui/statusbar/phone/ScrimState$14;-><init>()V

    sput-object v14, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

    filled-new-array/range {v0 .. v14}, [Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    const-wide/16 v0, 0xdc

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mSurfaceColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAlpha()F
    .locals 5

    const-string v0, "ScrimState"

    const-string v1, "alpha:"

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_0
    const v2, 0x3f19999a    # 0.6f

    :goto_0
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "userdebug"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getAODLightRevealAlpha()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot convert alpha to float: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/ScrimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object v0
.end method


# virtual methods
.method public getMaxLightRevealScrimAlpha()F
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAlpha()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public isLowPowerState()Z
    .locals 0

    instance-of p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;

    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0

    return-void
.end method

.method public setSurfaceColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mSurfaceColor:I

    return-void
.end method

.method public shouldBlendWithMainColor()Z
    .locals 0

    instance-of p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$11;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final updateScrimColor(Lcom/android/systemui/scrim/ScrimView;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_0

    const-string v0, "front_scrim_alpha"

    goto :goto_0

    :cond_0
    const-string v0, "back_scrim_alpha"

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    float-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, p0, :cond_1

    const-string p0, "front_scrim_tint"

    goto :goto_1

    :cond_1
    const-string p0, "back_scrim_tint"

    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v2, v3, p0, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/scrim/ScrimView;->setTint(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    return-void
.end method
