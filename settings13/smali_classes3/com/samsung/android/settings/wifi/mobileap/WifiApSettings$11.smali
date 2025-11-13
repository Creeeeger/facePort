.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshConnectedPreferenceCategory()V
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

    .line 777
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 780
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mobile Data Usage Preference Category Clicked2"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-$$Nest$mlaunchConnectedDeviceSettingsActivity(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const/4 p0, 0x1

    return p0
.end method
