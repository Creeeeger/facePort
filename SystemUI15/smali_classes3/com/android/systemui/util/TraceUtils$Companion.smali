.class public final Lcom/android/systemui/util/TraceUtils$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/TraceUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final namedRunnable(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/util/TraceUtils$Companion$namedRunnable$1;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/TraceUtils$Companion$namedRunnable$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public final traceRunnable(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/util/TraceUtils$Companion$traceRunnable$1;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/TraceUtils$Companion$traceRunnable$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method
