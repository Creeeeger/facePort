.class public final Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/animation/core/Animations;


# instance fields
.field public final anim:Landroidx/compose/animation/core/FloatSpringSpec;


# direct methods
.method public constructor <init>(FF)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroidx/compose/animation/core/FloatSpringSpec;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;->anim:Landroidx/compose/animation/core/FloatSpringSpec;

    return-void
.end method


# virtual methods
.method public final get(I)Landroidx/compose/animation/core/FloatAnimationSpec;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;->anim:Landroidx/compose/animation/core/FloatSpringSpec;

    return-object p0
.end method
