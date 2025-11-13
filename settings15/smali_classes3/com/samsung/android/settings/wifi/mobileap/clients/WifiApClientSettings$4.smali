.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mEditDeviceNameDialog:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;

    const v1, 0x7f14330a

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mEditDeviceNameDialog:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->setEditText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mEditDeviceNameDialog:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$4$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$4$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$4;)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
