.class public final Lcom/android/systemui/user/UserCreator$createUser$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $errorCallback:Ljava/lang/Runnable;

.field public final synthetic $successCallback:Ljava/util/function/Consumer;

.field public final synthetic $user:Landroid/content/pm/UserInfo;

.field public final synthetic $userCreationProgressDialog:Landroid/app/Dialog;

.field public final synthetic $userIcon:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Lcom/android/systemui/user/UserCreator;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;Landroid/app/Dialog;Ljava/lang/Runnable;Lcom/android/systemui/user/UserCreator;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            "Landroid/app/Dialog;",
            "Ljava/lang/Runnable;",
            "Lcom/android/systemui/user/UserCreator;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    iput-object p2, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userCreationProgressDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$errorCallback:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    iput-object p5, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$successCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userCreationProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$errorCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    iget-object v0, v0, Lcom/android/systemui/user/UserCreator;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    iget-object v1, v1, Lcom/android/systemui/user/UserCreator;->userManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    iget-object v1, v0, Lcom/android/systemui/user/UserCreator;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;

    iget-object v3, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    invoke-direct {v2, v3, v0, v4}, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/user/UserCreator;Landroid/content/pm/UserInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$userCreationProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$successCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1;->$user:Landroid/content/pm/UserInfo;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
