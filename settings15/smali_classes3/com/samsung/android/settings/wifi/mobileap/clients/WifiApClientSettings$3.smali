.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mEditDeviceNameDialog:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApClientEditedName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
