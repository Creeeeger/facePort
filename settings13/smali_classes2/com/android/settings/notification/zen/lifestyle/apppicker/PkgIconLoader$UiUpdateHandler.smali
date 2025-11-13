.class Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;
.super Landroid/os/Handler;
.source "PkgIconLoader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;

    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->-$$Nest$mgetIconFromCache(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 50
    iget-object p1, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
