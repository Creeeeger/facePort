.class Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;
.super Landroid/os/Handler;
.source "PkgIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconLoaderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;Landroid/os/Looper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    .line 58
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;Landroid/os/Looper;Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 63
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    invoke-static {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->-$$Nest$fgetmContext(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    iget-object v2, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->pkgName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->uid:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->uid:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->-$$Nest$maddToCache(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    invoke-static {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->-$$Nest$fgetmUiUpdateHandler(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;)Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    invoke-static {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->-$$Nest$fgetmUiUpdateHandler(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;)Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
