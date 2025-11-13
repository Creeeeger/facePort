.class public final Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice$Companion;


# instance fields
.field public audioDeviceInfo:Landroid/media/AudioDeviceInfo;

.field public final badge:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public cachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

.field public cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public final cancelable:Z

.field public controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public final description:Ljava/lang/CharSequence;

.field public final icon:Landroidx/compose/ui/graphics/painter/Painter;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final selectable:Z

.field public final state:Lcom/android/systemui/media/mediaoutput/entity/State;

.field public final transferable:Z

.field public final volume:I

.field public final volumeMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->description:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput p6, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volume:I

    iput p7, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volumeMax:I

    iput-object p8, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    iput-boolean p9, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->selectable:Z

    iput-boolean p10, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->transferable:Z

    iput-boolean p11, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cancelable:Z

    sget-object p1, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->MusicShare:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/icons/badge/MusicShareKt;->MusicShare$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/ImageVector;

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const/16 v1, 0x96

    move v9, v1

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move/from16 v11, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    move v12, v2

    goto :goto_5

    :cond_5
    move/from16 v12, p10

    :goto_5
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    move v13, v2

    goto :goto_6

    :cond_6
    move/from16 v13, p11

    :goto_6
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v13}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZ)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;
    .locals 14

    move-object v0, p0

    move/from16 v1, p5

    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->name:Ljava/lang/String;

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->description:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v6, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_1

    iget v7, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volume:I

    goto :goto_1

    :cond_1
    move/from16 v7, p2

    :goto_1
    iget v8, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volumeMax:I

    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    goto :goto_2

    :cond_2
    move-object/from16 v9, p3

    :goto_2
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->selectable:Z

    move v10, v1

    goto :goto_3

    :cond_3
    move/from16 v10, p4

    :goto_3
    iget-boolean v11, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->transferable:Z

    iget-boolean v12, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cancelable:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    move-object v0, v13

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZ)V

    return-object v13
.end method


# virtual methods
.method public final clone()Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x7ff

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->deepCopy$2(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    return-object v0
.end method

.method public final deepCopy$2(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->description:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->description:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volume:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volume:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volumeMax:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volumeMax:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->selectable:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->selectable:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->transferable:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->transferable:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cancelable:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cancelable:Z

    if-eq p0, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAttributes()Ljava/util/List;
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getAttributes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->transferable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    const-string v3, "isTransferable"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cancelable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v1, Lkotlin/Pair;

    const-string v3, "isCancelable"

    invoke-direct {v1, v3, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v1}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getBadge()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object p0
.end method

.method public final getCancelable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cancelable:Z

    return p0
.end method

.method public final getControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getIcon()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNeedEarProtect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getSelectable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->selectable:Z

    return p0
.end method

.method public final getState()Lcom/android/systemui/media/mediaoutput/entity/State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    return-object p0
.end method

.method public final getTransferable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->transferable:Z

    return p0
.end method

.method public final getVolume()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volume:I

    return p0
.end method

.method public final getVolumeMax()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volumeMax:I

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->description:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volume:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->volumeMax:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->selectable:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->transferable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cancelable:Z

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
