.class public final synthetic Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    sget p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "WifiApSaAutoHotspotSettings"

    const-string v0, "AutoHotspot account owner profile clicked."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    sget-boolean p1, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const-string p1, "WifiApSettingsUtils"

    const-string v0, "Launching Samsung Account Settings Activity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.osp.app.signin"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
