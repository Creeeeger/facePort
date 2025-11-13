.class public abstract Lcom/android/app/tracing/coroutines/TraceContextElementKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final traceThreadLocal:Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;

    invoke-direct {v0}, Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;-><init>()V

    sput-object v0, Lcom/android/app/tracing/coroutines/TraceContextElementKt;->traceThreadLocal:Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;

    return-void
.end method
