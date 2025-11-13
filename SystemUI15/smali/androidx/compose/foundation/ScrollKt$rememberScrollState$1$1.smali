.class final Landroidx/compose/foundation/ScrollKt$rememberScrollState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $initial:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/ScrollKt$rememberScrollState$1$1;->$initial:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/ScrollState;

    iget p0, p0, Landroidx/compose/foundation/ScrollKt$rememberScrollState$1$1;->$initial:I

    invoke-direct {v0, p0}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    return-object v0
.end method
