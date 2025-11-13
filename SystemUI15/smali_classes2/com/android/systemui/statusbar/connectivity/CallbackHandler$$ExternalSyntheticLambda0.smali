.class public final synthetic Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
