.class final Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;
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
.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $focusedIndicatorLineThickness:F

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z

.field final synthetic $unfocusedIndicatorLineThickness:F


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;ZZLandroidx/compose/material3/TextFieldColors;FF)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-boolean p2, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$enabled:Z

    iput-boolean p3, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$isError:Z

    iput-object p4, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$colors:Landroidx/compose/material3/TextFieldColors;

    iput p5, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$focusedIndicatorLineThickness:F

    iput p6, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$unfocusedIndicatorLineThickness:F

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x351c2cd6    # -7465365.0f

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean v7, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$enabled:Z

    iget-boolean v0, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$isError:Z

    iget-object v1, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget v8, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$focusedIndicatorLineThickness:F

    iget p0, p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;->$unfocusedIndicatorLineThickness:F

    sget v2, Landroidx/compose/material3/internal/TextFieldImplKt;->TextFieldPadding:F

    if-nez v7, :cond_0

    iget-wide v0, v1, Landroidx/compose/material3/TextFieldColors;->disabledIndicatorColor:J

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-wide v0, v1, Landroidx/compose/material3/TextFieldColors;->errorIndicatorColor:J

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v0, v1, Landroidx/compose/material3/TextFieldColors;->focusedIndicatorColor:J

    goto :goto_0

    :cond_2
    iget-wide v0, v1, Landroidx/compose/material3/TextFieldColors;->unfocusedIndicatorColor:J

    :goto_0
    const/4 v9, 0x6

    const/16 v10, 0x96

    const/4 v11, 0x0

    if-eqz v7, :cond_3

    const v2, 0x3cf2df36

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v10, p3, v11, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    const/16 v6, 0xc

    const/4 v3, 0x0

    const/16 v5, 0x30

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_3
    const v2, 0x3cf473c9

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :goto_2
    if-eqz v7, :cond_5

    const v0, 0x3cf5cb35    # 0.030004123f

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz p1, :cond_4

    move v0, v8

    goto :goto_3

    :cond_4
    move v0, p0

    :goto_3
    invoke-static {v10, p3, v11, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    const/16 v5, 0xc

    const/4 v2, 0x0

    const/16 v4, 0x30

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/TweenSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_5
    const p1, 0x3cf8cd7c

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    invoke-static {p0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    iget p0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Color;

    iget-wide v0, p1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object p0

    invoke-static {p0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget v0, Landroidx/compose/material3/TextFieldKt;->TextFieldWithLabelVerticalPadding:F

    new-instance v0, Landroidx/compose/material3/TextFieldKt$drawIndicatorLine$1;

    invoke-direct {v0, p0}, Landroidx/compose/material3/TextFieldKt$drawIndicatorLine$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-static {p1, v0}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method
