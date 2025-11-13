.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field public final _cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

.field public final id:I

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    iput p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->id:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->id:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->providesComplicationHostViewProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->namedInteger()I

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->namedInteger2()I

    move-result v5

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->namedInteger3()I

    move-result v6

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->namedInteger4()I

    move-result v7

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->namedInteger5()I

    move-result v8

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->touchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

    invoke-virtual {v1}, Lcom/android/systemui/touch/TouchInsetManager;->createSession()Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    move-result-object v9

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->namedInteger6()I

    move-result v10

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->namedInteger7()I

    move-result v11

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/complication/ComplicationLayoutEngine;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;IIIIILcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;II)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->id:I

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->providerLayoutInflaterProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v0, 0x7f0d00f0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "R.layout.dream_overlay_complications_layer did not properly inflated"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method
