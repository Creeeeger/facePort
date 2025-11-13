.class public abstract Landroidx/compose/animation/core/AnimatableKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final negativeInfinityBounds1D:Landroidx/compose/animation/core/AnimationVector1D;

.field public static final negativeInfinityBounds2D:Landroidx/compose/animation/core/AnimationVector2D;

.field public static final negativeInfinityBounds3D:Landroidx/compose/animation/core/AnimationVector3D;

.field public static final negativeInfinityBounds4D:Landroidx/compose/animation/core/AnimationVector4D;

.field public static final positiveInfinityBounds1D:Landroidx/compose/animation/core/AnimationVector1D;

.field public static final positiveInfinityBounds2D:Landroidx/compose/animation/core/AnimationVector2D;

.field public static final positiveInfinityBounds3D:Landroidx/compose/animation/core/AnimationVector3D;

.field public static final positiveInfinityBounds4D:Landroidx/compose/animation/core/AnimationVector4D;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/AnimationVector1D;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->positiveInfinityBounds1D:Landroidx/compose/animation/core/AnimationVector1D;

    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-direct {v0, v1, v1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->positiveInfinityBounds2D:Landroidx/compose/animation/core/AnimationVector2D;

    new-instance v0, Landroidx/compose/animation/core/AnimationVector3D;

    invoke-direct {v0, v1, v1, v1}, Landroidx/compose/animation/core/AnimationVector3D;-><init>(FFF)V

    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->positiveInfinityBounds3D:Landroidx/compose/animation/core/AnimationVector3D;

    new-instance v0, Landroidx/compose/animation/core/AnimationVector4D;

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->positiveInfinityBounds4D:Landroidx/compose/animation/core/AnimationVector4D;

    new-instance v0, Landroidx/compose/animation/core/AnimationVector1D;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->negativeInfinityBounds1D:Landroidx/compose/animation/core/AnimationVector1D;

    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-direct {v0, v1, v1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->negativeInfinityBounds2D:Landroidx/compose/animation/core/AnimationVector2D;

    new-instance v0, Landroidx/compose/animation/core/AnimationVector3D;

    invoke-direct {v0, v1, v1, v1}, Landroidx/compose/animation/core/AnimationVector3D;-><init>(FFF)V

    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->negativeInfinityBounds3D:Landroidx/compose/animation/core/AnimationVector3D;

    new-instance v0, Landroidx/compose/animation/core/AnimationVector4D;

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->negativeInfinityBounds4D:Landroidx/compose/animation/core/AnimationVector4D;

    return-void
.end method

.method public static Animatable$default(F)Landroidx/compose/animation/core/Animatable;
    .locals 4

    new-instance v0, Landroidx/compose/animation/core/Animatable;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    return-object v0
.end method
