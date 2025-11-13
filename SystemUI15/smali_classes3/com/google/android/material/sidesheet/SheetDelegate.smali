.class public abstract Lcom/google/android/material/sidesheet/SheetDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calculateInnerMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method public abstract calculateSlideOffset(I)F
.end method

.method public abstract getCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method public abstract getExpandedOffset()I
.end method

.method public abstract getHiddenOffset()I
.end method

.method public abstract getMaxViewPositionHorizontal()I
.end method

.method public abstract getMinViewPositionHorizontal()I
.end method

.method public abstract getOuterEdge(Landroid/view/View;)I
.end method

.method public abstract getParentInnerEdge(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
.end method

.method public abstract getSheetEdge()I
.end method

.method public abstract isExpandingOutwards(F)Z
.end method

.method public abstract isReleasedCloseToInnerEdge(Landroid/view/View;)Z
.end method

.method public abstract isSwipeSignificant(FF)Z
.end method

.method public abstract shouldHide(FLandroid/view/View;)Z
.end method

.method public abstract updateCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;I)V
.end method

.method public abstract updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
.end method
