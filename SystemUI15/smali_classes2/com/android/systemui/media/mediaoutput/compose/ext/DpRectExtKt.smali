.class public abstract Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final animateDpRectAsState(Landroidx/compose/ui/unit/DpRect;Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;
    .locals 9

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x4b595898

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget v0, Landroidx/compose/ui/unit/DpRect;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$1;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$2;

    sget-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    const/16 v8, 0x8

    const/4 v3, 0x0

    const-string v4, "RectAnimation"

    const/16 v7, 0x240

    move-object v0, p0

    move-object v1, v2

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method
