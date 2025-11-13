.class public final Lcom/android/systemui/qs/pipeline/data/repository/MinimumTilesResourceRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/data/repository/MinimumTilesRepository;


# instance fields
.field public final minNumberOfTiles:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b00e2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/MinimumTilesResourceRepository;->minNumberOfTiles:I

    return-void
.end method
