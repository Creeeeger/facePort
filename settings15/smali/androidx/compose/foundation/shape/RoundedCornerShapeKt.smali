.class public abstract Landroidx/compose/foundation/shape/RoundedCornerShapeKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/shape/PercentCornerSize;

    const/16 v1, 0x32

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroidx/compose/foundation/shape/PercentCornerSize;-><init>(F)V

    new-instance v1, Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-direct {v1, v0, v0, v0, v0}, Landroidx/compose/foundation/shape/RoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    sput-object v1, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-void
.end method

.method public static final RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/shape/DpCornerSize;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/shape/DpCornerSize;-><init>(F)V

    new-instance p0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-direct {p0, v0, v0, v0, v0}, Landroidx/compose/foundation/shape/RoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    return-object p0
.end method
