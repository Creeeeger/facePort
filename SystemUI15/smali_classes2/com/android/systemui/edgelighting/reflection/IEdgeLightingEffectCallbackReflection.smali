.class public Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public final invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invokeInternal: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IEdgeLightingEffectCallbackReflection"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "onStarted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->onStarted()V

    goto :goto_0

    :cond_0
    const-string p2, "onStopped"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->onStopped()V

    goto :goto_0

    :cond_1
    const-string p2, "onClickedToast"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->onClickedToast()V

    goto :goto_0

    :cond_2
    const-string p2, "onSwipedToast"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->onSwipedToast()V

    goto :goto_0

    :cond_3
    const-string p2, "onFlingDownedToast"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->onFlingDownedToast(Z)V

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onClickedToast()V
    .locals 1

    const-string p0, "IEdgeLightingEffectCallbackReflection"

    const-string v0, "onClickedToast"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFlingDownedToast(Z)V
    .locals 0

    const-string p0, "IEdgeLightingEffectCallbackReflection"

    const-string p1, "onFlingDownedToast"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStarted()V
    .locals 1

    const-string p0, "IEdgeLightingEffectCallbackReflection"

    const-string v0, "onStarted"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopped()V
    .locals 1

    const-string p0, "IEdgeLightingEffectCallbackReflection"

    const-string v0, "onStopped"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSwipedToast()V
    .locals 1

    const-string p0, "IEdgeLightingEffectCallbackReflection"

    const-string v0, "onSwipedToast"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
