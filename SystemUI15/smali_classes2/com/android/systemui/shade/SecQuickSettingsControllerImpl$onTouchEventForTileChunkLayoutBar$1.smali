.class public final Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$onTouchEventForTileChunkLayoutBar$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$onTouchEventForTileChunkLayoutBar$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$onTouchEventForTileChunkLayoutBar$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->touchAboveFalsingThresholdConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
