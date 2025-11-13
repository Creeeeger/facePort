.class public final Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    iget-object v0, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/InputMonitorCompat;->dispose()V

    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :cond_1
    new-instance p1, Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const-string v1, "SearcleTip"

    invoke-direct {p1, v1, v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventListener:Lcom/android/systemui/searcle/SearcleTipPopup$inputEventListener$1;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :cond_2
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    iget-object v0, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/InputMonitorCompat;->dispose()V

    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :cond_1
    return-void
.end method
