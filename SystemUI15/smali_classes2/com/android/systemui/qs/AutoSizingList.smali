.class public Lcom/android/systemui/qs/AutoSizingList;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public final mBindChildren:Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;

.field public mCount:I

.field public final mDataObserver:Lcom/android/systemui/qs/AutoSizingList$1;

.field public final mEnableAutoSizing:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mItemSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/AutoSizingList;)V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/AutoSizingList$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/AutoSizingList$1;-><init>(Lcom/android/systemui/qs/AutoSizingList;)V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Lcom/android/systemui/qs/AutoSizingList$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/res/R$styleable;->AutoSizingList:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mItemSize:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/qs/AutoSizingList;->mEnableAutoSizing:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/AutoSizingList;->mEnableAutoSizing:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/AutoSizingList;->mItemSize:I

    div-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Lcom/android/systemui/qs/AutoSizingList$1;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Lcom/android/systemui/qs/AutoSizingList$1;

    invoke-interface {p1, p0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method
