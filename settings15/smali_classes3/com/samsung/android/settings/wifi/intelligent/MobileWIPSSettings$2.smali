.class public final Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "MobileWIPSSettings"

    const-string v0, "Detection db was updated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    sget-object p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->detectionUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setHistoryListUp()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "wifi_mwips"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsSwitch()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
