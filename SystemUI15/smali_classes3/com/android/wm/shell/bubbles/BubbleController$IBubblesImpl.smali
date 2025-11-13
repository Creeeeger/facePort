.class public final Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;
.super Lcom/android/wm/shell/bubbles/IBubbles$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field public final mBubbleListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

.field public mController:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 3

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/IBubbles$Stub;-><init>()V

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mBubbleListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    new-instance p1, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda24;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda24;-><init>(I)V

    invoke-direct {p1, p2, v0, v1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    return-void
.end method
