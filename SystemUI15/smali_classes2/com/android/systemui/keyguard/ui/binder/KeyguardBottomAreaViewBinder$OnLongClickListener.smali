.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final onTouchListener:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;->onTouchListener:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseLongTap(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->configKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel$OnClickedParameters;

    sget-object v4, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    invoke-direct {v4, p1}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->slotId:Ljava/lang/String;

    invoke-direct {v3, v2, v4, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel$OnClickedParameters;-><init>(Ljava/lang/String;Lcom/android/systemui/animation/Expandable;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->isActivated:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->Activated:Landroid/os/VibrationEffect;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->Deactivated:Landroid/os/VibrationEffect;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;->onTouchListener:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->cancel()V

    return v1
.end method

.method public final onLongClickUseDefaultHapticFeedback(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
