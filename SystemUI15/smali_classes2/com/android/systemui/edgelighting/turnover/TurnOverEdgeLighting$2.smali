.class public final Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "UpsideDownChecker: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "TurnOverEdgeLighting"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iget v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onChangedUpdown(I)V

    :cond_1
    return-void
.end method
