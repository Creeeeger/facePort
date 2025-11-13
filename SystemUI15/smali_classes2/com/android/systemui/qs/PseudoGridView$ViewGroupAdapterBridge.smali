.class public final Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
.super Landroid/database/DataSetObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAdapter:Landroid/widget/BaseAdapter;

.field public mReleased:Z

.field public final mViewGroup:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V
    .locals 1

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mViewGroup:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    invoke-virtual {p2, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->refresh()V

    return-void
.end method

.method public static link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;-><init>(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->refresh()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    iget-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public final refresh()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mViewGroup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    iget-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    if-ge v5, v3, :cond_5

    if-ge v5, v2, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v5, v6, v0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    if-nez v6, :cond_4

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    if-eq v6, v7, :cond_6

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v0, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
