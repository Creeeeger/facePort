.class public final Lcom/android/systemui/notetask/NoteTaskInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final entryPoint:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

.field public final isKeyguardLocked:Z

.field public final launchMode:Lcom/android/systemui/notetask/NoteTaskLaunchMode;

.field public final packageName:Ljava/lang/String;

.field public final uid:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/systemui/notetask/NoteTaskEntryPoint;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->uid:I

    iput-object p3, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->user:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->entryPoint:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    iput-boolean p5, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->isKeyguardLocked:Z

    if-nez p5, :cond_1

    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->WIDGET_PICKER_SHORTCUT_IN_MULTI_WINDOW_MODE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskLaunchMode$AppBubble;->INSTANCE:Lcom/android/systemui/notetask/NoteTaskLaunchMode$AppBubble;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskLaunchMode$Activity;->INSTANCE:Lcom/android/systemui/notetask/NoteTaskLaunchMode$Activity;

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->launchMode:Lcom/android/systemui/notetask/NoteTaskLaunchMode;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/systemui/notetask/NoteTaskEntryPoint;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/notetask/NoteTaskInfo;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/systemui/notetask/NoteTaskEntryPoint;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/notetask/NoteTaskInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/notetask/NoteTaskInfo;

    iget-object v1, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->uid:I

    iget v3, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->uid:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->user:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->user:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->entryPoint:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    iget-object v3, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->entryPoint:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->isKeyguardLocked:Z

    iget-boolean p1, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->isKeyguardLocked:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->uid:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->entryPoint:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->isKeyguardLocked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->user:Landroid/os/UserHandle;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoteTaskInfo(packageName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", entryPoint="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->entryPoint:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isKeyguardLocked="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/notetask/NoteTaskInfo;->isKeyguardLocked:Z

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
