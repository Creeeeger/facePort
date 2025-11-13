.class public final Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;->this$0:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;->this$0:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    :cond_0
    return-void
.end method
