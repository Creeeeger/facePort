.class public final Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;


# instance fields
.field public final mDefaultDirectionalSpacing:I

.field public final mDirectionGroups:Ljava/util/HashMap;

.field public final mDirectionalMargins:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(ILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionGroups:Ljava/util/HashMap;

    iput p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDefaultDirectionalSpacing:I

    iput-object p2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionalMargins:Ljava/util/HashMap;

    return-void
.end method
