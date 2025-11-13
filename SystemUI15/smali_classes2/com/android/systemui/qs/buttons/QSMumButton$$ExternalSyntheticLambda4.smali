.class public final synthetic Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSMumButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserSwitcherInteractor:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    sget-object v0, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->showUserSwitcher(Lcom/android/systemui/animation/Expandable;)V

    return-void
.end method
