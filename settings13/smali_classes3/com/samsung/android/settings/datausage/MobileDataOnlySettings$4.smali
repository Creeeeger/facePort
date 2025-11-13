.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MobileDataOnlySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    const-string v0, "MobileDataOnlySettings"

    const-string v1, "Vpn is connected. finish this page"

    .line 165
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 167
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    return-void
.end method
