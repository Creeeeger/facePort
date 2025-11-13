.class public abstract Lcom/android/settings/widget/RadioButtonPickerFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;
    }
.end annotation


# static fields
.field static final EXTRA_FOR_WORK:Ljava/lang/String; = "for_work"


# instance fields
.field protected mAppendStaticPreferences:Z

.field public final mCandidates:Ljava/util/Map;

.field public mIllustrationId:I

.field public mIllustrationType:Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

.field public mUserId:I

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mAppendStaticPreferences:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addIllustration(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationType:Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/IllustrationPreference;-><init>(Landroid/content/Context;)V

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationId:I

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid illustration type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationType:Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    return-void
.end method

.method public bindPreference(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/android/settingslib/widget/CandidateInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getSafeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-boolean p2, p3, Lcom/android/settingslib/widget/CandidateInfo;->enabled:Z

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-object p0, p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    return-void
.end method

.method public bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public createPreference()Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
    .locals 1

    new-instance v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract getCandidates()Ljava/util/List;
.end method

.method public abstract getDefaultKey()Ljava/lang/String;
.end method

.method public abstract getPreferenceScreenResId()I
.end method

.method public getRadioButtonPreferenceCustomLayoutResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final mayCheckOnlyRadioButton()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    instance-of v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "for_work"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const-string v0, "RadioButtonPckrFrgmt"

    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPreferenceScreenResId()I

    move-result p2

    const/16 v1, 0x401

    invoke-static {p1, p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "staticPreferenceLocation"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mAppendStaticPreferences:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string p2, "Error parsing xml"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string p2, "Error trying to open xml file"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    return-void
.end method

.method public onRadioButtonConfirmed(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->setDefaultKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCheckedState$2(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onSelectionPerformed(Z)V

    return-void
.end method

.method public onSelectionPerformed(Z)V
    .locals 0

    return-void
.end method

.method public abstract setDefaultKey(Ljava/lang/String;)Z
.end method

.method public shouldShowItemNone()Z
    .locals 0

    instance-of p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    return p0
.end method

.method public updateCandidates()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getCandidates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/CandidateInfo;

    iget-object v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationId:I

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->addIllustration(Landroidx/preference/PreferenceScreen;)V

    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mAppendStaticPreferences:Z

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->addStaticPreferences(Landroidx/preference/PreferenceScreen;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getRadioButtonPreferenceCustomLayoutResId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->shouldShowItemNone()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    if-lez v3, :cond_3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_3
    const v5, 0x7f140383

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput-object p0, v4, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_4
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/widget/CandidateInfo;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->createPreference()Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    move-result-object v5

    if-lez v3, :cond_5

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_5
    invoke-virtual {v4}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v4, v1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v4, v1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->mayCheckOnlyRadioButton()V

    iget-boolean v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mAppendStaticPreferences:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->addStaticPreferences(Landroidx/preference/PreferenceScreen;)V

    :cond_7
    return-void
.end method

.method public final updateCheckedState$2(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iget-boolean v5, v3, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eq v5, v4, :cond_0

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
