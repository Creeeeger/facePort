.class public final Lcom/android/systemui/lockstar/LockStarPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callbackMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->callbackMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onChangedLockStarData(ZLandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->callbackMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/systemui/util/kotlin/MapUtilsKt;->filterValuesNotNull(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

    invoke-interface {p2, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;->onChangedLockStarData(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
