.class public Lcom/android/internal/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$State$LayoutState;
    }
.end annotation


# static fields
.field static final blacklist STEP_ANIMATIONS:I = 0x4

.field static final blacklist STEP_LAYOUT:I = 0x2

.field static final blacklist STEP_START:I = 0x1


# instance fields
.field private blacklist mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mDeletedInvisibleItemCountSincePreviousLayout:I

.field blacklist mFocusedItemId:J

.field blacklist mFocusedItemPosition:I

.field blacklist mFocusedSubChildId:I

.field blacklist mInPreLayout:Z

.field blacklist mIsMeasuring:Z

.field blacklist mItemCount:I

.field blacklist mLayoutStep:I

.field blacklist mPreviousLayoutItemCount:I

.field blacklist mRunPredictiveAnimations:Z

.field blacklist mRunSimpleAnimations:Z

.field blacklist mStructureChanged:Z

.field private blacklist mTargetPosition:I

.field blacklist mTrackOldChangeHolders:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmTargetPosition(Lcom/android/internal/widget/RecyclerView$State;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method


# virtual methods
.method blacklist assertLayoutStep(I)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist didStructureChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public blacklist get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getItemCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    :goto_0
    return v0
.end method

.method public blacklist getTargetScrollPosition()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public blacklist hasTargetScrollPosition()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isMeasuring()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    return v0
.end method

.method public blacklist isPreLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method blacklist prepareForNestedPrefetch(Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    return-void
.end method

.method public blacklist put(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist remove(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method blacklist reset()Lcom/android/internal/widget/RecyclerView$State;
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist willRunPredictiveAnimations()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public blacklist willRunSimpleAnimations()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
