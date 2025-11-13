.class Lcom/samsung/android/settings/connection/GigaMultiPath$9;
.super Landroid/database/ContentObserver;
.source "GigaMultiPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaMultiPath;->getMobileDataObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPath;Landroid/os/Handler;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 456
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 457
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fputmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    .line 458
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 459
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fputmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    .line 460
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 463
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fputmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    .line 464
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    :cond_1
    :goto_0
    return-void
.end method
