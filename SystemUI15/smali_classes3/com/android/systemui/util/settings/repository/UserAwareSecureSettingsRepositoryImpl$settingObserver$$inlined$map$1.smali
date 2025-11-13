.class public final Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow;"
    }
.end annotation


# instance fields
.field final synthetic $defaultValue$inlined:Z

.field final synthetic $name$inlined:Ljava/lang/String;

.field final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field final synthetic $userId$inlined:I

.field final synthetic this$0:Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;->this$0:Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;

    iput-object p3, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;->$name$inlined:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;->$defaultValue$inlined:Z

    iput p5, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;->$userId$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    new-instance v7, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1$2;

    iget-object v3, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;->this$0:Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;

    iget-object v4, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;->$name$inlined:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;->$defaultValue$inlined:Z

    iget v6, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;->$userId$inlined:I

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;Ljava/lang/String;ZI)V

    invoke-interface {v0, v7, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
