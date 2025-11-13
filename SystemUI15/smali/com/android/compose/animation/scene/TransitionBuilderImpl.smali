.class public final Lcom/android/compose/animation/scene/TransitionBuilderImpl;
.super Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/BaseTransitionBuilder;


# instance fields
.field public final distance:Lcom/android/compose/animation/scene/UserActionDistance;

.field public final durationMillis$delegate:Lkotlin/Lazy;

.field public spec:Landroidx/compose/animation/core/AnimationSpec;

.field public final swipeSpec:Landroidx/compose/animation/core/SpringSpec;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;-><init>()V

    const/4 v0, 0x0

    const/high16 v1, 0x43480000    # 200.0f

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->spec:Landroidx/compose/animation/core/AnimationSpec;

    new-instance v0, Lcom/android/compose/animation/scene/TransitionBuilderImpl$durationMillis$2;

    invoke-direct {v0, p0}, Lcom/android/compose/animation/scene/TransitionBuilderImpl$durationMillis$2;-><init>(Lcom/android/compose/animation/scene/TransitionBuilderImpl;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->durationMillis$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic timestampRange$default(Lcom/android/compose/animation/scene/TransitionBuilderImpl;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->timestampRange(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getDurationMillis()I
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->durationMillis$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final timestampRange(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    const-string v0, " durationMillis="

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->getDurationMillis()I

    move-result v2

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->getDurationMillis()I

    move-result p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "invalid start value: startMillis="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->getDurationMillis()I

    move-result v2

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->getDurationMillis()I

    move-result p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "invalid end value: endMillis="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->getDurationMillis()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->getDurationMillis()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v0

    :goto_3
    new-instance v1, Lcom/android/compose/animation/scene/transformation/TransformationRange;

    invoke-direct {v1, p1, p2}, Lcom/android/compose/animation/scene/transformation/TransformationRange;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    iput-object v1, p0, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->range:Lcom/android/compose/animation/scene/transformation/TransformationRange;

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->range:Lcom/android/compose/animation/scene/transformation/TransformationRange;

    return-void
.end method
