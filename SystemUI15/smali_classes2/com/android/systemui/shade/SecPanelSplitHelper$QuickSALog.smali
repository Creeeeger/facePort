.class public final Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public isDone:Z

.field public final panelSAStatusLogInteractor$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog$panelSAStatusLogInteractor$2;->INSTANCE:Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog$panelSAStatusLogInteractor$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;->panelSAStatusLogInteractor$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;->isDone:Z

    return-void
.end method
