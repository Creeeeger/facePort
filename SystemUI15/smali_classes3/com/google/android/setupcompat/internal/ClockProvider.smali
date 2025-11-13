.class public final Lcom/google/android/setupcompat/internal/ClockProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SYSTEM_TICKER:Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;

.field public static ticker:Lcom/google/android/setupcompat/internal/Ticker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->SYSTEM_TICKER:Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetInstance()V
    .locals 1

    sget-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->SYSTEM_TICKER:Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    return-void
.end method

.method public static setInstance(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/setupcompat/internal/ClockProvider$Supplier<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)V

    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    return-void
.end method
