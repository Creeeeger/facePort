.class public Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;
.super Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0a90

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->initPreference(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->mEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public final performClick()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->mEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressVisible:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
