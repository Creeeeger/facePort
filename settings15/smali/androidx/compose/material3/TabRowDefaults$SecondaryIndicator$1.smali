.class final Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;
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

.field final synthetic $$default:I

.field final synthetic $color:J

.field final synthetic $height:F

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $tmp0_rcvr:Landroidx/compose/material3/TabRowDefaults;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/TabRowDefaults;Landroidx/compose/ui/Modifier;FJII)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$tmp0_rcvr:Landroidx/compose/material3/TabRowDefaults;

    iput-object p2, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput p3, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$height:F

    iput-wide p4, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$color:J

    iput p6, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$$changed:I

    iput p7, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$tmp0_rcvr:Landroidx/compose/material3/TabRowDefaults;

    iget-object v1, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget v2, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$height:F

    iget-wide v3, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$color:J

    iget p1, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    iget v7, p0, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;->$$default:I

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/material3/TabRowDefaults;->SecondaryIndicator-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
