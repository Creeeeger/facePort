.class public final Lcom/android/wm/shell/compatui/api/CompatUIInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final listener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

.field public final taskInfo:Landroid/app/TaskInfo;


# direct methods
.method public constructor <init>(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->taskInfo:Landroid/app/TaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->listener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/compatui/api/CompatUIInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/compatui/api/CompatUIInfo;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->taskInfo:Landroid/app/TaskInfo;

    iget-object v3, p1, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->taskInfo:Landroid/app/TaskInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->listener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->listener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->taskInfo:Landroid/app/TaskInfo;

    invoke-virtual {v0}, Landroid/app/TaskInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->listener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->taskInfo:Landroid/app/TaskInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CompatUIInfo(taskInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", listener="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->listener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
