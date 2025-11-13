.class public Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_LIMIT_WARNING:I

.field private static final START_POINT_FOR_LIMIT_WARNING:I


# instance fields
.field private mAlreadyShownBrightMaxDialog:Z

.field private final mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutomaticMode:Z

.field private mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private final mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

.field private final mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDialogForMaxBrightness:Landroid/app/AlertDialog;

.field private mHBMText:Landroid/widget/TextView;

.field private mInitFinish:Z

.field private mInternalChange:Z

.field private mIsRestricted:Z

.field private final mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

.field private mOverheatTextView:Landroid/widget/TextView;

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mSliderAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$-6fxY-YVO2as79CBBaCqpw0koZU(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->lambda$showBrightnessAlertDialog$7(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AAYc-mAhHqMMox4VjX2kGwUfkdo(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JAB36rYlY02RLz584PFXwkwV52Y(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->lambda$showBrightnessAlertDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PC_bz30xHRSX7DCatZOW2vSLQbo(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->lambda$showBrightnessAlertDialog$9(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RjNOvsqGj-8o4Iqo1aDpSD9GNq0(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VIrrjS2FxSsmsLY9PDEYNFbbxt4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->lambda$showBrightnessAlertDialog$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZLJq9OSD8ZUIq2O7Jq8FfRz7L7s(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->lambda$onBindViewHolder$3(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$oo-YXfccDgs6VDp6z5dF_Gwvss0(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->lambda$onBindViewHolder$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$yF-dBYwYv8h8KGRhMBkM0E5GE0w(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->lambda$showBrightnessAlertDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmeXC-sADzCnCkVFmwQvLK-vs6o(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->lambda$animateSliderTo$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlreadyShownBrightMaxDialog(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAlreadyShownBrightMaxDialog:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 87
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_REDUCED_BRIGHTNESS_LIMIT:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_0
    sput v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->BRIGHTNESS_LIMIT_WARNING:I

    const-wide v1, 0x41afe00000000000L    # 2.6738688E8

    int-to-double v3, v0

    mul-double/2addr v3, v1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v0

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 139
    sget v5, Lcom/android/settings/R$layout;->sec_preference_seekbar_brightness:I

    sget v6, Lcom/android/settings/R$id;->brightness_seekbar:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    .line 112
    new-instance p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 119
    new-instance p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    .line 126
    new-instance p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    const/4 p2, 0x0

    .line 574
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    .line 140
    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 142
    new-instance p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    new-instance v1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;-><init>(Landroid/content/Context;Landroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    return-void
.end method

.method private animateSliderTo(I)V
    .locals 3

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getInitFinish()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    .line 341
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 342
    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 348
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->getDuration()I

    move-result p1

    .line 349
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 350
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getBrightnessMode(I)I
    .locals 1

    .line 312
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getCurrentProgress()I
    .locals 2

    .line 604
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->getRatioOfBrightness()F

    move-result p0

    const/4 v0, 0x0

    const/high16 v1, 0xff00000

    .line 605
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getRatioOfProgress()F
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getRatioOfProgress(I)F

    move-result p0

    return p0
.end method

.method private getRatioOfProgress(I)F
    .locals 1

    int-to-float p0, p1

    const/4 p1, 0x0

    const/high16 v0, 0x4d7f0000    # 2.6738688E8f

    .line 615
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result p0

    return p0
.end method

.method private isFolderClose()Z
    .locals 1

    .line 304
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 305
    iget p0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$animateSliderTo$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 343
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 344
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBrightnessChanged()  brightnessValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessSeekBarPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->hideHbmText()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrightnessSeekBarPreference"

    const-string v1, "Update brightness dialog"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 214
    new-instance p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$showBrightnessAlertDialog$5(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 522
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "screen_brightness_mode"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 524
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setAutoBrightnessWithCamera(Landroid/content/Context;Z)V

    return-void
.end method

.method private static synthetic lambda$showBrightnessAlertDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showBrightnessAlertDialog$7(ILandroid/content/DialogInterface;)V
    .locals 2

    .line 531
    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "shown_max_brightness_dialog"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p2, 0x0

    .line 532
    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    .line 533
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAlreadyShownBrightMaxDialog:Z

    .line 534
    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "screen_brightness_mode"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " setNegativeButton >> limit : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessSeekBarPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setValue(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showBrightnessAlertDialog$8(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showBrightnessAlertDialog$9(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p1, 0x0

    .line 547
    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    .line 548
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "shown_max_brightness_dialog"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 549
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAlreadyShownBrightMaxDialog:Z

    .line 550
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPositiveButton >> limit : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BrightnessSeekBarPreference"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setValue(I)V

    return-void
.end method

.method private setBrightnessAnimation(F)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessSeekBarPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :cond_0
    return-void
.end method

.method private setBrightnessLimit()V
    .locals 1

    .line 564
    sget v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setValue(I)V

    return-void
.end method

.method private setContentDescriptionForAutomationTest(I)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setMode(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 382
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isAdaptiveBrightnessNoLSEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    .line 383
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 384
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->isHBMSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setAutoBrightnessWithCamera(Landroid/content/Context;Z)V

    .line 387
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method private setValue(I)V
    .locals 2

    .line 494
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getRatioOfProgress(I)F

    move-result v0

    .line 496
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->setBrightnessByRatio(F)V

    .line 497
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(IF)V

    .line 498
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    return-void
.end method

.method private showBrightnessAlertDialog()V
    .locals 5

    .line 515
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->isHBMSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAutoBrightnessDefaultValue(Landroid/content/Context;)I

    move-result v1

    .line 518
    sget v2, Lcom/android/settings/R$string;->sec_brightness_maximum_alert_turn_on_auto_brightness_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_brightness_maximum_alert_turn_on_auto_brightness_msg:I

    .line 519
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_brightness_maximum_alert_turn_on_auto_brightness_ok:I

    new-instance v4, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    .line 520
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_brightness_maximum_alert_turn_on_auto_brightness_cancel:I

    new-instance v4, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda4;-><init>()V

    .line 526
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V

    .line 530
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 541
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_brightness_maximum_alert_msg:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    .line 542
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda6;-><init>()V

    .line 543
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    .line 546
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 555
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 556
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    .line 559
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateBrightness()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    .line 472
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->clearTransitionTime()V

    .line 476
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getRatioOfProgress()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->updateBrightness(F)V

    :cond_1
    return-void
.end method

.method private updateDualColorRange(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 485
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDualColorRange >> limit : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BrightnessSeekBarPreference"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "#f7c0bd"

    .line 486
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    const-string v1, "#f1462f"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setDualModeOverlapColor(II)V

    add-int/lit8 v0, v0, -0x1

    .line 490
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setOverlapPointForDualColor(I)V

    return-void
.end method

.method private updateProgress(I)V
    .locals 1

    .line 502
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getRatioOfProgress(I)F

    move-result v0

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(IF)V

    return-void
.end method

.method private updateProgress(IF)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 510
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setContentDescriptionForAutomationTest(I)V

    .line 511
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessAnimation(F)V

    return-void
.end method


# virtual methods
.method public brightnessNotifyChange()V
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    return-void
.end method

.method public endAnimation()V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method public getInitFinish()Z
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    .line 578
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideHbmText()V
    .locals 1

    .line 376
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 377
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isAdaptiveBrightnessNoLSEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    .line 184
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 186
    sget v1, Lcom/android/settings/R$id;->brightness_seekbar:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SeslSeekBar;

    .line 187
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsRestricted:Z

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    .line 188
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 191
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-ne v1, v3, :cond_3

    return-void

    .line 195
    :cond_3
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 196
    sget v3, Lcom/android/settings/R$id;->brightnesslevel_and_overheatwarning:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextView:Landroid/widget/TextView;

    .line 197
    sget v3, Lcom/android/settings/R$id;->hbm_mode_text:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    .line 200
    sget v3, Lcom/android/settings/R$id;->sub_title:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 203
    sget-boolean v4, Lcom/samsung/android/settings/Rune;->SUPPORT_COVER_SCREEN_BRIGHTNESS_MODE:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 204
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :cond_4
    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v3, 0x5

    .line 208
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 211
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 221
    sget v1, Lcom/android/settings/R$id;->brightness_icon:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 223
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_REDUCED_BRIGHTNESS_LIMIT:Z

    if-eqz v1, :cond_5

    const-string v1, "Brightness_icon_85.json"

    goto :goto_3

    :cond_5
    const-string v1, "Brightness_icon_90.json"

    .line 222
    :goto_3
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    .line 227
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/high16 v1, 0xff00000

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateDualColorRange(Landroidx/appcompat/widget/SeslSeekBar;)V

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getCurrentProgress()I

    move-result p1

    .line 234
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(I)V

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onbindview mAutomaticMode : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsHBMOnOff : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    .line 237
    invoke-virtual {v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->isHBMOnOff()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BrightnessSeekBarPreference"

    .line 236
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setInitFinish(Z)V

    .line 242
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "shown_max_brightness_dialog"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v2

    :cond_6
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAlreadyShownBrightMaxDialog:Z

    return-void
.end method

.method public onBrightnessChanged()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getCurrentProgress()I

    move-result v0

    .line 320
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    if-nez v1, :cond_1

    .line 321
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->animateSliderTo(I)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(I)V

    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    :goto_0
    return-void
.end method

.method public onBrightnessModeChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v1

    if-nez v1, :cond_2

    .line 356
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    .line 360
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-nez v0, :cond_3

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->hideHbmText()V

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_5

    .line 365
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateDualColorRange(Landroidx/appcompat/widget/SeslSeekBar;)V

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getCurrentProgress()I

    move-result v0

    .line 367
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    if-nez v1, :cond_4

    .line 368
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->animateSliderTo(I)V

    goto :goto_0

    .line 370
    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    .line 165
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_brightness"

    .line 164
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 158
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 446
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_0

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "on stop tracking touch progress = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", brightness = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getRatioOfProgress()F

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$mconvertToBrightness(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;F)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrightnessSeekBarPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 568
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 569
    new-instance p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    const/4 p0, 0x0

    .line 570
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 454
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    const/16 p1, 0x15

    if-eq p2, p1, :cond_1

    const/16 p1, 0x16

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 458
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_2

    .line 459
    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 4

    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 251
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAlreadyShownBrightMaxDialog:Z

    if-nez v1, :cond_1

    sget v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    if-le p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 253
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->showBrightnessAlertDialog()V

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 258
    sget v1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    if-gt p2, v1, :cond_3

    if-eqz p3, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 261
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 264
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getRatioOfProgress(I)F

    move-result v1

    .line 265
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 266
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->isOverHeat(F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_0
    if-nez p3, :cond_6

    return-void

    .line 277
    :cond_6
    iget-object p3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eq p1, p3, :cond_7

    if-eqz p3, :cond_7

    .line 278
    invoke-virtual {p3, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 279
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setContentDescriptionForAutomationTest(I)V

    .line 281
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->setBrightnessByRatio(F)V

    .line 283
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_8

    .line 284
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    .line 285
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_8

    .line 286
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 289
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    .line 292
    :cond_9
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessAnimation(F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    .line 418
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->isHBMOnOff()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 419
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessLimit()V

    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x1068

    .line 429
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 431
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    const-string v1, "brightness_user_touch"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-nez v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onstoptracking, mAutomaticMode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsHBMOnOff : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    .line 438
    invoke-virtual {v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->isHBMOnOff()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", progress : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", brightness : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    .line 439
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getRatioOfProgress()F

    move-result v2

    invoke-static {p1, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$mconvertToBrightness(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", brightness_user_touch : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    .line 441
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightnessSeekBarPreference"

    .line 437
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerBrightnessObserver()V
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    .line 393
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "auto_brightness_detail"

    .line 394
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "shown_max_brightness_dialog"

    .line 395
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 397
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->register()V

    return-void
.end method

.method public setInitFinish(Z)V
    .locals 0

    .line 584
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    return-void
.end method

.method public setRestrictedBrightness(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsRestricted:Z

    .line 176
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public unRegisterBrightnessObserver()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 402
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 403
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 404
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 406
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->unregister()V

    return-void
.end method
