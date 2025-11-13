.class public abstract Landroidx/compose/animation/AnimationModifierKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final InvalidSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-static {v0, v0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/animation/AnimationModifierKt;->InvalidSize:J

    return-void
.end method
