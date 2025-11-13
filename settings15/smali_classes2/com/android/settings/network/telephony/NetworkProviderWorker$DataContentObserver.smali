.class public final Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mNetworkProviderWorker:Lcom/android/settings/network/telephony/NetworkProviderWorker;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/settings/network/telephony/NetworkProviderWorker;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "NetworkProviderWorker"

    const-string v0, "DataContentObserver: init"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->mNetworkProviderWorker:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const-string p1, "NetworkProviderWorker"

    const-string v0, "DataContentObserver: onChange"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$DataContentObserver;->mNetworkProviderWorker:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final register(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/settings/network/MobileDataContentObserver;->getObservableUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataContentObserver: register uri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkProviderWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
