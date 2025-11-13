.class public final Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$3;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$3;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    iget-object v0, p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mResultCodeArrayList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mUiToRequestedList:Ljava/util/List;

    iget p1, p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mSavingIndex:I

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    iget p1, p1, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mIndex:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$3;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-virtual {p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->saveNextNetwork()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$3;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->showSavedOrFail()V

    return-void
.end method

.method public final onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$3;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mAnyNetworkSavedSuccess:Z

    invoke-virtual {v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->saveNextNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$3;->this$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->showSavedOrFail()V

    return-void
.end method
