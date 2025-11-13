.class public final Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice$Companion;


# instance fields
.field public final badge:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public final controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public final description:Ljava/lang/String;

.field public final icon:Landroidx/compose/ui/graphics/painter/Painter;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final state:Lcom/android/systemui/media/mediaoutput/entity/State;

.field public final volume:I

.field public final volumeMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput p6, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volume:I

    iput p7, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volumeMax:I

    iput-object p8, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Disconnected:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/State;->DISCONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;)V

    return-void
.end method


# virtual methods
.method public final clone()Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;
    .locals 10

    new-instance v9, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->description:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget v6, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volume:I

    iget v7, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volumeMax:I

    iget-object v8, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-object p0, v9, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v9
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volume:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volume:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volumeMax:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volumeMax:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getBadge()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object p0
.end method

.method public final getControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getIcon()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getState()Lcom/android/systemui/media/mediaoutput/entity/State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    return-object p0
.end method

.method public final getVolume()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volume:I

    return p0
.end method

.method public final getVolumeMax()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volumeMax:I

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->description:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volume:I

    invoke-static {v0, v3, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->volumeMax:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

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
