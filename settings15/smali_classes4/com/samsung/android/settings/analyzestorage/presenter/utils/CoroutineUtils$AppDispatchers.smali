.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/utils/CoroutineUtils$AppDispatchers;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CoroutineUtils$AppDispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    return-void
.end method
