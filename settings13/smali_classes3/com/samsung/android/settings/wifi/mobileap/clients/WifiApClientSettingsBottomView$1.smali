.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;
.super Ljava/lang/Object;
.source "WifiApClientSettingsBottomView.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->initBottomNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 74
    sget v0, Lcom/android/settings/R$id;->pause_button:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 75
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->-$$Nest$fgetmPauseButton(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 76
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->-$$Nest$fgetmResumeButton(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 77
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApClientDataPaused(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 78
    :cond_0
    sget v0, Lcom/android/settings/R$id;->resume_button:I

    if-ne p1, v0, :cond_1

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->-$$Nest$fgetmPauseButton(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 80
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->-$$Nest$fgetmResumeButton(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 81
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApClientDataPaused(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 83
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->-$$Nest$fgetmWifiApClientSettings(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->refreshConnectedPreferences()V

    return v2
.end method
