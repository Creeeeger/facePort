.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    return-void
.end method
