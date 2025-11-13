.class public final Lcom/android/settings/notification/app/DeepSleepingPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "deep_sleeping"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Lcom/samsung/android/settings/widget/SecButtonPreference;

    new-instance v0, Lcom/android/settings/notification/app/DeepSleepingPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/DeepSleepingPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/DeepSleepingPreferenceController;)V

    iput-object v0, p1, Lcom/samsung/android/settings/widget/SecButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/high16 v0, -0x1000000

    iput v0, p1, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonTextColor:I

    iget-object p0, p0, Lcom/android/settings/notification/app/DeepSleepingPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1420ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecButtonPreference;->mTitle:Ljava/lang/String;

    const p0, 0x7f0808a3

    iput p0, p1, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonBackGroundRes:I

    return-void
.end method
