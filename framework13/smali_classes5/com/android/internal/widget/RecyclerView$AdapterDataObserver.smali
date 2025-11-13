.class public abstract Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdapterDataObserver"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onChanged()V
    .locals 0

    .line 10717
    return-void
.end method

.method public blacklist onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 10721
    return-void
.end method

.method public blacklist onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 10726
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 10727
    return-void
.end method

.method public blacklist onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 10731
    return-void
.end method

.method public blacklist onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 10739
    return-void
.end method

.method public blacklist onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 10735
    return-void
.end method
