.class public Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;
.super Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;
.source "SavedAccessPointCell.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mSsid:Landroid/widget/TextView;

.field private mSummary:Landroid/widget/TextView;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mViewType:I

    return-void
.end method


# virtual methods
.method public canModifyNetwork()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getDescription(Z)Ljava/lang/String;
    .locals 3

    .line 124
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_wifi_checked_tss:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_wifi_unchecked_tss:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 129
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_wifi_checkbox_tss:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSsid:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 132
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 135
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mViewType:I

    return p0
.end method

.method public isRemovable()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->canModifyNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 111
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 54
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSsid:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSummary:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->isRemovable()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->isRemovable()Z

    move-result v0

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mCheckbox:Landroid/widget/CheckBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 90
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setSummary(Z)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTextColor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    sget p1, Lcom/android/settings/R$color;->sec_highlight_text_color:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$color;->wifi_preference_title_color:I

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSsid:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;Z)V
    .locals 2

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 61
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSsid:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance p2, Ljava/util/StringJoiner;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_summary_separator:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 75
    :cond_0
    invoke-virtual {p2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSummary:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;->mSummary:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
