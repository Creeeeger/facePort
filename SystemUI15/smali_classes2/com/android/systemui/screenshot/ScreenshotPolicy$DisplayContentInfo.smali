.class public final Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bounds:Landroid/graphics/Rect;

.field public final component:Landroid/content/ComponentName;

.field public final taskId:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/UserHandle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->component:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->bounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    iput p4, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->taskId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->component:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->bounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->bounds:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->taskId:I

    iget p1, p1, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->taskId:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->taskId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->component:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->bounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DisplayContentInfo(component="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bounds="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", user="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", taskId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->taskId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
