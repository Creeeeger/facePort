.class public final Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    const v5, 0x10405f0

    const v6, 0x10405ef

    const v2, 0x1080455

    const v3, 0x1080457

    const v4, 0x10405f1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;IIIII)V

    return-void
.end method


# virtual methods
.method public final changeStateFromPress(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-boolean v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasTelephony:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    iput-object p1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    :cond_2
    return-void
.end method

.method public final onToggle(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasTelephony:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mIsWaitingForEcmExit:Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->-$$Nest$mchangeAirplaneModeSystemSetting(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Z)V

    :goto_0
    return-void
.end method

.method public final showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
