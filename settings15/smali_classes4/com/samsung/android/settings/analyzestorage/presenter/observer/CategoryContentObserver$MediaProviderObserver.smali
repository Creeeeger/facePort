.class public final Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onChange uri "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "uri is null"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaProviderObserver"

    invoke-static {v0, p2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;->onChange(Z)V

    return-void
.end method
