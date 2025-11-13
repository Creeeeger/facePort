.class public final synthetic Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v2, -0x3ab673e92208c930L    # -6.176939724129994E25

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    :cond_1
    return-void
.end method
