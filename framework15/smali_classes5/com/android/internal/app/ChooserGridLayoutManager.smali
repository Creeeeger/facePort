.class public Lcom/android/internal/app/ChooserGridLayoutManager;
.super Lcom/android/internal/widget/GridLayoutManager;
.source "ChooserGridLayoutManager.java"


# instance fields
.field private blacklist mVerticalScrollEnabled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    return-void
.end method


# virtual methods
.method public blacklist canScrollVertically()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/internal/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;->getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method blacklist setVerticalScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    return-void
.end method
