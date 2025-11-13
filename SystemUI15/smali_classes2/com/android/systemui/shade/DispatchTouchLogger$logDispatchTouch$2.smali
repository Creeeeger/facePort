.class final Lcom/android/systemui/shade/DispatchTouchLogger$logDispatchTouch$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shade/DispatchTouchLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/DispatchTouchLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/DispatchTouchLogger$logDispatchTouch$2;->this$0:Lcom/android/systemui/shade/DispatchTouchLogger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getStr1()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/shade/DispatchTouchLogger$logDispatchTouch$2;->this$0:Lcom/android/systemui/shade/DispatchTouchLogger;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_5

    const/4 p0, 0x1

    if-eq v1, p0, :cond_4

    const/4 p0, 0x2

    if-eq v1, p0, :cond_3

    const/4 p0, 0x3

    if-eq v1, p0, :cond_2

    const/4 p0, 0x5

    if-eq v1, p0, :cond_1

    const/4 p0, 0x6

    if-eq v1, p0, :cond_0

    const-string p0, "OTHER"

    goto :goto_0

    :cond_0
    const-string p0, "POINTER_UP"

    goto :goto_0

    :cond_1
    const-string p0, "POINTER_DOWN"

    goto :goto_0

    :cond_2
    const-string p0, "CANCEL"

    goto :goto_0

    :cond_3
    const-string p0, "MOVE"

    goto :goto_0

    :cond_4
    const-string p0, "UP"

    goto :goto_0

    :cond_5
    const-string p0, "DOWN"

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLong1()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool1()Z

    move-result p1

    const-string v3, "Touch: view="

    const-string v4, ", type="

    const-string v5, ", downtime="

    invoke-static {v3, v0, v4, p0, v5}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", result="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
