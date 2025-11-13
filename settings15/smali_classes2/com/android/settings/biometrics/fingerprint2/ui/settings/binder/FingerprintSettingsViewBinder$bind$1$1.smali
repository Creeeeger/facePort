.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$1$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel;

    instance-of v0, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Success;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$1$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Success;

    iget p1, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Success;->fingerId:I

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->fingerprintPreferences()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->fingerId:I

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->highlight(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-ne p0, p1, :cond_4

    move-object v1, p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    instance-of p2, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Error;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Error;

    iget p2, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Error;->error:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_4

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p2, 0x0

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Error;->message:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_1
    return-object v1

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$1$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    const-string p2, "security_settings_fingerprint_unlock_category"

    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    const-string p2, "security_settings_require_screen_on_to_auth"

    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$1$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    const-string v0, "key_fingerprint_add"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v2, 0x7f140f98

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    :cond_7
    const-string p1, ""

    :cond_8
    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_5
    if-eqz v0, :cond_b

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$confirmDeviceResultListener$1;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$confirmDeviceResultListener$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;I)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_b
    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$1$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "enrolledFingerprints"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "security_settings_fingerprints_enrolled"

    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_d
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    if-eqz p2, :cond_e

    new-instance v4, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "requireContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_f

    goto :goto_8

    :cond_f
    move v2, v3

    :goto_8
    invoke-direct {v4, v5, v1, p0, v2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;Z)V

    invoke-virtual {p2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_7

    :cond_10
    if-nez p2, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_9
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string p1, "security_settings_fingerprint_footer"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getUserId()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {p2, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f14114a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v4}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Object;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f142a1b

    if-eqz p2, :cond_12

    const-class v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    new-instance v6, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v7, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$1;

    invoke-direct {v7, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;)V

    const-string v8, "Settings.FINGERPRINT_UNLOCK_DISABLED_EXPLANATION"

    invoke-virtual {v5, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->title:Ljava/lang/CharSequence;

    new-instance v5, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;

    const/4 v7, 0x0

    invoke-direct {v5, v0, p2, v7}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Object;I)V

    iput-object v5, v6, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->learnMoreOnClickListener:Landroid/view/View$OnClickListener;

    const p2, 0x7f1402b2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v6, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->learnMoreOverrideText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f14297e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->learnMoreOverrideText:Ljava/lang/CharSequence;

    iput-object v2, p2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->learnMoreOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    new-instance p2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/DeviceHelper;->getDeviceName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v5, 0x7f142a0b

    invoke-virtual {p0, v5, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->title:Ljava/lang/CharSequence;

    iput-object v2, p2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->learnMoreOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->learnMoreOverrideText:Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v3

    :goto_b
    if-ge v0, p2, :cond_1b

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->title:Ljava/lang/CharSequence;

    new-instance v6, Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {v6, v4}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_14
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, v6, Lcom/android/settingslib/widget/FooterPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    iput-object v4, v6, Lcom/android/settingslib/widget/FooterPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_15
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {v6, v4}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    :cond_16
    if-lez v0, :cond_17

    invoke-virtual {v6}, Lcom/android/settingslib/widget/FooterPreference;->setIconVisibility()V

    :cond_17
    iget-object v4, v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->learnMoreOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_18

    invoke-virtual {v6, v4}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    iget-object v4, v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->learnMoreOverrideText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v2, v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$FooterColumn;->learnMoreOverrideText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    :cond_18
    if-eqz p1, :cond_19

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Footer title cannot be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
