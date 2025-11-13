.class public final Lcom/android/settings/wifi/WifiEnabler$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$2;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler$2;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    return-void
.end method
