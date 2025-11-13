.class public final Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$Parent;


# instance fields
.field public final mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

.field public final mViews:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

    return-void
.end method
