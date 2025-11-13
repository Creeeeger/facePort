.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$dispatchClick$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $configKey:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$dispatchClick$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$dispatchClick$1;->$configKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$dispatchClick$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;

    iget-object v0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->isActivated:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->Activated:Landroid/os/VibrationEffect;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->Deactivated:Landroid/os/VibrationEffect;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$dispatchClick$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;

    iget-object v0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel$OnClickedParameters;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$dispatchClick$1;->$configKey:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->view:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$dispatchClick$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->slotId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel$OnClickedParameters;-><init>(Ljava/lang/String;Lcom/android/systemui/animation/Expandable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
