.class public Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "SimTrayProtectionViewModel"


# instance fields
.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mRemoveSimTray:Z

.field private mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field private final mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSimTrayProtectionDialog(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateRemoveSimTrayStatus(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->updateRemoveSimTrayStatus(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mRemoveSimTray:Z

    new-instance v0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;-><init>(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;)V

    iput-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    iput-object p4, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    return-void
.end method

.method private isFoldedState()Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result p0

    return p0
.end method

.method private isRemoveSimtray()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mRemoveSimTray:Z

    return p0
.end method

.method private updateRemoveSimTrayStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mRemoveSimTray:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dismiss : isFoldedState()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->isFoldedState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isRemoveSimtray() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->isRemoveSimtray()Z

    move-result v1

    const-string v2, "SimTrayProtectionViewModel"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->isRemoveSimtray()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_PROTECTION_POPUP"

    return-object p0
.end method

.method public bridge synthetic onFinishedGoingToSleep()V
    .locals 0

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

.method public bridge synthetic onStartedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public show(Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_CONTEXTSERVICE_ENABLE_SURVEY:Z

    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_PROTECTION_POPUP"

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v1, "dismiss"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "show"

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v4, "SimTrayProtectionViewModel"

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->updateRemoveSimTrayStatus(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->dismiss()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string/jumbo v3, "type"

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string/jumbo v4, "waterproof"

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string/jumbo v4, "tray"

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getSimTrayProtectionDialog(IZI)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method
