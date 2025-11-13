.class public final Landroidx/compose/ui/platform/SemanticsNodeCopy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final children:Landroidx/collection/MutableIntSet;

.field public final unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/MutableIntObjectMap;)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iput-object v1, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v1, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    new-instance v1, Landroidx/collection/MutableIntSet;

    invoke-direct {v1}, Landroidx/collection/MutableIntSet;-><init>()V

    iput-object v1, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->children:Landroidx/collection/MutableIntSet;

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(Landroidx/compose/ui/semantics/SemanticsNode;ZI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNode;

    iget v4, v3, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {p2, v4}, Landroidx/collection/MutableIntObjectMap;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->children:Landroidx/collection/MutableIntSet;

    iget v3, v3, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v4, v3}, Landroidx/collection/MutableIntSet;->add(I)Z

    :cond_0
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method
