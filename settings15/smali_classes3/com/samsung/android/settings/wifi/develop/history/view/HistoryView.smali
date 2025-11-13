.class public Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDomainAxisFormat:Ljava/text/Format;

.field public final mDomainAxisLabels:[Landroid/widget/TextView;

.field public mDomainAxisValues:[Ljava/lang/Object;

.field public final mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

.field public final mLegend1:Landroid/widget/TextView;

.field public final mLegend2:Landroid/widget/TextView;

.field public mMaxDomainValue:J

.field public final mValueAxisLabels:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0c23

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a1193

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/widget/TextView;

    const v0, 0x7f0a119a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f0a1198

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const v0, 0x7f0a1195

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v0, p2, v3

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mValueAxisLabels:[Landroid/widget/TextView;

    new-array p2, v3, [Landroid/widget/TextView;

    const v0, 0x7f0a1199

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p2, v1

    const v0, 0x7f0a1196

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p2, v2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    const p2, 0x7f0a119b

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend1:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f0a119c

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend2:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;)V

    iput-object p2, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mChartListener:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;

    return-void
.end method


# virtual methods
.method public final clearPaths()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final setValueAxisLabels([Ljava/lang/CharSequence;)V
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mValueAxisLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mValueAxisLabels:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid number of labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
