.class public Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContentView:Landroid/view/View;

.field public mOverlayManager:Landroid/content/om/IOverlayManager;

.field public mRadiobuttonChangeListener:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;

.field public mScanIntervalRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public static -$$Nest$msetResourceOverlayForScan(Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;ZZ)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v1, "com.samsung.android.wifi.decrease.scan.interval.resources"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string p1, "com.samsung.android.wifi.increase.scan.interval.resources"

    invoke-interface {p0, p1, p2, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ScanIntervalChange"

    const-string p2, "Failed to set RRO "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;-><init>(Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mRadiobuttonChangeListener:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "overlay"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d098d

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mRadiobuttonChangeListener:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mRadiobuttonChangeListener:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0cfd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mScanIntervalRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mRadiobuttonChangeListener:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sem_wifi_settings_framework_scan_interval"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mScanIntervalRadioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0a0cfe

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mScanIntervalRadioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0a0cf8

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->mScanIntervalRadioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0a0cfc

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    return-void
.end method
