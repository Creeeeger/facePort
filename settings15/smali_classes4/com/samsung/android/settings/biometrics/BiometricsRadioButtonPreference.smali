.class public Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;
.super Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

.field public mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mToast:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final onClick()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onRadioButtonClicked : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FpstFingerprintShowIconSettings"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "button_screen_off_tap"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v6, "button_lock_tap"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v6, "button_lock_always"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v5, v1

    goto :goto_0

    :sswitch_3
    const-string v6, "button_screen_off_always"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v5, v0

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "screen_off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mContext:Landroid/content/Context;

    iget v1, v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mUserId:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    goto :goto_2

    :cond_4
    iget-object p0, v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mContext:Landroid/content/Context;

    iget v1, v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mUserId:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLockIconValue(Landroid/content/Context;II)V

    :goto_2
    invoke-virtual {v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->updatePreference$10()V

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4389873b -> :sswitch_3
        0x1c6afe16 -> :sswitch_2
        0x2e2a28fc -> :sswitch_1
        0x56d544ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final performClick()V
    .locals 4

    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    const-string v2, "BiometricsRestrictedSwitchPreference"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const v1, 0x7f142118

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string p0, "Power save mode is on"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_2
    const v1, 0x7f1423f9

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRadioButtonPreference;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string p0, "\'Fingerprint always on\' is on"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
