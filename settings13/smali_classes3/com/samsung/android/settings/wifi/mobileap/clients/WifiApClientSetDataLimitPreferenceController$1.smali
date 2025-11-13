.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiApClientSetDataLimitPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$fgetmWifiApClientSettings(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->refreshConnectedPreferences()V

    .line 30
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->-$$Nest$fputmClientSetDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V

    return-void
.end method
