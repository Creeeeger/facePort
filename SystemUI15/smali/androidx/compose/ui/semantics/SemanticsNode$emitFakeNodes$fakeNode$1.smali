.class final Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $nodeRole:Landroidx/compose/ui/semantics/Role;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/semantics/Role;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$1;->$nodeRole:Landroidx/compose/ui/semantics/Role;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$1;->$nodeRole:Landroidx/compose/ui/semantics/Role;

    iget p0, p0, Landroidx/compose/ui/semantics/Role;->value:I

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
