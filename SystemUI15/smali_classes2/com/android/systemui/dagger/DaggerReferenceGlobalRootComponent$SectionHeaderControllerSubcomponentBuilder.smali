.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public clickIntentAction:Ljava/lang/String;

.field public headerText:Ljava/lang/Integer;

.field public nodeLabel:Ljava/lang/String;

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v2, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final clickIntentAction(Ljava/lang/String;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public final headerText(I)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    return-object p0
.end method

.method public final nodeLabel(Ljava/lang/String;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    return-object p0
.end method
