.class public final Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;
.super Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo$Companion;

.field public static final DEFAULT_ICON_TINT:I


# instance fields
.field public final allowSwipeToDismiss:Z

.field public final endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

.field public final id:Ljava/lang/String;

.field public final instanceId:Lcom/android/internal/logging/InstanceId;

.field public final priority:Lcom/android/systemui/temporarydisplay/ViewPriority;

.field public final startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

.field public final text:Lcom/android/systemui/common/shared/model/Text;

.field public final timeoutMs:I

.field public final vibrationEffect:Landroid/os/VibrationEffect;

.field public final wakeReason:Ljava/lang/String;

.field public final windowTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->Companion:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo$Companion;

    const v0, 0x11200b4

    sput v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->DEFAULT_ICON_TINT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/common/shared/model/TintedIcon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;Landroid/os/VibrationEffect;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/systemui/temporarydisplay/ViewPriority;Lcom/android/internal/logging/InstanceId;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    iput-object p3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    iput-object p4, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    iput-boolean p5, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->allowSwipeToDismiss:Z

    iput-object p6, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->windowTitle:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->wakeReason:Ljava/lang/String;

    iput p8, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    iput-object p9, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->priority:Lcom/android/systemui/temporarydisplay/ViewPriority;

    iput-object p11, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/common/shared/model/TintedIcon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;Landroid/os/VibrationEffect;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/systemui/temporarydisplay/ViewPriority;Lcom/android/internal/logging/InstanceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    and-int/lit8 v0, p12, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    :goto_0
    and-int/lit8 v0, p12, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    :cond_1
    move/from16 v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;-><init>(Lcom/android/systemui/common/shared/model/TintedIcon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;Landroid/os/VibrationEffect;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/systemui/temporarydisplay/ViewPriority;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    iget-object v1, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->allowSwipeToDismiss:Z

    iget-boolean v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->allowSwipeToDismiss:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->windowTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->windowTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->wakeReason:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->wakeReason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    iget v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->priority:Lcom/android/systemui/temporarydisplay/ViewPriority;

    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->priority:Lcom/android/systemui/temporarydisplay/ViewPriority;

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object p1, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    return-object p0
.end method

.method public final getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->priority:Lcom/android/systemui/temporarydisplay/ViewPriority;

    return-object p0
.end method

.method public final getTimeoutMs()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    return p0
.end method

.method public final getWakeReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->wakeReason:Ljava/lang/String;

    return-object p0
.end method

.method public final getWindowTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->windowTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    invoke-virtual {v0}, Lcom/android/systemui/common/shared/model/TintedIcon;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/os/VibrationEffect;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-boolean v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->allowSwipeToDismiss:Z

    invoke-static {v2, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->windowTitle:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->wakeReason:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    invoke-static {v3, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->priority:Lcom/android/systemui/temporarydisplay/ViewPriority;

    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v3, v0

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChipbarInfo(startIcon="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", endItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", vibrationEffect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", allowSwipeToDismiss="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->allowSwipeToDismiss:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", windowTitle="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->windowTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wakeReason="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->wakeReason:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timeoutMs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->timeoutMs:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->priority:Lcom/android/systemui/temporarydisplay/ViewPriority;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", instanceId="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
