.class public final Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onCrossWindowDrop$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/GlobalDragListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/GlobalDragListener;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onCrossWindowDrop$1;->this$0:Lcom/android/wm/shell/draganddrop/GlobalDragListener;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onCrossWindowDrop$1;->$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onCrossWindowDrop$1;->this$0:Lcom/android/wm/shell/draganddrop/GlobalDragListener;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onCrossWindowDrop$1;->$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->onCrossWindowDrop(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
