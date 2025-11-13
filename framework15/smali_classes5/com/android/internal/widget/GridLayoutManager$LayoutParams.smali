.class public Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
.super Lcom/android/internal/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final blacklist INVALID_SPAN_ID:I = -0x1


# instance fields
.field blacklist mSpanIndex:I

.field blacklist mSpanSize:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method


# virtual methods
.method public blacklist getSpanIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public blacklist getSpanSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method
