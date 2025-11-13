.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;
.super Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field public mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field public final mSelectListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field public final mSplitScreenListener:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;

.field public final mSplitSelectListener:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$2;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;-><init>()V

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mSplitSelectListener:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$2;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;I)V

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;I)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;I)V

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;I)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mSelectListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mSelectListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    return-void
.end method
