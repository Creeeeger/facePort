.class public final Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final commandName:Ljava/lang/String;

.field public final deviceName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public showUndo:Z

.field public useAppIcon:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->deviceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->commandName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->id:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->useAppIcon:Z

    iput-boolean p5, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->showUndo:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-string p3, "id"

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    const/4 p7, 0x1

    if-eqz p3, :cond_1

    move v4, p7

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move v5, p7

    goto :goto_1

    :cond_2
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;

    iget-object v1, p1, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->deviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->deviceName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->commandName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->commandName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->useAppIcon:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->useAppIcon:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->showUndo:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->showUndo:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->commandName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->useAppIcon:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->showUndo:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->id:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->useAppIcon:Z

    iget-boolean v2, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->showUndo:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SenderArgs(deviceName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", commandName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->commandName:Ljava/lang/String;

    const-string v4, ", id="

    const-string v5, ", useAppIcon="

    invoke-static {v3, p0, v4, v0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", showUndo="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
