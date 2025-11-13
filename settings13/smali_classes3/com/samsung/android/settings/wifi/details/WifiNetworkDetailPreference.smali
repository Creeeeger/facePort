.class public Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;
.super Landroidx/preference/Preference;
.source "WifiNetworkDetailPreference.java"


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIcon:Landroid/widget/ImageView;

.field private mLocation:I

.field private mSummary:Landroid/widget/TextView;

.field private mSummaryText:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    .line 46
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mTitleText:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mSummaryText:Ljava/lang/String;

    const/4 p2, 0x1

    .line 48
    iput p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mLocation:I

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mContext:Landroid/content/Context;

    .line 53
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_detail_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 79
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 80
    sget v0, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mIcon:Landroid/widget/ImageView;

    .line 81
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mTitle:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mSummary:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mSummaryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget v0, Lcom/android/settings/R$id;->detail_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mContainer:Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v1

    .line 91
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    .line 92
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 93
    iget v4, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mLocation:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 94
    sget v4, Lcom/android/settings/R$dimen;->wifi_network_detail_top_bottom_padding:I

    .line 95
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v6, Lcom/android/settings/R$dimen;->wifi_network_detail_gap_padding:I

    .line 97
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 94
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 99
    sget v4, Lcom/android/settings/R$dimen;->wifi_network_detail_top_bottom_padding:I

    .line 102
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 99
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 104
    sget v4, Lcom/android/settings/R$dimen;->wifi_network_detail_top_bottom_padding:I

    .line 105
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 107
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 104
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 109
    :cond_2
    sget v4, Lcom/android/settings/R$dimen;->wifi_network_detail_gap_padding:I

    .line 112
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 109
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 118
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLocation(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mLocation:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mSummaryText:Ljava/lang/String;

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->mTitleText:Ljava/lang/String;

    :cond_0
    return-void
.end method
