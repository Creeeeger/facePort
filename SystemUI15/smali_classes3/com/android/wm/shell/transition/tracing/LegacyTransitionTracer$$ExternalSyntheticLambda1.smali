.class public final synthetic Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;

    iput-object p2, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;

    iget-object p0, p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v1, v0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v0, v0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
