.class public final synthetic Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/user/CreateUserActivity;

.field public final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/user/CreateUserActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    iput-object p2, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Boolean;

    check-cast p1, Landroid/content/pm/UserInfo;

    sget v1, Lcom/android/systemui/user/CreateUserActivity;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, v0, Lcom/android/systemui/user/CreateUserActivity;->mUserCreator:Lcom/android/systemui/user/UserCreator;

    iget-object v1, v1, Lcom/android/systemui/user/UserCreator;->userManager:Landroid/os/UserManager;

    invoke-virtual {v1, p0}, Landroid/os/UserManager;->setUserAdmin(I)V

    :cond_0
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    :try_start_0
    iget-object p1, v0, Lcom/android/systemui/user/CreateUserActivity;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CreateUserActivity"

    const-string v1, "Couldn\'t switch user."

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
