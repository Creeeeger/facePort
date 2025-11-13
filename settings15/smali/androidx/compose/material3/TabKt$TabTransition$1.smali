.class final Landroidx/compose/material3/TabKt$TabTransition$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $activeColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $inactiveColor:J

.field final synthetic $selected:Z


# direct methods
.method public constructor <init>(JJZLkotlin/jvm/functions/Function2;I)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/material3/TabKt$TabTransition$1;->$activeColor:J

    iput-wide p3, p0, Landroidx/compose/material3/TabKt$TabTransition$1;->$inactiveColor:J

    iput-boolean p5, p0, Landroidx/compose/material3/TabKt$TabTransition$1;->$selected:Z

    iput-object p6, p0, Landroidx/compose/material3/TabKt$TabTransition$1;->$content:Lkotlin/jvm/functions/Function2;

    iput p7, p0, Landroidx/compose/material3/TabKt$TabTransition$1;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-wide v0, p0, Landroidx/compose/material3/TabKt$TabTransition$1;->$activeColor:J

    iget-wide v2, p0, Landroidx/compose/material3/TabKt$TabTransition$1;->$inactiveColor:J

    iget-boolean v4, p0, Landroidx/compose/material3/TabKt$TabTransition$1;->$selected:Z

    iget-object v5, p0, Landroidx/compose/material3/TabKt$TabTransition$1;->$content:Lkotlin/jvm/functions/Function2;

    iget p0, p0, Landroidx/compose/material3/TabKt$TabTransition$1;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/TabKt;->TabTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
