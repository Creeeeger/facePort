.class public final Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;
.super Lcom/android/systemui/qs/SettingObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lcom/android/systemui/util/settings/GlobalSettings;Landroid/os/Handler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Landroid/os/Handler;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    const-string/jumbo p1, "user_switcher_enabled"

    invoke-direct {p0, p3, p4, p1, p5}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p2, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1$handleValueChanged$1;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1$observer$1$handleValueChanged$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
