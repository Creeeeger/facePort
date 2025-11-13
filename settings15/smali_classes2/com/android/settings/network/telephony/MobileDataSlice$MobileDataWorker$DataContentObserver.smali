.class public final Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSliceBackgroundWorker:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;->mSliceBackgroundWorker:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;->mSliceBackgroundWorker:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method
