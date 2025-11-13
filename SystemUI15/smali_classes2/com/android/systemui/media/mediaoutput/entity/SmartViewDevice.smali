.class public final Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice$Companion;


# instance fields
.field public audioDeviceInfo:Landroid/media/AudioDeviceInfo;

.field public final badge:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final cancelable:Z

.field public final controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public final description:Ljava/lang/CharSequence;

.field public final icon:Landroidx/compose/ui/graphics/painter/Painter;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final selectable:Z

.field public final state:Lcom/android/systemui/media/mediaoutput/entity/State;

.field public final volume:I

.field public final volumeMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->description:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput p6, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volume:I

    iput p7, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volumeMax:I

    iput-object p8, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    iput-boolean p9, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->selectable:Z

    iput-boolean p10, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->cancelable:Z

    sget-object p1, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->SmartView:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x7f130c10

    invoke-direct {v1, v4, v3, v2, v3}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p3

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/icons/badge/SmartViewKt;->SmartView$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/ImageVector;

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    move/from16 v11, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const/16 v1, 0x96

    move v12, v1

    goto :goto_3

    :cond_3
    move/from16 v12, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    move-object v13, v1

    goto :goto_4

    :cond_4
    move-object/from16 v13, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move v14, v2

    goto :goto_5

    :cond_5
    move/from16 v14, p9

    :goto_5
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v15, v0

    goto :goto_6

    :cond_6
    move/from16 v15, p10

    :goto_6
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v15}, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZ)V

    return-void
.end method


# virtual methods
.method public final clone()Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;
    .locals 12

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->description:Ljava/lang/CharSequence;

    new-instance v11, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget v6, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volume:I

    iget v7, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volumeMax:I

    iget-object v8, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    iget-boolean v9, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->selectable:Z

    iget-boolean v10, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->cancelable:Z

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZ)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-object p0, v11, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    return-object v11
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->description:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->description:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volume:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volume:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volumeMax:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volumeMax:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->selectable:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->selectable:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->cancelable:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->cancelable:Z

    if-eq p0, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getBadge()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object p0
.end method

.method public final getCancelable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->cancelable:Z

    return p0
.end method

.method public final getControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getIcon()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNeedEarProtect()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->getNeedEarProtect(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public final getSelectable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->selectable:Z

    return p0
.end method

.method public final getState()Lcom/android/systemui/media/mediaoutput/entity/State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    return-object p0
.end method

.method public final getVolume()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volume:I

    return p0
.end method

.method public final getVolumeMax()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volumeMax:I

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->description:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volume:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->volumeMax:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->selectable:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->cancelable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/EntityString;->toLogText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
