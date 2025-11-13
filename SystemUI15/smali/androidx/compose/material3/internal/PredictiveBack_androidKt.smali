.class public abstract Landroidx/compose/material3/internal/PredictiveBack_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final PredictiveBackEasing:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v3, v1}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/internal/PredictiveBack_androidKt;->PredictiveBackEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method
