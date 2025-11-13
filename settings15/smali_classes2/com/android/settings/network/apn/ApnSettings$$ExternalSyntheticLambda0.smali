.class public final synthetic Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const-string v1, "apn_list"

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/apn/ApnSettings;

    const/4 v4, 0x1

    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v3, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim2:Lcom/android/settings/network/apn/PreferredApnRepository;

    iget p0, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->subId:I

    iget v5, v3, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    if-ne p0, v5, :cond_2

    invoke-virtual {v3, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroidx/preference/Preference;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/apn/ApnPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/settings/network/apn/ApnPreference;->mIsChecked:Z

    iget-object v6, v3, Lcom/android/settings/network/apn/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v6, :cond_1

    iput-boolean v4, v3, Lcom/android/settings/network/apn/ApnPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput-boolean v0, v3, Lcom/android/settings/network/apn/ApnPreference;->mProtectFromCheckedChange:Z

    :cond_1
    :goto_1
    add-int/2addr v1, v4

    goto :goto_0

    :cond_2
    return-object v2

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    iget-object p0, v3, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim1:Lcom/android/settings/network/apn/PreferredApnRepository;

    iget p0, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->subId:I

    iget v5, v3, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    if-ne p0, v5, :cond_5

    invoke-virtual {v3, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroidx/preference/Preference;

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/apn/ApnPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/settings/network/apn/ApnPreference;->mIsChecked:Z

    iget-object v6, v3, Lcom/android/settings/network/apn/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v6, :cond_4

    iput-boolean v4, v3, Lcom/android/settings/network/apn/ApnPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput-boolean v0, v3, Lcom/android/settings/network/apn/ApnPreference;->mProtectFromCheckedChange:Z

    :cond_4
    :goto_3
    add-int/2addr v1, v4

    goto :goto_2

    :cond_5
    return-object v2

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    sget-boolean p0, Lcom/android/settings/network/apn/ApnSettings;->DEBUG:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "ApnSettings"

    const-string p1, "Due to subscription not enabled, closes APN settings page"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_6
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
