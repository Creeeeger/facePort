.class public final synthetic Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;->f$1:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object p0, v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/SecQSPanelController;->setGridContentVisibility(Z)V

    iget-object p0, v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderIcons:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
