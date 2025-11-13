.class public final Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public final mContext:Landroid/content/Context;

.field public final mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

.field public final mListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

.field public final mParentView:Landroid/view/View;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mTaskId:I

.field public mTaskView:Lcom/android/wm/shell/taskview/TaskView;

.field public final mTaskViewListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;Lcom/android/wm/shell/bubbles/BubbleTaskView;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

    iput-object p5, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mParentView:Landroid/view/View;

    iget-object p1, p4, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    iput-object v0, p4, Lcom/android/wm/shell/bubbles/BubbleTaskView;->delegateListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    iget-boolean p1, p4, Lcom/android/wm/shell/bubbles/BubbleTaskView;->isCreated:Z

    if-eqz p1, :cond_0

    iget p1, p4, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskId:I

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    check-cast p3, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {p3}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->onTaskCreated()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getBubbleKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
