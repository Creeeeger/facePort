.class final Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition$animateAlpha$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $checked:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition$animateAlpha$1$1;->$checked:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    iget-boolean p0, p0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition$animateAlpha$1$1;->$checked:Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0x84

    iput p0, p1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    invoke-virtual {p1, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    const/16 p0, 0x42

    invoke-virtual {p1, p0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    iget p0, p1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    invoke-virtual {p1, p0, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object p0

    sget-object p1, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition;->KEY_POINT_EASING:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    iput-object p1, p0, Landroidx/compose/animation/core/KeyframeBaseEntity;->easing:Landroidx/compose/animation/core/Easing;

    goto :goto_0

    :cond_0
    const/16 p0, 0xe8

    iput p0, p1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    invoke-virtual {p1, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    const/16 p0, 0xa6

    invoke-virtual {p1, p0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    const/16 p0, 0xa7

    invoke-virtual {p1, p0, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    iget p0, p1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    invoke-virtual {p1, p0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object p0

    sget-object p1, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition;->KEY_POINT_EASING:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    iput-object p1, p0, Landroidx/compose/animation/core/KeyframeBaseEntity;->easing:Landroidx/compose/animation/core/Easing;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
