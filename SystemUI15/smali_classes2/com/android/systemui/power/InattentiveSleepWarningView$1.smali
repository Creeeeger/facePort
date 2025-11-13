.class public final Lcom/android/systemui/power/InattentiveSleepWarningView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/InattentiveSleepWarningView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/InattentiveSleepWarningView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView$1;->this$0:Lcom/android/systemui/power/InattentiveSleepWarningView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView$1;->this$0:Lcom/android/systemui/power/InattentiveSleepWarningView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/power/InattentiveSleepWarningView;->mDismissing:Z

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView$1;->this$0:Lcom/android/systemui/power/InattentiveSleepWarningView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView$1;->this$0:Lcom/android/systemui/power/InattentiveSleepWarningView;

    sget p1, Lcom/android/systemui/power/InattentiveSleepWarningView;->$r8$clinit:I

    iget-boolean p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mDismissing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
