.class public abstract Landroidx/compose/material3/ProgressIndicatorDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CircularIndeterminateStrokeCap:I

.field public static final CircularStrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->TrackThickness:F

    sput v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularStrokeWidth:F

    const/4 v0, 0x1

    sput v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularIndeterminateStrokeCap:I

    return-void
.end method
