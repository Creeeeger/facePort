.class public final synthetic Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSharedConnectivityRepository:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    iget-object p1, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mWorkerExecutor:Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mLaunchSettingsRunnable:Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda0;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method
