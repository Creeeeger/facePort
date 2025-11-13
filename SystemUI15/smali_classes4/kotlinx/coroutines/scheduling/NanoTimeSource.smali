.class public final Lkotlinx/coroutines/scheduling/NanoTimeSource;
.super Lkotlinx/coroutines/scheduling/SchedulerTimeSource;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/NanoTimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/NanoTimeSource;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/NanoTimeSource;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/NanoTimeSource;->INSTANCE:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/SchedulerTimeSource;-><init>()V

    return-void
.end method
