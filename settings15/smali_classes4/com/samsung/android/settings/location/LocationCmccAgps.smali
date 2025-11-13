.class public Lcom/samsung/android/settings/location/LocationCmccAgps;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    new-instance p0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d07eb

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;

    const v2, 0x7f1402c2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "agps_mode_home_network"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;

    const v2, 0x7f1402c1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "agps_mode_all_network"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;

    const v2, 0x7f1402c0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v2, "agps_mode_off"

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationCmccAgps;->mContentResolver:Landroid/content/ContentResolver;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/location/LocationCmccAgps;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public final getDefaultKey()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

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

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f0d07ea

    return p0
.end method

.method public final setDefaultKey(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const-string v2, "agps_function_switch"

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "agps_mode_all_network"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "agps_mode_off"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "agps_mode_home_network"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v1

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
