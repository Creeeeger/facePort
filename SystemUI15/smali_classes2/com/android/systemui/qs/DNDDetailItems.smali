.class public Lcom/android/systemui/qs/DNDDetailItems;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

.field public mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

.field public mItemList:Lcom/android/systemui/qs/AutoSizingList;

.field public final mItemVisible:[I

.field public mItems:[Lcom/android/systemui/qs/DNDDetailItems$Item;

.field public mItemsVisible:Z

.field public mSelectedMenu:Ljava/lang/String;

.field public mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/qs/DNDDetailItems$H;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/DNDDetailItems$H;-><init>(Lcom/android/systemui/qs/DNDDetailItems;)V

    iput-object p2, p0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    new-instance p2, Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/DNDDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/DNDDetailItems;I)V

    iput-object p2, p0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemsVisible:Z

    const/4 p2, 0x6

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemVisible:[I

    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mContext:Landroid/content/Context;

    const-string p1, "DNDDetailItems"

    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mTag:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
    .end array-data
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mTag:Ljava/lang/String;

    const-string v0, "onAttachedToWindow"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/AutoSizingList;

    iput-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/AutoSizingList;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final updateQSPanelOptions(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemVisible:[I

    const/4 v0, 0x2

    aput p1, p0, v0

    const/4 v0, 0x1

    aput p1, p0, v0

    const/4 v1, 0x4

    aput p1, p0, v1

    const/4 v1, 0x3

    aput p1, p0, v1

    const/4 v1, 0x5

    sub-int/2addr v0, p1

    aput v0, p0, v1

    return-void
.end method
