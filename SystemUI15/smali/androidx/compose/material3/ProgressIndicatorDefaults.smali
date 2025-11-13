.class public final Landroidx/compose/material3/ProgressIndicatorDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CircularIndeterminateStrokeCap:I

.field public static final CircularStrokeWidth:F

.field public static final INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/ProgressIndicatorDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    sget-object v0, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/ProgressIndicatorTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->TrackThickness:F

    sput v1, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularStrokeWidth:F

    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    sput v1, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularIndeterminateStrokeCap:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/animation/core/SpringSpec;

    const v1, 0x3a83126f    # 0.001f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x42480000    # 50.0f

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
