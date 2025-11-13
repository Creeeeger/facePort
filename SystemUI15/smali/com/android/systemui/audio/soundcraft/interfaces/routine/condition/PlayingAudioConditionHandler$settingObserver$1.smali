.class final Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$settingObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$settingObserver$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    iget-object v0, p1, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

    :cond_0
    iget-object p1, p1, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$settingObserver$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;->notifyConditionChanged(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
