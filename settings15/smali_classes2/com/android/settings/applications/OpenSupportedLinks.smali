.class public Lcom/android/settings/applications/OpenSupportedLinks;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# instance fields
.field mAllowOpening:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field mAskEveryTime:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field public mCurrentIndex:I

.field mNotAllowed:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field public final mRadioKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    const-string v0, "app_link_open_ask"

    const-string v1, "app_link_open_never"

    const-string v2, "app_link_open_always"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mRadioKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addLinksToFooter(Lcom/android/settingslib/widget/FooterPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "OpenSupportedLinks"

    const-string p1, "Can\'t find any app links."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final createDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntriesNo()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x720

    return p0
.end method

.method public initRadioPreferencesGroup()V
    .locals 5

    const-string v0, "supported_links_radio_group"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "app_link_open_always"

    const v1, 0x7f14037e

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/OpenSupportedLinks;->makeRadioPreference$1(ILjava/lang/String;)Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAllowOpening:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/OpenSupportedLinks;->getEntriesNo()I

    move-result v0

    new-instance v1, Landroid/icu/text/MessageFormat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14037f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "count"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAllowOpening:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v3, v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendix:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput v4, v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAllowOpening:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v1, v2}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "app_link_open_ask"

    const v1, 0x7f140380

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/OpenSupportedLinks;->makeRadioPreference$1(ILjava/lang/String;)Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAskEveryTime:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string v0, "app_link_open_never"

    const v1, 0x7f140381

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/OpenSupportedLinks;->makeRadioPreference$1(ILjava/lang/String;)Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mNotAllowed:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iput v1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/OpenSupportedLinks;->setRadioStatus(I)V

    return-void
.end method

.method public final makeRadioPreference$1(ILjava/lang/String;)Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
    .locals 2

    new-instance v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    iput-object p0, v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iget-object p0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    const p1, 0x7f170104

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/OpenSupportedLinks;->initRadioPreferencesGroup()V

    const-string p1, "supported_links_footer"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/FooterPreference;

    if-nez p1, :cond_0

    const-string p0, "OpenSupportedLinks"

    const-string p1, "Can\'t find the footer preference."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/OpenSupportedLinks;->addLinksToFooter(Lcom/android/settingslib/widget/FooterPreference;)V

    :goto_0
    return-void
.end method

.method public final onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mRadioKeys:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    iget p1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mCurrentIndex:I

    if-eq p1, v0, :cond_6

    iput v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/OpenSupportedLinks;->setRadioStatus(I)V

    iget p1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mCurrentIndex:I

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    iget-object p1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    goto :goto_3

    :cond_5
    const-string p0, "OpenSupportedLinks"

    const-string p1, "Couldn\'t update intent verification status!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public final refreshUi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final setRadioStatus(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAllowOpening:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAskEveryTime:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mNotAllowed:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
