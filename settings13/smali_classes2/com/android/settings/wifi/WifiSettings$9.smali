.class Lcom/android/settings/wifi/WifiSettings$9;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 2127
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$9;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Z)V
    .locals 2

    .line 2130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabler changed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2132
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$9;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget v0, Lcom/android/settings/R$string;->wifi_starting:I

    invoke-static {p1, v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$msetEmptyView(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 2133
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$9;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fputmIgnoreUpdateOnDisabling(Lcom/android/settings/wifi/WifiSettings;Z)V

    goto :goto_0

    .line 2135
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$9;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget v0, Lcom/android/settings/R$string;->wifi_stopping:I

    invoke-static {p1, v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$msetEmptyView(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 2136
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$9;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fputmIgnoreUpdateOnDisabling(Lcom/android/settings/wifi/WifiSettings;Z)V

    :goto_0
    return-void
.end method
