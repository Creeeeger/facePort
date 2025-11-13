.class public final Lcom/android/systemui/dagger/ContextComponentResolver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/dagger/ContextComponentHelper;


# instance fields
.field public final mActivityCreators:Ljava/util/Map;

.field public final mBroadcastReceiverCreators:Ljava/util/Map;

.field public final mRecentsCreators:Ljava/util/Map;

.field public final mServiceCreators:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/ContextComponentResolver;->mActivityCreators:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/systemui/dagger/ContextComponentResolver;->mServiceCreators:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/systemui/dagger/ContextComponentResolver;->mRecentsCreators:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/systemui/dagger/ContextComponentResolver;->mBroadcastReceiverCreators:Ljava/util/Map;

    return-void
.end method

.method public static resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/inject/Provider;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method
