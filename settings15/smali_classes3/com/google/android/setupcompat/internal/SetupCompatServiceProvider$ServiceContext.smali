.class final Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final compatService:Lcom/google/android/setupcompat/ISetupCompatService;

.field public final state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/ISetupCompatService;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/ISetupCompatService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    iput-object p2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    sget-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-ne p1, p0, :cond_0

    const-string p0, "CompatService cannot be null when state is connected"

    invoke-static {p2, p0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
