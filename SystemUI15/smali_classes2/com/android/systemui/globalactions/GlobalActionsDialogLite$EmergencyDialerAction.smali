.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    const v0, 0x7f080916

    const v1, 0x10405ca

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;II)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    return-void
.end method


# virtual methods
.method public final onPress()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x621

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->cancelExpansionAndCollapseShade()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mTelecomManager:Landroid/telecom/TelecomManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method
