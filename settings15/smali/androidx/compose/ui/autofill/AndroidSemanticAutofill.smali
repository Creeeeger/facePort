.class public final Landroidx/compose/ui/autofill/AndroidSemanticAutofill;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final autofillChangeChecker:Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;

.field public final autofillManager:Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;

.field public final boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

.field public currentSemanticsNodesInvalidated:Z

.field public final previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

.field public final view:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    new-instance v0, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;

    invoke-direct {v0, p1}, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    iput-object v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->autofillManager:Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAutofill(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    iget-object p1, p1, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->intObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v1

    new-instance v2, Landroidx/collection/MutableIntSet;

    invoke-direct {v2}, Landroidx/collection/MutableIntSet;-><init>()V

    const/4 v3, 0x4

    invoke-static {p1, v0, v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(Landroidx/compose/ui/semantics/SemanticsNode;ZI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    iget v7, v6, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v1, v7}, Landroidx/collection/MutableIntObjectMap;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v6, v6, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v2, v6}, Landroidx/collection/MutableIntSet;->add(I)Z

    :cond_0
    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1, v4}, Landroidx/collection/ArraySet;-><init>(I)V

    const/4 p1, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    iput-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodesInvalidated:Z

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->intObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    new-instance p1, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/autofill/AndroidSemanticAutofill;)V

    return-void
.end method


# virtual methods
.method public final getCurrentSemanticsNodes$ui_release()Landroidx/collection/MutableIntObjectMap;
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodesInvalidated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodesInvalidated:Z

    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-static {v0}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->getAllUncoveredSemanticsNodesToIntObjectMap(Landroidx/compose/ui/semantics/SemanticsOwner;)Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    return-object p0
.end method
