.class Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;
.super Ljava/lang/Object;
.source "WifiApEditSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceItemClicked(Ljava/lang/Object;)V
    .locals 1

    const-string p1, "TETH_011"

    const-string v0, "8014"

    .line 206
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->showAdvancedSettings()V

    return-void
.end method
