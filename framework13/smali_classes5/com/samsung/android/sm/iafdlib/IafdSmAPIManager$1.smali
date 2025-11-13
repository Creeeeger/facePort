.class Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager$1;
.super Landroid/database/ContentObserver;
.source "IafdSmAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager$1;->this$0:Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 13
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dc.IafdSmAPIManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string/jumbo v0, "pkgName"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "versionCode"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 40
    .local v8, "versionCode":J
    const-string/jumbo v2, "resultCode"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 41
    .local v10, "resultCode":I
    const-string/jumbo v2, "versionName"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 42
    .local v11, "versionName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager$1;->this$0:Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;

    invoke-static {v2}, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->access$000(Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/samsung/android/sm/iafdlib/CheckUpdateCallback;

    .line 43
    .local v12, "updateCallback":Lcom/samsung/android/sm/iafdlib/CheckUpdateCallback;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v12, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz v12, :cond_1

    .line 45
    move-object v2, v12

    move v3, v10

    move-wide v4, v8

    move-object v6, v11

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/sm/iafdlib/CheckUpdateCallback;->onResult(IJLjava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager$1;->this$0:Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;

    invoke-static {v1}, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->access$000(Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    return-void
.end method
