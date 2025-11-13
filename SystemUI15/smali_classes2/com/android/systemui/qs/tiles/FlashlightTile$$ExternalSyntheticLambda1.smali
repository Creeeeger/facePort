.class public final synthetic Lcom/android/systemui/qs/tiles/FlashlightTile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/FlashlightTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->finishFlashLightActivity()V

    return-void
.end method
