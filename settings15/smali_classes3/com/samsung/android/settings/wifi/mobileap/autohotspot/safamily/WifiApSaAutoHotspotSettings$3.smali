.class public final Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    sget p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;->$r8$clinit:I

    const-string p0, "WifiApSaAutoHotspotSettings"

    const-string p1, "SmartWhiteListClicked`s onClick() :  device name has not been changed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
