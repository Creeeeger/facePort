.class public final synthetic Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mMiniSViewCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iput-object p1, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->toastMessage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method
