.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;
.super Landroid/widget/LinearLayout;
.source "NetworkDiagnosisItem.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 27
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mTitle:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mSummary:Landroid/widget/TextView;

    return-void
.end method

.method public setSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mSummary:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mSummary:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSummary(Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTextColor()V
    .locals 2

    .line 47
    sget v0, Lcom/android/settings/R$color;->sec_wifi_preference_title_color:I

    .line 48
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
