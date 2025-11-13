.class public final Lcom/android/wm/shell/bubbles/BubbleController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final synthetic val$organizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final synthetic val$syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final synthetic val$taskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$organizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$taskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    iput-object p5, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p6, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
