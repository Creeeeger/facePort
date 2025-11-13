.class public final Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;


# instance fields
.field public final mEdgeLightingStyleList:Ljava/util/ArrayList;

.field public final mElpStyleList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.systemui.notilus.NotiCenterContentProvider/edgelighting_plus_effect"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mElpStyleList:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$1;-><init>(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V

    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;-><init>(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;
    .locals 1

    sget-object v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    return-object v0
.end method
