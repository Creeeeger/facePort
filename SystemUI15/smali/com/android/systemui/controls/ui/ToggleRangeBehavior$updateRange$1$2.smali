.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
