.class public Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileDataSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileDataWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker;"
    }
.end annotation


# instance fields
.field public mMobileDataObserver:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;

    return-void
.end method

.method public final onSlicePinned()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;

    iget-object p0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/android/settings/network/MobileDataContentObserver;->getObservableUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onSliceUnpinned()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;

    iget-object p0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
