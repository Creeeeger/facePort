.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "TETH_014"

    const-string p2, "8087"

    const-wide/16 v0, 0x2

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mMacAddress:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApClientTimeLimit(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
