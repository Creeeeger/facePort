.class public final synthetic Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method
