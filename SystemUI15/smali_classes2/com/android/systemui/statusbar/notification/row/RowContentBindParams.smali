.class public final Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContentViews:I

.field public mDirtyContentViews:I

.field public mUseIncreasedHeadsUpHeight:Z

.field public mUseIncreasedHeight:Z

.field public mUseMinimized:Z

.field public mViewsNeedReinflation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    return-void
.end method


# virtual methods
.method public final markContentViewsFreeable(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    and-int/2addr p1, v0

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    return-void
.end method

.method public final requireContentViews(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    not-int v1, v0

    and-int/2addr p1, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseMinimized:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeight:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mViewsNeedReinflation:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "RowContentBindParams[mContentViews=%x mDirtyContentViews=%x mUseMinimized=%b mUseIncreasedHeight=%b mUseIncreasedHeadsUpHeight=%b mViewsNeedReinflation=%b]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
