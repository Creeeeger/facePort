.class public final Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSFactory;


# instance fields
.field public final mCustomTileFactoryProvider:Ljavax/inject/Provider;

.field public final mQsHostLazy:Ldagger/Lazy;

.field public final mTileMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ljavax/inject/Provider;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ljavax/inject/Provider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mQsHostLazy:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCustomTileFactoryProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mTileMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mQsHostLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSHost;->isUnsupportedTile(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "QSFactory"

    if-eqz v1, :cond_0

    const-string p0, "Unsupported tile spec: "

    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mTileMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mTileMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto :goto_0

    :cond_1
    const-string v1, "custom("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCustomTileFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$5;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$5;->create(Ljava/lang/String;Landroid/content/Context;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty custom tile spec action"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad custom tile spec: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "No stock tile spec: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->initialize()V

    invoke-virtual {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->postStale()V

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setTileSpec(Ljava/lang/String;)V

    :cond_5
    return-object v2
.end method

.method public final isSystemTile(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mTileMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
