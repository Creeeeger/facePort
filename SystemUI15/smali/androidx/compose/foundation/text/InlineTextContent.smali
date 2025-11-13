.class public final Landroidx/compose/foundation/text/InlineTextContent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final children:Lkotlin/jvm/functions/Function3;

.field public final placeholder:Landroidx/compose/ui/text/Placeholder;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/Placeholder;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/Placeholder;",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/InlineTextContent;->placeholder:Landroidx/compose/ui/text/Placeholder;

    iput-object p2, p0, Landroidx/compose/foundation/text/InlineTextContent;->children:Lkotlin/jvm/functions/Function3;

    return-void
.end method
