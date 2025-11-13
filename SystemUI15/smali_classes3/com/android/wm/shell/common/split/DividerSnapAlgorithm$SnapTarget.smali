.class public final Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final distanceMultiplier:F

.field public final position:I

.field public final snapPosition:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    iput p3, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->snapPosition:I

    iput p4, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    return-void
.end method
