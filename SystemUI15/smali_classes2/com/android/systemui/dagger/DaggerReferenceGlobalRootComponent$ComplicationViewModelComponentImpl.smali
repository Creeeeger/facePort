.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent;


# instance fields
.field public final _cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

.field public final complication:Lcom/android/systemui/complication/Complication;

.field public final complicationViewModelComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;

.field public final id:Lcom/android/systemui/complication/ComplicationId;

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;Lcom/android/systemui/complication/Complication;Lcom/android/systemui/complication/ComplicationId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->complicationViewModelComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    iput-object p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->complication:Lcom/android/systemui/complication/Complication;

    iput-object p5, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->id:Lcom/android/systemui/complication/ComplicationId;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;Lcom/android/systemui/complication/Complication;Lcom/android/systemui/complication/ComplicationId;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;Lcom/android/systemui/complication/Complication;Lcom/android/systemui/complication/ComplicationId;)V

    return-void
.end method


# virtual methods
.method public final complicationViewModel()Lcom/android/systemui/complication/ComplicationViewModel;
    .locals 3

    new-instance v0, Lcom/android/systemui/complication/ComplicationViewModel;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->complication:Lcom/android/systemui/complication/Complication;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->id:Lcom/android/systemui/complication/ComplicationId;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->host:Lcom/android/systemui/complication/Complication$Host;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/complication/ComplicationViewModel;-><init>(Lcom/android/systemui/complication/Complication;Lcom/android/systemui/complication/ComplicationId;Lcom/android/systemui/complication/Complication$Host;)V

    return-object v0
.end method

.method public final getViewModelProvider()Lcom/android/systemui/complication/ComplicationViewModelProvider;
    .locals 2

    new-instance v0, Lcom/android/systemui/complication/ComplicationViewModelProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->_cascd_ComplicationComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$cascd_ComplicationComponentImpl;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ComplicationViewModelComponentImpl;->complicationViewModel()Lcom/android/systemui/complication/ComplicationViewModel;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/complication/ComplicationViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Lcom/android/systemui/complication/ComplicationViewModel;)V

    return-object v0
.end method
