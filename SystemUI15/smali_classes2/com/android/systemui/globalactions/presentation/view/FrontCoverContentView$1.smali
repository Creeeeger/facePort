.class public final Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iput-boolean p1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLastFoldedState:Z

    if-nez p1, :cond_0

    iget-boolean p1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsSecureConfirming:Z

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onDismiss()V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {p0}, Landroid/app/Presentation;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
