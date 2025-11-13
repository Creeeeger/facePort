.class public final Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final configProvider:Ljavax/inject/Provider;

.field public final foldProvider:Ljavax/inject/Provider;

.field public final module:Lcom/android/systemui/unfold/UnfoldTransitionModule;

.field public final providerProvider:Ljavax/inject/Provider;

.field public final unfoldOnlyProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldTransitionModule;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->configProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->foldProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->providerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->unfoldOnlyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideShellProgressProvider(Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/FoldProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    iget-object p0, p1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/unfold/UnfoldTransitionModuleKt;->ENABLE_FOLD_TASK_ANIMATIONS:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p4

    goto :goto_0

    :cond_1
    move-object p3, p1

    :goto_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    if-eqz p0, :cond_2

    new-instance p1, Lcom/android/systemui/unfold/UnfoldProgressProvider;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/unfold/UnfoldProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/updates/FoldProvider;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$1;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->foldProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/updates/FoldProvider;

    iget-object v2, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->unfoldOnlyProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->providerProvider:Ljavax/inject/Provider;

    invoke-static {v3, v0, v1, p0, v2}, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->provideShellProgressProvider(Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/FoldProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    move-result-object p0

    return-object p0
.end method
