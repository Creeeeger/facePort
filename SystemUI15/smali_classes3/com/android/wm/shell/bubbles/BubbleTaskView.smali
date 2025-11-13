.class public final Lcom/android/wm/shell/bubbles/BubbleTaskView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public delegateListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

.field public isCreated:Z

.field public final listener:Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;

.field public taskId:I

.field public final taskView:Lcom/android/wm/shell/taskview/TaskView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleTaskView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleTaskView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/taskview/TaskView;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskId:I

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleTaskView;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->listener:Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;

    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/taskview/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V

    return-void
.end method


# virtual methods
.method public final getListener()Lcom/android/wm/shell/taskview/TaskView$Listener;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->listener:Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;

    return-object p0
.end method
