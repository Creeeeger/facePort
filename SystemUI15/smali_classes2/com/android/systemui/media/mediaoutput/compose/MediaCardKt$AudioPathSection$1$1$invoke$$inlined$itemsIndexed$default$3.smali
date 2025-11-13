.class public final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field final synthetic $audioDevices$delegate$inlined:Landroidx/compose/runtime/State;

.field final synthetic $groupDeviceExpandedState$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $groupDeviceIds$delegate$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $isInAppCastingMode$inlined:Z

.field final synthetic $items:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;->$groupDeviceExpandedState$inlined:Landroidx/compose/runtime/MutableState;

    iput-boolean p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;->$isInAppCastingMode$inlined:Z

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;->$groupDeviceIds$delegate$inlined:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;->$audioDevices$delegate$inlined:Landroidx/compose/runtime/State;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 p4, p4, 0x30

    if-nez p4, :cond_3

    move-object p4, p3

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p4, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p4, 0x20

    goto :goto_2

    :cond_2
    const/16 p4, 0x10

    :goto_2
    or-int/2addr v0, p4

    :cond_3
    and-int/lit16 p4, v0, 0x93

    const/16 v0, 0x92

    if-ne p4, v0, :cond_5

    move-object p4, p3

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_4

    :cond_5
    :goto_3
    sget-object p4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;->$items:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p4, -0x3dd7b2b5

    invoke-virtual {p3, p4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p1, p4}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->animateItem$default(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;->$groupDeviceExpandedState$inlined:Landroidx/compose/runtime/MutableState;

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;->$groupDeviceIds$delegate$inlined:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {v0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;->$isInAppCastingMode$inlined:Z

    const/4 v5, 0x0

    const/16 v7, 0x180

    const/16 v8, 0x20

    move-object v6, p3

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt;->access$DeviceListItem(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;ZZLcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Landroidx/compose/runtime/Composer;II)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;->$audioDevices$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    if-ge p2, p0, :cond_6

    const/16 p0, 0x3e

    int-to-float v2, p0

    sget-object p0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 p0, 0x19

    int-to-float v4, p0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v3, 0x0

    move-object v1, p4

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    int-to-float v2, p1

    const-wide p0, 0xff8d8d89L

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v3

    const/16 v6, 0x1b6

    const/4 v7, 0x0

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/DividerKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    :cond_6
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
