.class public final Lcom/android/settings/network/SwitchSlotSidecar;
.super Lcom/android/settings/AsyncTaskSidecar;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SidecarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground(Lcom/android/settings/network/SwitchSlotSidecar$Param;)Ljava/lang/Object;
    .locals 4

    const-string v0, "SwitchSlotSidecar"

    new-instance v1, Lcom/android/settings/network/SwitchSlotSidecar$Result;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p0, Lcom/android/settings/network/UiccSlotsException;

    const-string p1, "Null param"

    invoke-direct {p0, p1}, Lcom/android/settings/network/UiccSlotsException;-><init>(Ljava/lang/String;)V

    iput-object p0, v1, Lcom/android/settings/network/SwitchSlotSidecar$Result;->exception:Lcom/android/settings/network/UiccSlotsException;

    goto :goto_2

    :cond_0
    :try_start_0
    iget v2, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->command:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const-string p0, "Wrong command."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string v2, "Start to switch to euicc slot."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v2, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    iget v3, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->port:I

    iget-object p1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->removedSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, v2, v3, p1}, Lcom/android/settings/network/UiccSlotUtil;->switchToEuiccSlot(Landroid/content/Context;IILandroid/telephony/SubscriptionInfo;)V

    goto :goto_1

    :cond_2
    const-string v2, "Start to switch to removable slot."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v2, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    iget-object p1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->removedSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v2, p0, p1}, Lcom/android/settings/network/UiccSlotUtil;->switchToRemovableSlot(ILandroid/content/Context;Landroid/telephony/SubscriptionInfo;)V
    :try_end_0
    .catch Lcom/android/settings/network/UiccSlotsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iput-object p0, v1, Lcom/android/settings/network/SwitchSlotSidecar$Result;->exception:Lcom/android/settings/network/UiccSlotsException;

    :goto_1
    const-string p0, "return command."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v1
.end method

.method public final onPostExecute$1(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/settings/network/SwitchSlotSidecar$Result;

    const-string v0, "SwitchSlotSidecar"

    const-string v1, "onPostExecute: get result"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/settings/network/SwitchSlotSidecar$Result;->exception:Lcom/android/settings/network/UiccSlotsException;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    :goto_0
    return-void
.end method
