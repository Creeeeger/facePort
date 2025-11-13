.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    const-string p1, "TETH_010"

    const-string v0, "8008"

    .line 287
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    sget p1, Lcom/android/settings/R$string;->wifi_ap_menu_configure_hotspot:I

    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->launchWifiApEditSettingsActivity(I)V

    const/4 p0, 0x1

    return p0
.end method
