.class public final Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$11;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$11;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$11;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarAnimateAlpha:F

    return-void
.end method
