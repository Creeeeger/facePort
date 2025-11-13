.class final Lcom/android/compose/animation/ExpandableKt$Expandable$wrappedContent$1$1;
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
.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J


# direct methods
.method public constructor <init>(JLkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$wrappedContent$1$1;->$contentColor:J

    iput-object p3, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$wrappedContent$1$1;->$content:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/animation/Expandable;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p3, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-wide v0, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$wrappedContent$1$1;->$contentColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p3

    new-instance v0, Lcom/android/compose/animation/ExpandableKt$Expandable$wrappedContent$1$1$1;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$wrappedContent$1$1;->$content:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, p0, p1}, Lcom/android/compose/animation/ExpandableKt$Expandable$wrappedContent$1$1$1;-><init>(Lkotlin/jvm/functions/Function3;Lcom/android/systemui/animation/Expandable;)V

    const p0, -0x69d909da

    invoke-static {p0, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p1, 0x38

    invoke-static {p3, p0, p2, p1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
