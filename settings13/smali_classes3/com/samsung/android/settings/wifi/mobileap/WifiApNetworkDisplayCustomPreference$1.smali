.class Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$1;
.super Ljava/lang/Object;
.source "WifiApNetworkDisplayCustomPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mSecondaryIcon`s onClick() - Triggered"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;->onSecondaryIconClicked(Ljava/lang/Object;)V

    return-void
.end method
