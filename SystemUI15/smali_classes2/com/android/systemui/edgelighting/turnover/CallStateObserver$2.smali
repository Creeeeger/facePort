.class public final Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    iget v1, v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mState:I

    if-eq p1, v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mHandler:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    iput p1, v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mState:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method
