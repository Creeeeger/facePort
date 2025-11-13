.class public Lcom/samsung/android/settings/usefulfeature/AppGridView;
.super Landroidx/apppickerview/widget/AppPickerView;
.source "AppGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGridItemDecoration:Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;

.field private mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mSpanCount:I

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$_AwehVplqx1NR5N36VK-U3rgIuw(Lcom/samsung/android/settings/usefulfeature/AppGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/AppGridView;->lambda$draw$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/usefulfeature/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/apppickerview/widget/AppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x4

    .line 38
    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mSpanCount:I

    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/AppGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$draw$0()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI()V

    return-void
.end method


# virtual methods
.method public calculateNoOfColumns(I)I
    .locals 1

    .line 89
    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mWidth:I

    div-int v0, p1, p0

    mul-int/2addr p0, v0

    sub-int/2addr p1, p0

    mul-int/lit8 p0, v0, 0x2

    .line 91
    div-int/2addr p1, p0

    const/16 p0, 0xf

    if-ge p1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public draw(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/AppGridView;->removeItemDecoration(I)V

    .line 72
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mSpanCount:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;-><init>(Lcom/samsung/android/settings/usefulfeature/AppGridView;IIZ)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mGridItemDecoration:Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;

    .line 73
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mSpanCount:I

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 74
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mGridItemDecoration:Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/AppGridView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/AppGridView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/AppGridView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->appshortcutview_column_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mWidth:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 61
    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mWidth:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/AppGridView;->calculateNoOfColumns(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 63
    iget p2, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mSpanCount:I

    if-eq p2, p1, :cond_0

    .line 64
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mSpanCount:I

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/AppGridView;->draw(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public removeItemDecoration(I)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_0
    return-void
.end method
