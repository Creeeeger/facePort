.class public Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final START_POINT_FOR_LIMIT_WARNING:I


# instance fields
.field public final mAutoBrightnessDetailObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

.field public mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

.field public final mBrightnessModeObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

.field public mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mDialogForMaxBrightness:Landroid/app/AlertDialog;

.field public mHBMText:Landroid/widget/TextView;

.field public mInitFinish:Z

.field public mInternalChange:Z

.field public mIsAutomaticMode:Z

.field public mIsMaxBrightnessDialogShown:Z

.field public mIsRestricted:Z

.field public final mMaxBrightnessDialogObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

.field public mOverheatTextView:Landroid/widget/TextView;

.field public mSliderAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_REDUCED_BRIGHTNESS_LIMIT:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_0
    const-wide v1, 0x41afe00000000000L    # 2.6738688E8

    int-to-double v3, v0

    mul-double/2addr v3, v1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v5, 0x7f0a025d

    const/4 v3, 0x0

    const v4, 0x7f0d0953

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    new-instance p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    new-instance p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x1

    invoke-direct {p2, p0, v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    new-instance p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x2

    invoke-direct {p2, p0, v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p2, Lcom/samsung/android/settings/display/BrightnessManager;

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V

    new-instance v1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V

    invoke-direct {p2, p1, v0, v1}, Lcom/samsung/android/settings/display/BrightnessManager;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    return-void
.end method

.method public static updateDualColorRange(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateDualColorRange >> limit : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessSeekBarPreference"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "#f7c0bd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v2, "#f1462f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setDualModeOverlapColor(II)V

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setOverlapPointForDualColor(I)V

    return-void
.end method


# virtual methods
.method public final animateSliderTo(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object p1, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "auto_brightness_transition_time"

    const/16 v1, 0xbb8

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, p1

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final getCurrentProgress()I
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    int-to-float v1, v1

    iget p0, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    int-to-float p0, p0

    int-to-float v0, v0

    invoke-static {v1, p0, v0}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result p0

    const/4 v0, 0x0

    const/high16 v1, 0xff00000

    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsAutomaticMode:Z

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a025d

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsRestricted:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsViewHolderRecoilEffectEnabled:Z

    if-eqz v3, :cond_3

    iput-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsViewHolderRecoilEffectEnabled:Z

    :cond_3
    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/high16 v3, 0xff00000

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateDualColorRange(Landroidx/appcompat/widget/SeslSeekBar;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getCurrentProgress()I

    move-result v0

    int-to-float v3, v0

    const/4 v4, 0x0

    const/high16 v5, 0x4d7f0000    # 2.6738688E8f

    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(FI)V

    :goto_2
    const v0, 0x7f0a025c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    sget-boolean v3, Lcom/samsung/android/settings/Rune;->SUPPORT_REDUCED_BRIGHTNESS_LIMIT:Z

    if-eqz v3, :cond_4

    const-string v3, "Brightness_icon_85.json"

    goto :goto_3

    :cond_4
    const-string v3, "Brightness_icon_90.json"

    :goto_3
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0a025e

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextView:Landroid/widget/TextView;

    const v0, 0x7f0a070b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onbindview mIsAutomaticMode : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsAutomaticMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsHBMOnOff : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mIsHBMOnOff:Z

    const-string v3, "BrightnessSeekBarPreference"

    invoke-static {p1, v0, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "shown_max_brightness_dialog"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_5

    move v2, v1

    :cond_5
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsMaxBrightnessDialogShown:Z

    return-void
.end method

.method public final onBrightnessModeChanged()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsAutomaticMode:Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsAutomaticMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object v3, v2, Lcom/samsung/android/settings/display/BrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, v2, Lcom/samsung/android/settings/display/BrightnessManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/Rune;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    if-le v3, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setAutoBrightnessWithCamera(Landroid/content/Context;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsAutomaticMode:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateDualColorRange(Landroidx/appcompat/widget/SeslSeekBar;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getCurrentProgress()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->animateSliderTo(I)V

    goto :goto_3

    :cond_6
    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x4d7f0000    # 2.6738688E8f

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(FI)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final onClick()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsRestricted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "no_config_brightness"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public final onDetached()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "on stop tracking touch progress = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", brightness = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/high16 v2, 0x4d7f0000    # 2.6738688E8f

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v0

    iget v1, p2, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    iget p2, p2, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    invoke-static {v1, p2, v0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrightnessSeekBarPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    new-instance p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    :cond_0
    const/16 p1, 0x15

    if-eq p2, p1, :cond_1

    const/16 p1, 0x16

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/high16 v2, 0x4d7f0000    # 2.6738688E8f

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v0

    iget v1, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    iget v2, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v0

    float-to-int v0, v0

    iget-object p1, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsMaxBrightnessDialogShown:Z

    if-nez v0, :cond_3

    sget v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    if-le p2, v3, :cond_3

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object p3, p2, Lcom/samsung/android/settings/display/BrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0137

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iget-object v0, p2, Lcom/samsung/android/settings/display/BrightnessManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p2, p2, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    if-le p3, p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAutoBrightnessDefaultValue(Landroid/content/Context;)I

    move-result p2

    const p3, 0x7f142248

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x7f142246

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    const v1, 0x7f142247

    invoke-virtual {p3, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const v1, 0x7f142245

    invoke-virtual {p3, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f142244

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x1080027

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda4;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const v0, 0x104000a

    invoke-virtual {p2, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    iget-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_3
    if-nez v0, :cond_4

    sget v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    if-gt p2, v0, :cond_5

    if-eqz p3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_5
    int-to-float v0, p2

    const/4 v3, 0x0

    const/high16 v4, 0x4d7f0000    # 2.6738688E8f

    invoke-static {v3, v4, v0}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget v4, v3, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    iget v5, v3, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    invoke-static {v4, v5, v0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v4

    float-to-int v4, v4

    iget v5, v3, Lcom/samsung/android/settings/display/BrightnessManager;->mMaxBrightness:I

    if-ge v5, v4, :cond_6

    iget v3, v3, Lcom/samsung/android/settings/display/BrightnessManager;->mChangeType:I

    if-nez v3, :cond_6

    const/4 v3, -0x1

    if-eq v5, v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_1
    if-nez p3, :cond_8

    return-void

    :cond_8
    iget-object p3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p3, :cond_9

    invoke-virtual {p3, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f140851

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/samsung/android/settings/SliderUtils;->formatStateDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget p2, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    iget p3, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    invoke-static {p2, p3, v0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p2

    float-to-int p2, p2

    iget-object p1, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->semSetTemporaryBrightness(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_a

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "animationValue : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrightnessSeekBarPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_d

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    :cond_d
    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsAutomaticMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mIsHBMOnOff:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    const/high16 v1, 0x4d7f0000    # 2.6738688E8f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    int-to-float v3, v0

    invoke-static {v2, v1, v3}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget v5, v4, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    iget v6, v4, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    invoke-static {v5, v6, v3}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v5

    float-to-int v5, v5

    iget-object v4, v4, Lcom/samsung/android/settings/display/BrightnessManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->semSetTemporaryBrightness(I)V

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(FI)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    :cond_0
    const/16 v0, 0x2e

    const/16 v3, 0x1068

    invoke-static {v0, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    const-string v3, "brightness_user_touch"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsAutomaticMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onstoptracking, mIsAutomaticMode : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsAutomaticMode:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsHBMOnOff : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-boolean v4, v4, Lcom/samsung/android/settings/display/BrightnessManager;->mIsHBMOnOff:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", progress : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", brightness : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v1, v4}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v1

    iget v2, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    iget p1, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    invoke-static {v2, p1, v1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", brightness_user_touch : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    invoke-static {p0, v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightnessSeekBarPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateBrightness()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object v0, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "auto_brightness_transition_time"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    const/high16 v2, 0x4d7f0000    # 2.6738688E8f

    invoke-static {v1, v2, p0}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result p0

    iget v1, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    iget v2, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    invoke-static {v1, v2, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p0

    float-to-int p0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public final updateProgress(FI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140851

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/SliderUtils;->formatStateDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "animationValue : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BrightnessSeekBarPreference"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    :cond_2
    return-void
.end method
