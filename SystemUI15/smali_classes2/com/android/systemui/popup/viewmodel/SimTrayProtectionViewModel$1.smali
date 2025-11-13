.class Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    invoke-static {v0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->-$$Nest$fgetmSimTrayProtectionDialog(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    invoke-static {v0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->-$$Nest$fgetmSimTrayProtectionDialog(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SimTrayProtectionViewModel"

    const-string v1, "onFinishedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->-$$Nest$mupdateRemoveSimTrayStatus(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinishedWakingUp()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPostFinishedWakingUp()V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    invoke-static {v0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->-$$Nest$fgetmSimTrayProtectionDialog(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    invoke-static {v0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->-$$Nest$fgetmSimTrayProtectionDialog(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SimTrayProtectionViewModel"

    const-string v1, "onStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->-$$Nest$mupdateRemoveSimTrayStatus(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;Z)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    const-string v0, "SimTrayProtectionViewModel"

    const-string v1, "onStartedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;->this$0:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->-$$Nest$mupdateRemoveSimTrayStatus(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;Z)V

    return-void
.end method
