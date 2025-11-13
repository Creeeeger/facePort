.class final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$visibilityListener$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "onKeyguardVisibilityChanged(I)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const-string v4, "onKeyguardVisibilityChanged"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->visibilityListener:Lkotlin/reflect/KFunction;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt$sam$java_util_function_IntConsumer$0;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt$sam$java_util_function_IntConsumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
