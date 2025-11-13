.class public final Lcom/android/systemui/statusbar/window/StatusBarWindowStateController$commandQueueCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController$commandQueueCallback$1;->this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setWindowState(III)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController$commandQueueCallback$1;->this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->thisDisplayId:I

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    iput p3, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/window/StatusBarWindowStateListener;

    invoke-interface {p1, p3}, Lcom/android/systemui/statusbar/window/StatusBarWindowStateListener;->onStatusBarWindowStateChanged(I)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
