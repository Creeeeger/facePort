.class final Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;
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
.field final synthetic $callback:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;

.field final synthetic this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;->$callback:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;->$callback:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->callbackCompatMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->removeCallback(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
