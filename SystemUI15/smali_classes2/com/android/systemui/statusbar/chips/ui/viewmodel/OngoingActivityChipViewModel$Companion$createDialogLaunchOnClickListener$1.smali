.class public final Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel$Companion$createDialogLaunchOnClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $dialogDelegate:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;

.field public final synthetic $dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel$Companion$createDialogLaunchOnClickListener$1;->$dialogDelegate:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel$Companion$createDialogLaunchOnClickListener$1;->$dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel$Companion$createDialogLaunchOnClickListener$1;->$dialogDelegate:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;->createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    const v1, 0x7f0a0843

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/chips/ui/view/ChipBackgroundContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel$Companion$createDialogLaunchOnClickListener$1;->$dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    sget-object v1, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;->fromView(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    :goto_0
    return-void
.end method
