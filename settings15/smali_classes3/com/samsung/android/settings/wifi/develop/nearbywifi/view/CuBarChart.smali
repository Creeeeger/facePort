.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mBand:I

.field public mBandInfo:Landroid/widget/TextView;

.field public mBarShapeResId:I

.field public mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

.field public mCuInfoList:Ljava/util/List;

.field public mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string p1, "NearbyWifi.CuBarChart"

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->init$24()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "NearbyWifi.CuBarChart"

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->init$24()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "NearbyWifi.CuBarChart"

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->init$24()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "NearbyWifi.CuBarChart"

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->init$24()V

    return-void
.end method


# virtual methods
.method public final init$24()V
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v0, 0x7f0d0a6a

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a02f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBandInfo:Landroid/widget/TextView;

    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBand:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1434e3    # 1.9700035E38f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1434e2    # 1.9700033E38f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f1434e1    # 1.970003E38f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBandInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->updateChartItem()V

    return-void
.end method

.method public final updateChartItem()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->isYaxis:Z

    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->setHeight(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuBar:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    const v3, 0x7f1434e7    # 1.9700043E38f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mFreq:Landroid/widget/TextView;

    const v4, 0x7f1434eb    # 1.970005E38f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mFreq:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuValue:Landroid/widget/TextView;

    const-string v4, "100%"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuValue:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mCuInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;

    new-instance v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;-><init>(Landroid/content/Context;)V

    iget v4, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->channel:I

    iget v5, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->cu:I

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->setHeight(I)V

    iget-object v6, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mFreq:Landroid/widget/TextView;

    iget v2, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuValue:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x50

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBarShapeResId:I

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuBar:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final updateChartItem(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    const-string p1, "mChartLayout is null, so cannot update chart items."

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mCuInfoList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->updateChartItem()V

    return-void
.end method
