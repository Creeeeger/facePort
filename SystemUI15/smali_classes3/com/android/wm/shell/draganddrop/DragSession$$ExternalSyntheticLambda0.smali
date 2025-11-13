.class public final synthetic Lcom/android/wm/shell/draganddrop/DragSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/DragSession;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragSession;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/DragSession;

    iput-boolean p2, p0, Lcom/android/wm/shell/draganddrop/DragSession$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DragSession$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p1, v0, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return v2
.end method
