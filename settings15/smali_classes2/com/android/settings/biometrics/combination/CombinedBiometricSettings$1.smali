.class public final Lcom/android/settings/biometrics/combination/CombinedBiometricSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$OnContentChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings$1;->this$0:Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;

    return-void
.end method


# virtual methods
.method public final onContentChanged(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings$1;->this$0:Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "biometric_settings_biometric_keyguard"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->getUseAnyBiometricSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
