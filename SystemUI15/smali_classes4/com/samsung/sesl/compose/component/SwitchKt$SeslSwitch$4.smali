.class final Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$4;
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
.field final synthetic $colors:Lcom/samsung/sesl/compose/component/SeslSwitchColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public constructor <init>(Lcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$4;->$colors:Lcom/samsung/sesl/compose/component/SeslSwitchColors;

    iput-object p2, p0, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p3, p0, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$4;->$enabled:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    move-object v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0xe

    if-nez p2, :cond_1

    move-object p2, v6

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    or-int/2addr p1, p2

    :cond_1
    and-int/lit8 p2, p1, 0x5b

    const/16 p3, 0x12

    if-ne p2, p3, :cond_3

    move-object p2, v6

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslSwitchDefault;

    iget-object v2, p0, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$4;->$colors:Lcom/samsung/sesl/compose/component/SeslSwitchColors;

    iget-object v3, p0, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-boolean v5, p0, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$4;->$enabled:Z

    and-int/lit8 v7, p1, 0xe

    const/16 v8, 0x8

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/sesl/compose/component/SeslSwitchDefault;->Thumb(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
