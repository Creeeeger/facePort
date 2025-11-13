.class Lcom/samsung/android/settings/connection/GigaMultiPath$3;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iput-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 246
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 249
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$mshowProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->val$isChecked:Z

    invoke-static {p1, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fputmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    .line 253
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 254
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 255
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$mshowProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    :cond_1
    :goto_0
    return-void
.end method
