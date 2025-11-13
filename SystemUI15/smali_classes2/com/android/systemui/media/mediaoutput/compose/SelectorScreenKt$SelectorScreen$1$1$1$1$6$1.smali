.class final Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$6$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $changeScreen:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $device:Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$6$1;->$device:Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$6$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p3, v0

    :cond_1
    and-int/lit8 p3, p3, 0x5b

    const/16 v0, 0x12

    if-ne p3, v0, :cond_3

    move-object p3, p2

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p1, p3}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->animateItem$default(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$6$1;->$device:Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    move-object v3, p2

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x6b24c420

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$6$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$6$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_4

    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p2, p1, :cond_5

    :cond_4
    new-instance p2, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$6$1$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$6$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object v2, p2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt;->access$DeviceListItem(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
