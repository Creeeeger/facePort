.class public final Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mStateListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

    if-eqz p0, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onRingingEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onRinging()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    :cond_2
    :goto_0
    return-void
.end method
