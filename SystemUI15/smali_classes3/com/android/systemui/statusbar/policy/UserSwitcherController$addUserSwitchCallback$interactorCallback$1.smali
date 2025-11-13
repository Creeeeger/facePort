.class public final Lcom/android/systemui/statusbar/policy/UserSwitcherController$addUserSwitchCallback$interactorCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addUserSwitchCallback$interactorCallback$1;->$callback:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addUserSwitchCallback$interactorCallback$1;->$callback:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;->onUserSwitched()V

    return-void
.end method
