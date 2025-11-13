.class public final Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;

    iget-object p3, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, p0, v0}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p3, v0, v0, p1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
