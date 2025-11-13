.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;
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
.field public final id:I

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

.field public final sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iput p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->id:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->id:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->nodeLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->providerLayoutInflaterProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->headerText:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->activityStarterImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->clickIntentAction:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;-><init>(Ljava/lang/String;Landroid/view/LayoutInflater;ILcom/android/systemui/plugins/ActivityStarter;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->id:I

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
.end method
