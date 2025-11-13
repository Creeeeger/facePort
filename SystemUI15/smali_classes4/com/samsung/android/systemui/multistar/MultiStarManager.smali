.class public final Lcom/samsung/android/systemui/multistar/MultiStarManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

.field public static final sInstance:Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

.field public static sRecentKeyConsumed:Z


# instance fields
.field public mMultiStarSystemFacade:Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

    invoke-direct {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sInstance:Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;-><init>()V

    return-void
.end method
