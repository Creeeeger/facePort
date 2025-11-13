.class public final Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mInteractionType:I

.field public final mIsFalse:Z

.field public final mRecentMotionEvents:Ljava/util/List;


# direct methods
.method public constructor <init>(ZILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->mIsFalse:Z

    iput p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->mInteractionType:I

    iput-object p3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->mRecentMotionEvents:Ljava/util/List;

    return-void
.end method
