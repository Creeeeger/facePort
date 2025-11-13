.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1$onTransitionCancel$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1$onTransitionCancel$1;-><init>(Landroid/transition/Transition;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;->updateTransitions(Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1$onTransitionEnd$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1$onTransitionEnd$1;-><init>(Landroid/transition/Transition;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;->updateTransitions(Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1$onTransitionPause$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1$onTransitionPause$1;-><init>(Landroid/transition/Transition;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;->updateTransitions(Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1$onTransitionResume$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1$onTransitionResume$1;-><init>(Landroid/transition/Transition;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;->updateTransitions(Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1$onTransitionStart$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$transitionListener$1$onTransitionStart$1;-><init>(Landroid/transition/Transition;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;->updateTransitions(Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
