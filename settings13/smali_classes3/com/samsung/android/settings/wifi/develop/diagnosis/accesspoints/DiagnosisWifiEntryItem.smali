.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;
.super Landroid/widget/LinearLayout;
.source "DiagnosisWifiEntryItem.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSsid:Landroid/widget/TextView;

.field private mSummary:Landroid/widget/TextView;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 46
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mSsid:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mSummary:Landroid/widget/TextView;

    return-void
.end method

.method public setSummary(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTextColor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 68
    sget p1, Lcom/android/settings/R$color;->sec_highlight_text_color:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$color;->sec_wifi_preference_title_color:I

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mSsid:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mSsid:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mSsid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mSummary:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mSummary:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;->mSummary:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
