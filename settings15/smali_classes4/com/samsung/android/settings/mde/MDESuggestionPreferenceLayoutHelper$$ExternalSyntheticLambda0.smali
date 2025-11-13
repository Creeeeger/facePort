.class public final synthetic Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    iput p2, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    iget p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f142569

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setActionButtonText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTranslationX()F

    move-result v3

    int-to-float p0, p0

    sub-float/2addr v3, p0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p0, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v3, 0x190

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v3, v4, v5, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p0, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v2, "sec_suggestions_done.json"

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object p0, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    return-void
.end method
