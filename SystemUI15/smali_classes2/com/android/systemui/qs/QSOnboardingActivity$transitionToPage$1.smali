.class public final Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $next:Landroid/view/View;

.field public final synthetic $previous:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/qs/QSOnboardingActivity;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/qs/QSOnboardingActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->$previous:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    iput-object p3, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->$next:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->$previous:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    iget-object v0, v0, Lcom/android/systemui/qs/QSOnboardingActivity;->fullScreenScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->$next:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    iget-object v3, v3, Lcom/android/systemui/qs/QSOnboardingActivity;->secondPage:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    const v3, 0x7f130e5b

    invoke-virtual {v0, v3}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    const v3, 0x7f130e7d

    invoke-virtual {v0, v3}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->$next:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    iget-object v0, v0, Lcom/android/systemui/qs/QSOnboardingActivity;->fullScreenScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1$1;

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1$1;-><init>(Lcom/android/systemui/qs/QSOnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
