.class public final synthetic Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

.field public final synthetic f$1:Lcom/android/settings/fuelgauge/batterytip/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->createDialogFragment(Lcom/android/settings/fuelgauge/batterytip/AppInfo;Z)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "RestrictedAppDetails"

    invoke-virtual {p2, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0x6f4

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return v0
.end method
