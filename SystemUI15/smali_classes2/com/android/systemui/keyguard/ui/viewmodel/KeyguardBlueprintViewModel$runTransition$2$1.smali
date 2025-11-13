.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$runTransition$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $transition:Landroid/transition/Transition;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$runTransition$2$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$runTransition$2$1;->$transition:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$runTransition$2$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$runTransition$2$1$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$runTransition$2$1;->$transition:Landroid/transition/Transition;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel$runTransition$2$1$1;-><init>(Landroid/transition/Transition;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;->updateTransitions(Lcom/android/systemui/keyguard/ui/viewmodel/TransitionData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
