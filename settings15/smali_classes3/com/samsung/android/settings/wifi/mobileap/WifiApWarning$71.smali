.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
