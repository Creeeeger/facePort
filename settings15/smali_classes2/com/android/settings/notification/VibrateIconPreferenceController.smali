.class public final Lcom/android/settings/notification/VibrateIconPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHasVibrator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const-class p2, Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/VibrateIconPreferenceController;->mHasVibrator:Z

    new-instance p1, Lcom/android/settings/notification/SettingPref;

    const/4 p2, 0x0

    new-array v5, p2, [I

    const/4 v1, 0x3

    const-string v2, "vibrate_icon"

    const-string v3, "status_bar_show_vibrate_icon"

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/notification/VibrateIconPreferenceController;->mHasVibrator:Z

    return p0
.end method
