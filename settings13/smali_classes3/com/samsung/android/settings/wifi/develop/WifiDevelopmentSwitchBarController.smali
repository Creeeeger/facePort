.class public Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;
.super Ljava/lang/Object;
.source "WifiDevelopmentSwitchBarController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mSettings:Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;

.field private final mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 19
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;->mSettings:Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;

    .line 21
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsEnabler;->isWifiDevelopmentSettingsEnabled()Z

    move-result v0

    .line 27
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSwitchBarController;->mSettings:Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsFragment;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
