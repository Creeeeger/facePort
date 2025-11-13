.class public Lcom/android/systemui/globalactions/ListGridLayout;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConfigs:[[I

.field public mCurrentCount:I

.field public mExpectedCount:I

.field public mReverseItems:Z

.field public mReverseSublists:Z

.field public mSwapRowsAndColumns:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    filled-new-array {p1, p1}, [I

    move-result-object v0

    const/4 p1, 0x1

    filled-new-array {p1, p1}, [I

    move-result-object v1

    const/4 p2, 0x2

    filled-new-array {p1, p2}, [I

    move-result-object v2

    const/4 v3, 0x3

    filled-new-array {p1, v3}, [I

    move-result-object p1

    filled-new-array {p2, p2}, [I

    move-result-object v4

    filled-new-array {p2, v3}, [I

    move-result-object v5

    filled-new-array {p2, v3}, [I

    move-result-object v6

    filled-new-array {v3, v3}, [I

    move-result-object v7

    filled-new-array {v3, v3}, [I

    move-result-object v8

    filled-new-array {v3, v3}, [I

    move-result-object v9

    move-object v3, p1

    filled-new-array/range {v0 .. v9}, [[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    return-void
.end method


# virtual methods
.method public getParentView(IZZ)Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    move-result v0

    if-eqz p3, :cond_1

    div-int/2addr p1, v0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_0

    :cond_1
    rem-int/2addr p1, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    sub-int p1, p2, p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/ListGridLayout;->getSublist(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRowCount()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mExpectedCount:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    aget-object p0, p0, v0

    :goto_0
    aget p0, p0, v1

    return p0
.end method

.method public getSublist(I)Landroid/view/ViewGroup;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method
