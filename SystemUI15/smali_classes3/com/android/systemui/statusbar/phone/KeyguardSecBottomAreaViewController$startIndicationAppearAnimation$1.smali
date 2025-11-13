.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startIndicationAppearAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startIndicationAppearAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startIndicationAppearAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$setIndicationUpdatable(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startIndicationAppearAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$setIndicationUpdatable(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startIndicationAppearAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->helpTextAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getIndicationArea()Landroid/view/ViewGroup;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startIndicationAppearAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getIndicationArea()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$startIndicationAppearAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$setIndicationUpdatable(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;Z)V

    return-void
.end method
