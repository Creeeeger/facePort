.class public final Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;

.field public final synthetic val$showDot:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$1;->val$showDot:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->access$000(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$1;->val$showDot:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->access$100(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$1;->val$showDot:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->access$200(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
