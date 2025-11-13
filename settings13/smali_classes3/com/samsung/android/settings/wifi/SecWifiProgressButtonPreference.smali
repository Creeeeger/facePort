.class public Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;
.super Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;
.source "SecWifiProgressButtonPreference.java"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_progress_button_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->initPreference(Landroidx/preference/PreferenceViewHolder;)V

    .line 70
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->mEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setAlphaWithText(Z)V

    return-void
.end method

.method public performClick()V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 58
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->mEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressVisible:Z

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
