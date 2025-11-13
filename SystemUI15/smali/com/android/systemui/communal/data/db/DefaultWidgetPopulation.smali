.class public final Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;
.super Landroidx/room/RoomDatabase$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final communalWidgetDaoProvider:Ljavax/inject/Provider;

.field public final communalWidgetHost:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

.field public final defaultWidgets:[Ljava/lang/String;

.field public final logger:Lcom/android/systemui/log/core/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/communal/widgets/CommunalWidgetHost;Ljavax/inject/Provider;[Ljava/lang/String;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/android/systemui/communal/widgets/CommunalWidgetHost;",
            "Ljavax/inject/Provider;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/systemui/log/LogBuffer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/room/RoomDatabase$Callback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->communalWidgetHost:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    iput-object p4, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->communalWidgetDaoProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->defaultWidgets:[Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/log/core/Logger;

    const-string p2, "DefaultWidgetPopulation"

    invoke-direct {p1, p6, p2}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->logger:Lcom/android/systemui/log/core/Logger;

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 3

    new-instance v0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$onCreate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$onCreate$1;-><init>(Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
