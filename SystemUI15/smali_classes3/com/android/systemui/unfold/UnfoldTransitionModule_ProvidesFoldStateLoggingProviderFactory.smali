.class public final Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final configProvider:Ljavax/inject/Provider;

.field public final foldStateProvider:Ljavax/inject/Provider;

.field public final module:Lcom/android/systemui/unfold/UnfoldTransitionModule;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldTransitionModule;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;->configProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;->foldStateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providesFoldStateLoggingProvider(Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Ldagger/Lazy;)Ljava/util/Optional;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    iget-object p0, p1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isHingeAngleEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    new-instance p2, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-direct {p2}, Lcom/android/systemui/util/time/SystemClockImpl;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;-><init>(Lcom/android/systemui/unfold/updates/FoldStateProvider;Lcom/android/systemui/util/time/SystemClock;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;->foldStateProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;->providesFoldStateLoggingProvider(Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Ldagger/Lazy;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
