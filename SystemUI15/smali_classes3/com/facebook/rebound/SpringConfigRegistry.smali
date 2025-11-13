.class public final Lcom/facebook/rebound/SpringConfigRegistry;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/facebook/rebound/SpringConfigRegistry;


# instance fields
.field public final mSpringConfigMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/rebound/SpringConfigRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/rebound/SpringConfigRegistry;-><init>(Z)V

    sput-object v0, Lcom/facebook/rebound/SpringConfigRegistry;->INSTANCE:Lcom/facebook/rebound/SpringConfigRegistry;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/facebook/rebound/SpringConfig;->defaultConfig:Lcom/facebook/rebound/SpringConfig;

    const-string v0, "default config"

    invoke-virtual {p0, p1, v0}, Lcom/facebook/rebound/SpringConfigRegistry;->addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "configName is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
