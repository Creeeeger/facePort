.class public final Lcom/android/systemui/unfold/UnfoldSharedInternalModule$unfoldTransitionProgressProvider$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $tracingListener:Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener$Factory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule$unfoldTransitionProgressProvider$1;->$tracingListener:Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener$Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule$unfoldTransitionProgressProvider$1;->$tracingListener:Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener$Factory;

    const-string v0, "MainThreadFromBgProgress"

    invoke-interface {p0, v0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener$Factory;->create(Ljava/lang/String;)Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
