.class public final synthetic Lcom/android/settings/display/AdaptiveSleepPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/AdaptiveSleepPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/AdaptiveSleepPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-boolean p1, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x6db

    iget-object v2, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adaptive_sleep"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method
