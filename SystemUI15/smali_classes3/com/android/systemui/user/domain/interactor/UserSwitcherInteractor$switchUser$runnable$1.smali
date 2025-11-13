.class public final Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$switchUser$runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$switchUser$runnable$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iput p2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$switchUser$runnable$1;->$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$switchUser$runnable$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->activityManager:Landroid/app/ActivityManager;

    iget p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$switchUser$runnable$1;->$userId:I

    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "UserSwitcherInteractor"

    const-string v1, "Couldn\'t switch user."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
