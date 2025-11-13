.class public final Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    return-void
.end method


# virtual methods
.method public final onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "onReceiveStateChanged:"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSearchStartFailed(I)V
    .locals 1

    const-string p0, "onSearchStartFailed: "

    const-string v0, "BtFindBroadcastsFrg"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSearchStarted(I)V
    .locals 2

    const-string v0, "onSearchStarted: "

    const-string v1, "BtFindBroadcastsFrg"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSearchStopFailed(I)V
    .locals 1

    const-string p0, "onSearchStopFailed: "

    const-string v0, "BtFindBroadcastsFrg"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSearchStopped(I)V
    .locals 1

    const-string p0, "onSearchStopped: "

    const-string v0, "BtFindBroadcastsFrg"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "onSourceAddFailed: clear the mSelectedPreference."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    iput p2, p1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSourceId:I

    iget-object p2, p1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    if-nez p2, :cond_0

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "onSourceAdded: mSelectedPreference == null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->isSearchInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->stopSearchingForSources$1()V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 2

    const-string v0, "BtFindBroadcastsFrg"

    const-string v1, "onSourceFound:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public final onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public final onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "onSourceRemoveFailed:"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const-string p1, "BtFindBroadcastsFrg"

    const-string p2, "onSourceRemoved:"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
