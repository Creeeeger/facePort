.class public final Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCircle:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public final mFail:Landroid/widget/ImageView;

.field public final mHold:Landroid/widget/ImageView;

.field public final mProgress:Landroid/widget/ProgressBar;

.field public final mRotationSet:Landroid/animation/AnimatorSet;

.field public final mScaleSet:Landroid/animation/AnimatorSet;

.field public final mStandBy:Landroid/widget/ImageView;

.field public mState:I

.field public final mSuccess:Landroid/widget/ImageView;

.field public final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0452

    invoke-virtual {p1, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mView:Landroid/view/View;

    const v1, 0x7f0a0fcc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mCircle:Landroid/widget/ImageView;

    const v2, 0x7f0a0fd1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mProgress:Landroid/widget/ProgressBar;

    const v2, 0x7f0a0fd2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mStandBy:Landroid/widget/ImageView;

    const v2, 0x7f0a0fce

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mHold:Landroid/widget/ImageView;

    const v2, 0x7f0a0fd3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mSuccess:Landroid/widget/ImageView;

    const v2, 0x7f0a0fcd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mFail:Landroid/widget/ImageView;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mScaleSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mRotationSet:Landroid/animation/AnimatorSet;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mScaleSet:Landroid/animation/AnimatorSet;

    new-array v5, v0, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mScaleSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x15e

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mScaleSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mScaleSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6147ae    # 0.22f

    const v5, 0x3e2e147b    # 0.17f

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v1, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mRotationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public final reset()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mHold:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mSuccess:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mFail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mStandBy:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
