.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$12;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$12;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, "MultiSIMController"

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$12;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    packed-switch p1, :pswitch_data_0

    const-string p1, "UpdateDataHandler MESSAGE_EMPTY"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string p1, "MESSAGE_IMS_MANAGER_CONNECTED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    goto :goto_0

    :pswitch_1
    const-string p1, "MESSAGE_UPDATE_SUBSCRIPTION_INFO"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubInfoReversed(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateMultiSimReadyState(Z)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    goto :goto_0

    :pswitch_2
    const-string p1, "MESSAGE_UPDATE_SERVICE_STATE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    :goto_0
    sget-object p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
