.class public final Lcom/android/systemui/user/UserCreator$createUser$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $user:Landroid/content/pm/UserInfo;

.field public final synthetic $userIcon:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Lcom/android/systemui/user/UserCreator;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/user/UserCreator;Landroid/content/pm/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    iput-object p3, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;->$user:Landroid/content/pm/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;->$userIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    iget-object v1, v1, Lcom/android/systemui/user/UserCreator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;->$user:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;->this$0:Lcom/android/systemui/user/UserCreator;

    iget-object v2, v2, Lcom/android/systemui/user/UserCreator;->userManager:Landroid/os/UserManager;

    iget-object p0, p0, Lcom/android/systemui/user/UserCreator$createUser$1$1$1;->$user:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v0}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-void
.end method
