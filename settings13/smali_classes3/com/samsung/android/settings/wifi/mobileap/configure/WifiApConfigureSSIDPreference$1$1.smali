.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1$1;
.super Ljava/lang/Object;
.source "WifiApConfigureSSIDPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideKeyboard(Landroid/content/Context;)V

    return-void
.end method
