.class public final Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $animationProgress:Landroidx/compose/animation/core/Animatable;

.field public final synthetic $currentBackEvent:Landroidx/compose/runtime/MutableState;

.field public final synthetic $firstBackEvent:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Animatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/animation/core/Animatable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1$1$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1$1$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1$1$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/activity/BackEventCompat;

    iget-object v0, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1$1$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1$1$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroidx/compose/material3/internal/PredictiveBack;->INSTANCE:Landroidx/compose/material3/internal/PredictiveBack;

    iget p1, p1, Landroidx/activity/BackEventCompat;->progress:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/material3/internal/PredictiveBack_androidKt;->PredictiveBackEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {v0, p1}, Landroidx/compose/animation/core/CubicBezierEasing;->transform(F)F

    move-result p1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    new-instance p1, Ljava/lang/Float;

    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    iget-object p0, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1$1$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method
