.class public final Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public a:Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

.field public final d:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

.field public final e:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->d:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->e:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    return-void
.end method
