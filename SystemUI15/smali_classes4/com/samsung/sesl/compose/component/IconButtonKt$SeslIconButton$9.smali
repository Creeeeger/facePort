.class final Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/IconButtonColors;

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0;",
            "Z",
            "Landroidx/compose/material3/IconButtonColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-boolean p3, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$enabled:Z

    iput-object p4, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$colors:Landroidx/compose/material3/IconButtonColors;

    iput-object p5, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$content:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v6

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$modifier:Landroidx/compose/ui/Modifier;

    sget-object p2, Lcom/samsung/sesl/compose/foundation/RecoilType;->Button:Lcom/samsung/sesl/compose/foundation/RecoilType;

    const/16 v0, 0x32

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape(I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/sesl/compose/foundation/RecoilKt;->seslRecoil-42QJj7c$default(Landroidx/compose/ui/Modifier;Lcom/samsung/sesl/compose/foundation/RecoilType;Landroidx/compose/foundation/shape/RoundedCornerShape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-boolean v2, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$enabled:Z

    iget-object v3, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$colors:Landroidx/compose/material3/IconButtonColors;

    iget-object v4, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v5, p0, Lcom/samsung/sesl/compose/component/IconButtonKt$SeslIconButton$9;->$content:Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
