.class final Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$notifyChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$notifyChanged$1;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    iget-object v1, v0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

    invoke-direct {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$notifyChanged$1;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;->notifyConditionChanged(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
