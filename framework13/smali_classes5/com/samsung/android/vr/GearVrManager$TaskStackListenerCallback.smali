.class final Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;
.super Landroid/app/TaskStackListener;
.source "GearVrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/GearVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskStackListenerCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/vr/GearVrManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/vr/GearVrManager;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/vr/GearVrManager;Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;-><init>(Lcom/samsung/android/vr/GearVrManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 750
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$mhandleTaskCreated(Lcom/samsung/android/vr/GearVrManager;ILandroid/content/ComponentName;)V

    .line 751
    return-void
.end method

.method public blacklist onTaskDisplayChanged(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "newDisplayId"    # I

    .line 775
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$mhandleTaskDisplayChanged(Lcom/samsung/android/vr/GearVrManager;II)V

    .line 776
    return-void
.end method

.method public blacklist onTaskFocusChanged(IZ)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 770
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$mhandleTaskFocusChanged(Lcom/samsung/android/vr/GearVrManager;IZ)V

    .line 771
    return-void
.end method

.method public blacklist onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 765
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$mhandleTaskMoveToFront(Lcom/samsung/android/vr/GearVrManager;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 766
    return-void
.end method

.method public blacklist onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 755
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$mhandleTaskRemovalStarted(Lcom/samsung/android/vr/GearVrManager;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 756
    return-void
.end method

.method public blacklist onTaskRemoved(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 760
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$mhandleTaskRemoved(Lcom/samsung/android/vr/GearVrManager;I)V

    .line 761
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskStackListenerCallback[packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v1}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$fgetmContext(Lcom/samsung/android/vr/GearVrManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
