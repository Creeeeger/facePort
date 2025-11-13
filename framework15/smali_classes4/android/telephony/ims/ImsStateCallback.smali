.class public abstract Landroid/telephony/ims/ImsStateCallback;
.super Ljava/lang/Object;
.source "ImsStateCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;,
        Landroid/telephony/ims/ImsStateCallback$DisconnectedReason;
    }
.end annotation


# static fields
.field public static final whitelist REASON_IMS_SERVICE_DISCONNECTED:I = 0x3

.field public static final whitelist REASON_IMS_SERVICE_NOT_READY:I = 0x6

.field public static final whitelist REASON_NO_IMS_SERVICE_CONFIGURED:I = 0x4

.field public static final whitelist REASON_SUBSCRIPTION_INACTIVE:I = 0x5

.field public static final whitelist REASON_UNKNOWN_PERMANENT_ERROR:I = 0x2

.field public static final whitelist REASON_UNKNOWN_TEMPORARY_ERROR:I = 0x1


# instance fields
.field private blacklist mCallback:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;


# direct methods
.method public static synthetic blacklist $r8$lambda$p3fHUvWpsuMC2srOcr24kXUgqA8(Landroid/telephony/ims/ImsStateCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/ImsStateCallback;->lambda$binderDied$0()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$binderDied$0()V
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsStateCallback;->onError()V

    return-void
.end method


# virtual methods
.method public final blacklist binderDied()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback;->mCallback:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback;->mCallback:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/ImsStateCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telephony/ims/ImsStateCallback$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback;->mCallback:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    return-object v0
.end method

.method public blacklist init(Ljava/util/concurrent/Executor;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;-><init>(Landroid/telephony/ims/ImsStateCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsStateCallback;->mCallback:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsStateCallback Executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onAvailable()V
.end method

.method public abstract whitelist onError()V
.end method

.method public abstract whitelist onUnavailable(I)V
.end method
