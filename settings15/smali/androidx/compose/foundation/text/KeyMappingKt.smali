.class public abstract Landroidx/compose/foundation/text/KeyMappingKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final defaultKeyMapping:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1;->INSTANCE:Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1;

    new-instance v1, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;-><init>(ILjava/lang/Object;)V

    new-instance v0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;-><init>(ILjava/lang/Object;)V

    sput-object v0, Landroidx/compose/foundation/text/KeyMappingKt;->defaultKeyMapping:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    return-void
.end method
