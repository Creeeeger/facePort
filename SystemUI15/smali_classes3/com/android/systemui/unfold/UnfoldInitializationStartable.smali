.class public final Lcom/android/systemui/unfold/UnfoldInitializationStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final foldStateLoggerOptional:Ljava/util/Optional;

.field public final foldStateLoggingProviderOptional:Ljava/util/Optional;

.field public final unfoldBgTransitionProgressProviderOptional:Ljava/util/Optional;

.field public final unfoldComponentOptional:Ljava/util/Optional;

.field public final unfoldTransitionProgressForwarder:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/FoldStateLoggingProvider;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/FoldStateLogger;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable;->unfoldComponentOptional:Ljava/util/Optional;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable;->foldStateLoggingProviderOptional:Ljava/util/Optional;

    iput-object p3, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable;->foldStateLoggerOptional:Ljava/util/Optional;

    iput-object p4, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable;->unfoldBgTransitionProgressProviderOptional:Ljava/util/Optional;

    iput-object p6, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable;->unfoldTransitionProgressForwarder:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable;->unfoldComponentOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$1;->INSTANCE:Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$1;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable;->foldStateLoggingProviderOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$2;->INSTANCE:Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$2;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable;->foldStateLoggerOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$3;->INSTANCE:Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$3;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldInitializationStartable;->unfoldBgTransitionProgressProviderOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$4;-><init>(Lcom/android/systemui/unfold/UnfoldInitializationStartable;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
