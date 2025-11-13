.class public final Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;


# instance fields
.field public final badge:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final cancelable:Z

.field public final controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public final description:Ljava/lang/String;

.field public final deselectable:Z

.field public final icon:Landroidx/compose/ui/graphics/painter/Painter;

.field public final id:Ljava/lang/String;

.field public isInAppCasting:Z

.field public mediaRoute2Info:Landroid/media/MediaRoute2Info;

.field public final name:Ljava/lang/CharSequence;

.field public final selectable:Z

.field public final state:Lcom/android/systemui/media/mediaoutput/entity/State;

.field public final transferable:Z

.field public final volume:I

.field public final volumeMax:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->name:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput p6, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volume:I

    iput p7, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volumeMax:I

    iput-object p8, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    iput-boolean p9, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->selectable:Z

    iput-boolean p10, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->deselectable:Z

    iput-boolean p11, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->transferable:Z

    iput-boolean p12, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->cancelable:Z

    sget-object p1, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->ChromeCast:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p13

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

    sget-object v1, Lcom/android/systemui/media/mediaoutput/icons/badge/ChromecastKt;->Chromecast$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/ImageVector;

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    move/from16 v11, p9

    :goto_2
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    move v12, v2

    goto :goto_3

    :cond_3
    move/from16 v12, p10

    :goto_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v13, v1

    goto :goto_4

    :cond_4
    move/from16 v13, p11

    :goto_4
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_5

    move v14, v2

    goto :goto_5

    :cond_5
    move/from16 v14, p12

    :goto_5
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v14}, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZZ)V

    return-void
.end method


# virtual methods
.method public final clone()Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;
    .locals 14

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->name:Ljava/lang/CharSequence;

    new-instance v13, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->description:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget v6, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volume:I

    iget v7, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volumeMax:I

    iget-object v8, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    iget-boolean v9, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->selectable:Z

    iget-boolean v10, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->deselectable:Z

    iget-boolean v11, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->transferable:Z

    iget-boolean v12, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->cancelable:Z

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZZ)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v13, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->isInAppCasting:Z

    iput-boolean p0, v13, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->isInAppCasting:Z

    return-object v13
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->name:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->name:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volume:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volume:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volumeMax:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volumeMax:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->selectable:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->selectable:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->deselectable:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->deselectable:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->transferable:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->transferable:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->cancelable:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->cancelable:Z

    if-eq p0, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAttributes()Ljava/util/List;
    .locals 8

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getAttributes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->isInAppCasting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    const-string v3, "isInAppCasting"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volumeMax:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lkotlin/Pair;

    const-string/jumbo v4, "volumeMax"

    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->selectable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v4, Lkotlin/Pair;

    const-string v5, "isSelectable"

    invoke-direct {v4, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->deselectable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v5, Lkotlin/Pair;

    const-string v6, "isDeselectable"

    invoke-direct {v5, v6, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->transferable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v6, Lkotlin/Pair;

    const-string v7, "isTransferable"

    invoke-direct {v6, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->cancelable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v7, Lkotlin/Pair;

    const-string v1, "isCancelable"

    invoke-direct {v7, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v7}, [Lkotlin/Pair;

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

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object p0
.end method

.method public final getCancelable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->cancelable:Z

    return p0
.end method

.method public final getControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeselectable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->deselectable:Z

    return p0
.end method

.method public final getIcon()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaRoute2Info()Landroid/media/MediaRoute2Info;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->name:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getSelectable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->selectable:Z

    return p0
.end method

.method public final getState()Lcom/android/systemui/media/mediaoutput/entity/State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    return-object p0
.end method

.method public final getTransferable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->transferable:Z

    return p0
.end method

.method public final getVolume()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volume:I

    return p0
.end method

.method public final getVolumeMax()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volumeMax:I

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->name:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->description:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->badge:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volume:I

    invoke-static {v0, v3, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->volumeMax:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->selectable:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->deselectable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->transferable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->cancelable:Z

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
