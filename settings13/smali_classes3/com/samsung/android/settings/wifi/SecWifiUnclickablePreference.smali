.class public Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;
.super Landroidx/preference/SecPreference;
.source "SecWifiUnclickablePreference.java"


# instance fields
.field private mTitleColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    sget p2, Lcom/android/settings/R$color;->sec_wifi_preference_error_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;->mTitleColor:I

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;->initView()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 45
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_preference_unclickable_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 56
    sget v0, Lcom/android/settings/R$id;->textView1:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    sget v2, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 59
    iget v2, p0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;->mTitleColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget v2, p0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;->mTitleColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0x8

    .line 67
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p0, 0x0

    .line 68
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/samsung/android/settings/wifi/SecWifiUnclickablePreference;->mTitleColor:I

    return-void
.end method
