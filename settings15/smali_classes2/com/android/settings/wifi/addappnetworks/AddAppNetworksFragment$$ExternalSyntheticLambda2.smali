.class public final synthetic Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_0

    const-string p1, "AddAppNetworksFragment"

    const-string v0, "User rejected to add network"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->finishWithResult(ILjava/util/List;)V

    return-void

    :pswitch_0
    const-string p1, "AddAppNetworksFragment"

    const-string v0, "User agree to add networks"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
