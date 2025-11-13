.class Lcom/samsung/android/settings/connection/GigaLteSettings$38;
.super Landroid/database/ContentObserver;
.source "GigaLteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaLteSettings;->getMobileDataObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;Landroid/os/Handler;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1075
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1076
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 1077
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1078
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 1079
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    goto :goto_0

    .line 1081
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1082
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 1083
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    :cond_1
    :goto_0
    return-void
.end method
