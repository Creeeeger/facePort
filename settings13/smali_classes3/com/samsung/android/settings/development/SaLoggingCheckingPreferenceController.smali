.class public Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SaLoggingCheckingPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.samsung.android.settings.development.SaLoggingCheckingPreferenceController"

.field static final USER_BUILD_TYPE:Ljava/lang/String; = "user"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private mSelectedCheckType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->sa_logging_checking_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mListValues:[Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->sa_logging_checking_titles:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sa_logging_check_state"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mSelectedCheckType:I

    return-void
.end method

.method private getSaLoggingCheckState()I
    .locals 2

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sa_logging_check_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method private setSaLoggingCheckState(I)V
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sa_logging_check_state"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateSaLoggingValues(Landroidx/preference/ListPreference;)V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->getSaLoggingCheckState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mSelectedCheckType:I

    .line 99
    sget-object v0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crom updateSaLoggingValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mSelectedCheckType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mListValues:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mSelectedCheckType:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mListSummaries:[Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mSelectedCheckType:I

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getBuildType()Ljava/lang/String;
    .locals 0

    .line 117
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "sa_logging_checking"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->getBuildType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "user"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sa_logging_check_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 81
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->setSaLoggingCheckState(I)V

    .line 82
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->updateSaLoggingValues(Landroidx/preference/ListPreference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;->updateSaLoggingValues(Landroidx/preference/ListPreference;)V

    return-void
.end method
