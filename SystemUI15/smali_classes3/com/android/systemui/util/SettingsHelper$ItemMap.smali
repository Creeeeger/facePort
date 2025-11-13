.class Lcom/android/systemui/util/SettingsHelper$ItemMap;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/util/SettingsHelper$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/util/SettingsHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/util/SettingsHelper$Item;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->-$$Nest$mgetKey(Lcom/android/systemui/util/SettingsHelper$Item;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "HashMap CollisionException!! Please don\'t add same setting uri!!! NewKey:"

    const-string v1, ", OriKey:"

    invoke-static {p1, v0, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-static {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->-$$Nest$mgetKey(Lcom/android/systemui/util/SettingsHelper$Item;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper$Item;

    return-object p0
.end method

.method public registerAllObserver()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->registerObserver()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateMapAll(Landroid/content/ContentResolver;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->resetCachedIntegrity()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->isCachedIntegrity()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateMapForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v2, p2}, Lcom/android/systemui/util/SettingsHelper$Item;->equals(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->resetCachedIntegrity()V

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    goto :goto_0

    :cond_1
    return-void
.end method
