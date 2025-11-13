.class final Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shade/NPVCDownEventState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NPVCDownEventState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    sget-object v0, Lcom/android/systemui/shade/NPVCDownEventStateKt;->DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget-wide v1, v1, Lcom/android/systemui/shade/NPVCDownEventState;->timeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget v0, v0, Lcom/android/systemui/shade/NPVCDownEventState;->x:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget v0, v0, Lcom/android/systemui/shade/NPVCDownEventState;->y:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NPVCDownEventState;->qsTouchAboveFalsingThreshold:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NPVCDownEventState;->dozing:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NPVCDownEventState;->collapsed:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NPVCDownEventState;->canCollapseOnQQS:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NPVCDownEventState;->listenForHeadsUp:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NPVCDownEventState;->allowExpandForSmallExpansion:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NPVCDownEventState;->touchSlopExceededBeforeDown:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    iget-object p0, p0, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/shade/NPVCDownEventState;

    iget-boolean p0, p0, Lcom/android/systemui/shade/NPVCDownEventState;->lastEventSynthesized:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
