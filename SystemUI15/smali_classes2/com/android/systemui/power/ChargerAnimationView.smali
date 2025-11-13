.class public Lcom/android/systemui/power/ChargerAnimationView;
.super Landroid/widget/RelativeLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

.field public mAnimationListener:Lcom/android/systemui/power/ChargerAnimationListener;

.field public mAnimationPlaying:Z

.field public mBackGroundView:Landroid/widget/LinearLayout;

.field public mBatteryLevelTextView:Landroid/widget/TextView;

.field public mBatteryTextContainer:Landroid/widget/LinearLayout;

.field public mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mChargerContainer:Landroid/widget/RelativeLayout;

.field public mChargingIconView:Landroid/widget/ImageView;

.field public mCircleBackgroundView:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBatteryLevel:I

.field public mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

.field public mFadeInAnimation:Landroid/animation/ObjectAnimator;

.field public mIsSubscreenOff:Z

.field public mNeedFullScreenBlur:Z

.field public mPercentTextView:Landroid/widget/TextView;

.field public mPercentTextViewRtl:Landroid/widget/TextView;

.field public mSuperFastChargingType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsSubscreenOff:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0140

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a027e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a027c

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a027b

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a016e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0173

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0174

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    const v0, 0x7f0a027f

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a027a

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelText()V

    return-void
.end method

.method public final setBatteryLevelText()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const v2, 0x7f0701b7

    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/systemui/power/ChargerAnimationUtil;->checkExceptionalLanguage()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "%"

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
