.class public Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
.super Ljava/lang/Object;
.source "ServiceProxySupplier.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/samsung/android/sume/core/service/ServiceProxy;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected final blacklist options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/service/ServiceProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->supplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;Ljava/lang/Class;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->supplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->supplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->supplier:Ljava/util/function/Supplier;

    return-void
.end method

.method private blacklist addOption(I)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private blacklist addOption(ILjava/lang/Object;)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public blacklist asDaemon()Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .locals 2

    instance-of v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V

    :goto_0
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->addOption(I)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    move-result-object v1

    return-object v1
.end method

.method public blacklist asForeground(Ljava/lang/Class;)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/sume/core/service/ServiceProxySupplier;"
        }
    .end annotation

    const-class v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    instance-of v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier$PlaceHolderImpl;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->addOption(ILjava/lang/Object;)Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    move-result-object v1

    return-object v1
.end method

.method public blacklist get()Lcom/samsung/android/sume/core/service/ServiceProxy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/service/ServiceProxy;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-service-ServiceProxySupplier(Ljava/lang/Class;Landroid/content/Context;)Lcom/samsung/android/sume/core/service/ServiceProxy;
    .locals 2

    const-class v0, Lcom/samsung/android/sume/core/service/LocalService;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    invoke-direct {v0, p2, p1, v1}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/util/Map;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    invoke-direct {v0, p2, p1, v1}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/util/Map;)V

    return-object v0
.end method

.method synthetic blacklist lambda$new$1$com-samsung-android-sume-core-service-ServiceProxySupplier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sume/core/service/ServiceProxy;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->options:Ljava/util/Map;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
