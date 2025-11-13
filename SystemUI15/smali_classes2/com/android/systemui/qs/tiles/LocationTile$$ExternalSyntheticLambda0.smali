.class public final synthetic Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/LocationTile;

.field public final synthetic f$1:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/animation/Expandable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/animation/Expandable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/LocationTile;->handleClick(Lcom/android/systemui/animation/Expandable;)V

    return-void
.end method
