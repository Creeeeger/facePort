.class public abstract Lcom/android/ims/internal/uce/UceServiceBase;
.super Ljava/lang/Object;
.source "UceServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
    }
.end annotation


# instance fields
.field private blacklist mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBinder()Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;-><init>(Lcom/android/ims/internal/uce/UceServiceBase;Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder-IA;)V

    iput-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    return-object v0
.end method

.method protected blacklist onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onDestroyOptionsService(I)V
    .locals 0

    return-void
.end method

.method protected blacklist onDestroyPresService(I)V
    .locals 0

    return-void
.end method

.method protected blacklist onGetOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist onGetOptionsService(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist onGetPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist onGetPresenceService(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist onGetServiceStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onIsServiceStarted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onServiceStart(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onStopService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
