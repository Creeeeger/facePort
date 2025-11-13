.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$2;
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

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$2;->$action:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$2;->$action:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    iget-object v0, p2, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object p2, p2, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->description:Ljava/lang/CharSequence;

    invoke-static {p2, p1}, Lcom/android/systemui/media/mediaoutput/compose/ext/CharSequenceExtKt;->text(Ljava/lang/CharSequence;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v2, 0x4

    int-to-float v2, v2

    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p2, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$2;->$action:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    iget v2, v2, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->scale:F

    invoke-static {p2, v2}, Landroidx/compose/ui/draw/ScaleKt;->scale(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const p1, 0x7952196

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$2;->$action:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->enabled:Z

    if-eqz p0, :cond_2

    invoke-static {v5}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->mediaPrimaryColor(Landroidx/compose/runtime/Composer;)J

    move-result-wide p0

    :goto_1
    move-wide v3, p0

    goto :goto_2

    :cond_2
    const-wide p0, 0xff99999eL

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide p0

    goto :goto_1

    :goto_2
    const/4 p0, 0x0

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/widget/IconExtKt;->IconExt-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
