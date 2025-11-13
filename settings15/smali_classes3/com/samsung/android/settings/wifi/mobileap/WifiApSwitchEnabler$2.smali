.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary$1()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary$1()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary$1()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
