.class public final synthetic Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;

.field public final synthetic f$1:Lcom/android/wm/shell/common/RemoteCallable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;Lcom/android/wm/shell/common/RemoteCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;

    iput-object p2, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/common/RemoteCallable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;

    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/common/RemoteCallable;

    iget-object v0, v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;->this$0:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    iget-object v0, v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mOnUnregisterCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
