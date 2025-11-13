.class public final Lcom/android/systemui/user/UserCreator$createUser$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $errorCallback:Ljava/lang/Runnable;

.field public final synthetic $successCallback:Ljava/util/function/Consumer;

.field public final synthetic $userCreationProgressDialog:Landroid/app/Dialog;

.field public final synthetic $userIcon:Landroid/graphics/drawable/Drawable;

.field public final synthetic $userName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/user/UserCreator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/UserCreator;Ljava/lang/String;Landroid/app/Dialog;Ljava/lang/Runnable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/UserCreator;",
            "Ljava/lang/String;",
            "Landroid/app/Dialog;",
            "Ljava/lang/Runnable;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->this$0:Lcom/android/systemui/user/UserCreator;

    iput-object p2, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->$userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->$userCreationProgressDialog:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->$errorCallback:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->$successCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->this$0:Lcom/android/systemui/user/UserCreator;

    iget-object v0, v0, Lcom/android/systemui/user/UserCreator;->userManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->$userName:Ljava/lang/String;

    const-string v2, "android.os.usertype.full.SECONDARY"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->this$0:Lcom/android/systemui/user/UserCreator;

    iget-object v0, v8, Lcom/android/systemui/user/UserCreator;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/user/UserCreator$createUser$1$1;

    iget-object v6, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->$userCreationProgressDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->$errorCallback:Ljava/lang/Runnable;

    iget-object v9, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/android/systemui/user/UserCreator$createUser$1;->$successCallback:Ljava/util/function/Consumer;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/user/UserCreator$createUser$1$1;-><init>(Landroid/content/pm/UserInfo;Landroid/app/Dialog;Ljava/lang/Runnable;Lcom/android/systemui/user/UserCreator;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
