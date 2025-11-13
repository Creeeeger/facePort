.class public final Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field public final mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field public mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field public final mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

.field public final mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

.field public final mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field public final mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

.field public final mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

.field public mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/AlertDialogFactory;Lcom/samsung/android/globalactions/util/SystemController;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    return-void
.end method


# virtual methods
.method public final getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object p0
.end method

.method public final onPress()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-string v4, "Pro kiosk"

    const-wide/16 v5, 0x7

    const-string v2, "611"

    const-string v3, "6111"

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;I)V

    new-instance v2, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;I)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskModeDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    const/16 v2, 0xdd

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getExitUI(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, v2, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    const/16 v3, 0xde

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/custom/ProKioskManager;->getExitUI(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    goto :goto_0

    :cond_0
    iput-object v4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {v1, v3, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/globalactions/util/SystemController;->startProKioskExitUI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    :cond_5
    return-void
.end method

.method public final setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public final setState(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    const/16 v0, 0x6f

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v0, v0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v3, 0x10405ea

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v0, 0x10405dc

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {p0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v0, 0x10405db

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
