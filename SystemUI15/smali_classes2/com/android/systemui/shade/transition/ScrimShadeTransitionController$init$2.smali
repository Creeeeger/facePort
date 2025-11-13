.class public final synthetic Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$2;->$tmp0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$2;->$tmp0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    iget-object p2, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->currentPanelState:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionFraction:Ljava/lang/Float;

    iget-object p0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n                ScrimShadeTransitionController:\n                  State:\n                    currentPanelState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n                    lastExpansionFraction: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n                    lastExpansionEvent: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n            "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
