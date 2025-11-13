.class public final Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLastFoldedState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onDismiss()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {p0}, Landroid/app/Presentation;->dismiss()V

    :cond_0
    return-void
.end method
