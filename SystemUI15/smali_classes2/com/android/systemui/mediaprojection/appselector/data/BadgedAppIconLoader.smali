.class public final Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final basicAppIconLoader:Lcom/android/systemui/mediaprojection/appselector/data/BasicAppIconLoader;

.field public final context:Landroid/content/Context;

.field public final iconFactoryProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/BasicAppIconLoader;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/Context;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mediaprojection/appselector/data/BasicAppIconLoader;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;->basicAppIconLoader:Lcom/android/systemui/mediaprojection/appselector/data/BasicAppIconLoader;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;->iconFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final loadIcon(ILcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Landroid/content/ComponentName;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;ILandroid/content/ComponentName;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v6, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
