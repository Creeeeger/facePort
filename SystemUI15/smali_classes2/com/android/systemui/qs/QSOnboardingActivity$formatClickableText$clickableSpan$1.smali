.class public final Lcom/android/systemui/qs/QSOnboardingActivity$formatClickableText$clickableSpan$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity$formatClickableText$clickableSpan$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$formatClickableText$clickableSpan$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    iget-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->firstPage:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->secondPage:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/QSOnboardingActivity;->transitionToPage(Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->firstPageAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSOnboardingActivity;->playLottieAnimation()V

    return-void
.end method
