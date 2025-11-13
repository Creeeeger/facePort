.class public Lcom/android/wm/shell/WindowManagerShellWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mPinnedStackListenerForwarder:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v0, p0, Lcom/android/wm/shell/WindowManagerShellWrapper;->mPinnedStackListenerForwarder:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    return-void
.end method
