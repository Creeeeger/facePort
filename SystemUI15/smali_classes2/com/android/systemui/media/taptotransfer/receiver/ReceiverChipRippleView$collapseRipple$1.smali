.class public final Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$collapseRipple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$collapseRipple$1;->$onAnimationEnd:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$collapseRipple$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$collapseRipple$1;->$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$collapseRipple$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->isStarted:Z

    return-void
.end method
