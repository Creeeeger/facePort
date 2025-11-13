.class public Lcom/samsung/android/settings/location/LocationCmccAgps;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "LocationCmccAgps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationCmccAgps;->mContentResolver:Landroid/content/ContentResolver;

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/location/LocationCmccAgps;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 52
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->sec_agps_function_switch_note:I

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/location/LocationCmccAgps;->configureAndInstallNote(Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method configureAndInstallNote(Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    const/4 p0, 0x0

    .line 46
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 47
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v1, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;

    sget v2, Lcom/android/settings/R$string;->agps_on_for_home_network:I

    .line 63
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "agps_mode_home_network"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;

    sget v2, Lcom/android/settings/R$string;->agps_on_for_all_network:I

    .line 67
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "agps_mode_all_network"

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;

    sget v2, Lcom/android/settings/R$string;->agps_off:I

    .line 71
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v2, "agps_mode_off"

    invoke-direct {v1, p0, v2, v4}, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "agps_function_switch"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "agps_mode_home_network"

    return-object p0

    :cond_0
    const-string p0, "agps_mode_off"

    return-object p0

    :cond_1
    const-string p0, "agps_mode_all_network"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 42
    sget p0, Lcom/android/settings/R$layout;->sec_agps_function_switch_list:I

    return p0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 4

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "agps_mode_all_network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "agps_mode_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "agps_mode_home_network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const-string p1, "agps_function_switch"

    packed-switch v3, :pswitch_data_0

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 98
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 101
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 95
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x3ddc0e2c -> :sswitch_2
        0x39a4c3a9 -> :sswitch_1
        0x60a185ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
