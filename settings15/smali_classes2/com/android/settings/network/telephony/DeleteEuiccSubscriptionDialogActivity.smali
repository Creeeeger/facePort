.class public Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;
.super Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;
.implements Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

.field public mSubscriptionToBeDeleted:Landroid/telephony/SubscriptionInfo;

.field public mSubscriptionsToBeDeleted:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfirm(IIZ)V
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void

    :cond_0
    const-string p2, "DeleteEuiccSubscriptionDialogActivity"

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const-string p0, "Unrecognized confirmation dialog tag: "

    invoke-static {p1, p0, p2}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Subscription deletion confirmed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f140e55

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    iget-object p0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mSubscriptionsToBeDeleted:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p3, p2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p1, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->mSubscriptions:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->deleteSubscription()V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Subscriptions cannot be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1, v0}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mSubscriptionToBeDeleted:Landroid/telephony/SubscriptionInfo;

    iget-object v1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1, v0}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mSubscriptionsToBeDeleted:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mSubscriptionToBeDeleted:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->$r8$clinit:I

    const-class v1, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    const-string v2, "DeleteEuiccSubscriptionSidecar"

    invoke-static {v0, v2, v1}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;)Lcom/android/settings/SidecarFragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    iput-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    if-nez p1, :cond_4

    const p1, 0x7f140e52

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mSubscriptionToBeDeleted:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f140e51

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f140e50

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f1408bf

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find subscription with sub ID: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeleteEuiccSubscriptionDialogActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public final onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_2

    iget p1, v0, Lcom/android/settings/SidecarFragment;->mState:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "DeleteEuiccSubscriptionDialogActivity"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to delete the subscription."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    invoke-virtual {p1, v1, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const p1, 0x7f140e54

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140e53

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/network/telephony/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Successfully delete the subscription."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->mDeleteEuiccSubscriptionSidecar:Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    invoke-virtual {p1, v1, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
