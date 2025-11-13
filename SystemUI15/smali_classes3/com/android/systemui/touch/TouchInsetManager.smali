.class public final Lcom/android/systemui/touch/TouchInsetManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mLastAffectedSurfaces:Ljava/util/HashMap;

.field public final mSessionRegions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager;->mSessionRegions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager;->mLastAffectedSurfaces:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/touch/TouchInsetManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final createSession()Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;
    .locals 2

    new-instance v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget-object v1, p0, Lcom/android/systemui/touch/TouchInsetManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;-><init>(Lcom/android/systemui/touch/TouchInsetManager;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final recycleRegions(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager;->mSessionRegions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Removing a session with no regions:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TouchInsetManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager;->mSessionRegions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateTouchInsets()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/touch/TouchInsetManager;->mSessionRegions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda1;-><init>(ILjava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/systemui/touch/TouchInsetManager;->mLastAffectedSurfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda1;-><init>(ILjava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/systemui/touch/TouchInsetManager;->mLastAffectedSurfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager;->mLastAffectedSurfaces:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method
