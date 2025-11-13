.class public final synthetic Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public final synthetic f$1:Landroidx/preference/Preference;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$1:Landroidx/preference/Preference;

    iput-boolean p3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$1:Landroidx/preference/Preference;

    iget-boolean p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$2:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, v1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    invoke-static {v1, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    return-void
.end method
