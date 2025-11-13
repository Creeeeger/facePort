.class public final Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final failedToLoad:Z

.field public final iconProvider:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;->iconProvider:Lkotlin/jvm/functions/Function0;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;->failedToLoad:Z

    return-void
.end method
