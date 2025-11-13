.class public final synthetic Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    check-cast p1, Ljava/lang/Boolean;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REAL: onShowingCommunalHubChanged("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onQsExpansionChanged(Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
