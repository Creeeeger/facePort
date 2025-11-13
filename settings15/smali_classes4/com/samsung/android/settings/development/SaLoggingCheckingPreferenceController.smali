.class public final Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListSummaries:[Ljava/lang/String;

.field public final mListValues:[Ljava/lang/String;

.field public mSelectedCheckType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mListSummaries:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "sa_logging_check_state"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mSelectedCheckType:I

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "sa_logging_checking"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v0, "user"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onDeveloperOptionsSwitchDisabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    iget-object p0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sa_logging_check_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "sa_logging_check_state"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->updateSaLoggingValues(Landroidx/preference/ListPreference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateSaLoggingValues(Landroidx/preference/ListPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sa_logging_check_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mSelectedCheckType:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crom updateSaLoggingValues : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mSelectedCheckType:I

    const-string v2, "com.samsung.android.settings.development.SaLoggingCheckingPreferenceController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mListValues:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mSelectedCheckType:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mListSummaries:[Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mSelectedCheckType:I

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->updateSaLoggingValues(Landroidx/preference/ListPreference;)V

    return-void
.end method
