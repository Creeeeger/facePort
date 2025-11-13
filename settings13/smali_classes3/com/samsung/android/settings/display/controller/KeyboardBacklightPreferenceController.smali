.class public Lcom/samsung/android/settings/display/controller/KeyboardBacklightPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "KeyboardBacklightPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Landroidx/preference/SecPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "key_backlight"

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;)V

    return-void
.end method

.method private updateBackKeyLightSummary()V
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->key_backlight_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->key_backlight_entries:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "key_backlight_timeout"

    const/16 v4, 0xbb8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    array-length v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v1, v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 87
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 88
    aget-object v5, v0, v4

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    aget-object v3, v1, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 93
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/KeyboardBacklightPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "key_backlight"

    .line 48
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/KeyboardBacklightPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_backlight"

    return-object p0
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "key_backlight_timeout"

    .line 55
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isFolderModel(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/KeyboardBacklightPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/KeyboardBacklightPreferenceController;->updateBackKeyLightSummary()V

    return-void
.end method
