.class Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public blacklist fromX:I

.field public blacklist fromY:I

.field public blacklist holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field public blacklist toX:I

.field public blacklist toY:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iput p2, p0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method
