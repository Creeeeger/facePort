.class public Lcom/android/internal/telecom/ClientTransactionalServiceRepository;
.super Ljava/lang/Object;
.source "ClientTransactionalServiceRepository.java"


# static fields
.field private static final blacklist LOOKUP_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    .locals 1

    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    return-object v0
.end method

.method private blacklist hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist addNewCallForTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;-><init>(Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/ClientTransactionalServiceRepository;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->getTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist removeCallFromServiceWrapper(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public blacklist removeServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
