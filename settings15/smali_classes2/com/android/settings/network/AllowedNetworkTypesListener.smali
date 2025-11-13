.class public final Lcom/android/settings/network/AllowedNetworkTypesListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field mListener:Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final onAllowedNetworkTypesChanged(IJ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mListener:Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;->onAllowedNetworkTypesChanged()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onAllowedNetworkChanged: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkModeListener"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final setAllowedNetworkTypesListener(Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mListener:Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;

    return-void
.end method
