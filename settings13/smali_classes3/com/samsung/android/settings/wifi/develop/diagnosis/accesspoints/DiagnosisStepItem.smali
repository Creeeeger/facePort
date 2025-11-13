.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;
.super Landroid/widget/LinearLayout;
.source "DiagnosisStepItem.java"


# instance fields
.field private isSummaryVisible:Z

.field private mSummary:Landroid/widget/TextView;

.field private mTimestamp:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mViewMore:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$2myf6Z5jP11pvX8_NJ6Ikyz8bw0(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 37
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->isSummaryVisible:Z

    .line 41
    iput-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->isSummaryVisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->isSummaryVisible:Z

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mSummary:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->isSummaryVisible:Z

    .line 57
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mTitle:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/android/settings/R$id;->time:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mTimestamp:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mSummary:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/android/settings/R$id;->view_more:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mViewMore:Landroid/widget/ImageView;

    .line 51
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mTimestamp:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getTime()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
