.class public abstract Lcom/android/internal/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field public static final blacklist HORIZONTAL:I = 0x0

.field private static final blacklist INVALID_SIZE:I = -0x80000000

.field public static final blacklist VERTICAL:I = 0x1


# instance fields
.field private blacklist mLastTotalSpace:I

.field protected final blacklist mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

.field final blacklist mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/OrientationHelper;->mLastTotalSpace:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/internal/widget/OrientationHelper;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/OrientationHelper;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static blacklist createHorizontalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OrientationHelper$1;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static blacklist createOrientationHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;I)Lcom/android/internal/widget/OrientationHelper;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/widget/OrientationHelper;->createVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/widget/OrientationHelper;->createHorizontalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist createVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OrientationHelper$2;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract blacklist getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract blacklist getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract blacklist getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract blacklist getEnd()I
.end method

.method public abstract blacklist getEndAfterPadding()I
.end method

.method public abstract blacklist getEndPadding()I
.end method

.method public abstract blacklist getMode()I
.end method

.method public abstract blacklist getModeInOther()I
.end method

.method public abstract blacklist getStartAfterPadding()I
.end method

.method public abstract blacklist getTotalSpace()I
.end method

.method public blacklist getTotalSpaceChange()I
    .locals 2

    const/high16 v0, -0x80000000

    iget v1, p0, Lcom/android/internal/widget/OrientationHelper;->mLastTotalSpace:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public abstract blacklist getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract blacklist getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract blacklist offsetChild(Landroid/view/View;I)V
.end method

.method public abstract blacklist offsetChildren(I)V
.end method

.method public blacklist onLayoutComplete()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/OrientationHelper;->mLastTotalSpace:I

    return-void
.end method
