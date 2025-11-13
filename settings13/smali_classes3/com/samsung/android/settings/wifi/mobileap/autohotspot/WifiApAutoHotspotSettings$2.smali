.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$2;
.super Ljava/lang/Object;
.source "WifiApAutoHotspotSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->updateAutoHotspotSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 220
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoHotspot account owner profile clicked."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->launchSamsungAccountSettingsActivity(Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0
.end method
