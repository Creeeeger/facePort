.class public final synthetic Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSDetailController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSDetailController;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;Lcom/android/systemui/qs/SecQSDetailController;)V

    return-object v0
.end method
