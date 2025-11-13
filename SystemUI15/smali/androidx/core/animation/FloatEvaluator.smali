.class public final Landroidx/core/animation/FloatEvaluator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/TypeEvaluator;


# static fields
.field public static final sInstance:Landroidx/core/animation/FloatEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/animation/FloatEvaluator;

    invoke-direct {v0}, Landroidx/core/animation/FloatEvaluator;-><init>()V

    sput-object v0, Landroidx/core/animation/FloatEvaluator;->sInstance:Landroidx/core/animation/FloatEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float/2addr p2, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
