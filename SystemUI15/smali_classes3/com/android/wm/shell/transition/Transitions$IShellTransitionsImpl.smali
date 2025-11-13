.class public final Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;
.super Lcom/android/wm/shell/shared/IShellTransitions$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field public mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/shared/IShellTransitions$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/wm/shell/transition/HomeTransitionObserver;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method
