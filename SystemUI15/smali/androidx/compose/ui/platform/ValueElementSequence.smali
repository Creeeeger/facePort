.class public final Landroidx/compose/ui/platform/ValueElementSequence;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final elements:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/ValueElementSequence;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ValueElementSequence;->elements:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/platform/ValueElementSequence;->elements:Ljava/util/List;

    new-instance v0, Landroidx/compose/ui/platform/ValueElement;

    invoke-direct {v0, p2, p1}, Landroidx/compose/ui/platform/ValueElement;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
