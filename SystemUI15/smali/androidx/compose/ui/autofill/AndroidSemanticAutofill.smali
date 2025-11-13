.class public final Landroidx/compose/ui/autofill/AndroidSemanticAutofill;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final autofillChangeChecker:Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;

.field public final autofillManager:Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;

.field public final boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

.field public currentSemanticsNodesInvalidated:Z

.field public final previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

.field public final view:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 4

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

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    new-instance v1, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object p1, p1, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    sget-object v2, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v1, p1, v2}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    new-instance p1, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p1, v1, v0, v3}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x6

    invoke-static {v0, v3, v3, p1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    iput-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodesInvalidated:Z

    iput-object v2, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    new-instance p1, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/autofill/AndroidSemanticAutofill;)V

    return-void
.end method


# virtual methods
.method public final getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;
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
