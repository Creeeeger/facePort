.class final Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$2$3$1$1$2;
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
.field final synthetic $action:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/entity/MediaAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$2$3$1$1$2;->$action:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v5

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

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$2$3$1$1$2;->$action:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->description:Ljava/lang/CharSequence;

    invoke-static {p0, v5}, Lcom/android/systemui/media/mediaoutput/compose/ext/CharSequenceExtKt;->text(Ljava/lang/CharSequence;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->mediaPrimaryColor(Landroidx/compose/runtime/Composer;)J

    move-result-wide v3

    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x4

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/widget/IconExtKt;->IconExt-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
