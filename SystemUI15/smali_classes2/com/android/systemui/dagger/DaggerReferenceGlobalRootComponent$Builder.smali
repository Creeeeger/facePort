.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/dagger/ReferenceGlobalRootComponent$Builder;


# instance fields
.field public context:Landroid/content/Context;

.field public instrumentationTest:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/dagger/ReferenceGlobalRootComponent;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->context:Landroid/content/Context;

    const-class v2, Landroid/content/Context;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->instrumentationTest:Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    new-instance v4, Lcom/android/systemui/dagger/GlobalModule;

    invoke-direct {v4}, Lcom/android/systemui/dagger/GlobalModule;-><init>()V

    new-instance v5, Lcom/android/systemui/dagger/AndroidInternalsModule;

    invoke-direct {v5}, Lcom/android/systemui/dagger/AndroidInternalsModule;-><init>()V

    new-instance v6, Lcom/android/systemui/dagger/FrameworkServicesModule;

    invoke-direct {v6}, Lcom/android/systemui/dagger/FrameworkServicesModule;-><init>()V

    new-instance v7, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;

    invoke-direct {v7}, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;-><init>()V

    new-instance v8, Lcom/android/systemui/unfold/UnfoldTransitionModule;

    invoke-direct {v8}, Lcom/android/systemui/unfold/UnfoldTransitionModule;-><init>()V

    new-instance v9, Lcom/android/systemui/unfold/UnfoldSharedModule;

    invoke-direct {v9}, Lcom/android/systemui/unfold/UnfoldSharedModule;-><init>()V

    new-instance v10, Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    invoke-direct {v10}, Lcom/android/systemui/unfold/UnfoldSharedInternalModule;-><init>()V

    new-instance v11, Lcom/android/systemui/unfold/UnfoldRotationProviderInternalModule;

    invoke-direct {v11}, Lcom/android/systemui/unfold/UnfoldRotationProviderInternalModule;-><init>()V

    new-instance v12, Lcom/android/systemui/unfold/HingeAngleProviderInternalModule;

    invoke-direct {v12}, Lcom/android/systemui/unfold/HingeAngleProviderInternalModule;-><init>()V

    new-instance v13, Lcom/android/systemui/unfold/FoldStateProviderModule;

    invoke-direct {v13}, Lcom/android/systemui/unfold/FoldStateProviderModule;-><init>()V

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->context:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->instrumentationTest:Ljava/lang/Boolean;

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;-><init>(Lcom/android/systemui/dagger/GlobalModule;Lcom/android/systemui/dagger/AndroidInternalsModule;Lcom/android/systemui/dagger/FrameworkServicesModule;Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Lcom/android/systemui/unfold/UnfoldRotationProviderInternalModule;Lcom/android/systemui/unfold/HingeAngleProviderInternalModule;Lcom/android/systemui/unfold/FoldStateProviderModule;Landroid/content/Context;Ljava/lang/Boolean;I)V

    return-object v1
.end method

.method public final context(Landroid/content/Context;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final instrumentationTest(Z)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->instrumentationTest:Ljava/lang/Boolean;

    return-object p0
.end method
