.class public final Lkotlinx/coroutines/flow/SharingStarted$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $$INSTANCE:Lkotlinx/coroutines/flow/SharingStarted$Companion;

.field public static final Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

.field public static final Lazily:Lkotlinx/coroutines/flow/StartedLazily;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    return-void
.end method

.method public static WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;
    .locals 5

    new-instance v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(JJ)V

    return-object v0
.end method
