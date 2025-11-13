.class public Lcom/samsung/android/settings/wifi/WifiResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiResetReceiver.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiResetReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiResetReceiver"

    const-string p2, "Reset Wi-Fi Network..."

    .line 31
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p0, Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiReset;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiReset;->networkReset(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
