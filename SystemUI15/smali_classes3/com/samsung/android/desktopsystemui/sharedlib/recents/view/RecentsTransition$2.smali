.class Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic val$animationStartCallback:Ljava/lang/Runnable;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$2;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$2;->val$animationStartCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$2;->val$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/RecentsTransition$2;->val$animationStartCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
