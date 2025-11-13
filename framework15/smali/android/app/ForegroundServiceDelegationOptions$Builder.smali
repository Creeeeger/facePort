.class public Landroid/app/ForegroundServiceDelegationOptions$Builder;
.super Ljava/lang/Object;
.source "ForegroundServiceDelegationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceDelegationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field blacklist mClientAppThread:Landroid/app/IApplicationThread;

.field blacklist mClientInstanceName:Ljava/lang/String;

.field blacklist mClientNotification:Landroid/app/Notification;

.field blacklist mClientNotificationId:I

.field blacklist mClientPackageName:Ljava/lang/String;

.field blacklist mClientPid:I

.field blacklist mClientUid:I

.field blacklist mDelegationService:I

.field blacklist mForegroundServiceTypes:I

.field blacklist mSticky:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/ForegroundServiceDelegationOptions;
    .locals 12

    new-instance v11, Landroid/app/ForegroundServiceDelegationOptions;

    iget v1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPid:I

    iget v2, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientUid:I

    iget-object v3, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientAppThread:Landroid/app/IApplicationThread;

    iget-boolean v5, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mSticky:Z

    iget-object v6, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientInstanceName:Ljava/lang/String;

    iget v7, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mForegroundServiceTypes:I

    iget v8, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mDelegationService:I

    iget v9, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientNotificationId:I

    iget-object v10, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientNotification:Landroid/app/Notification;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/app/ForegroundServiceDelegationOptions;-><init>(IILjava/lang/String;Landroid/app/IApplicationThread;ZLjava/lang/String;IIILandroid/app/Notification;)V

    return-object v11
.end method

.method public blacklist setClientAppThread(Landroid/app/IApplicationThread;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientAppThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public blacklist setClientInstanceName(Ljava/lang/String;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientInstanceName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setClientNotification(ILandroid/app/Notification;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0

    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientNotificationId:I

    iput-object p2, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientNotification:Landroid/app/Notification;

    return-object p0
.end method

.method public blacklist setClientPackageName(Ljava/lang/String;)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setClientPid(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0

    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientPid:I

    return-object p0
.end method

.method public blacklist setClientUid(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0

    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mClientUid:I

    return-object p0
.end method

.method public blacklist setDelegationService(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0

    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mDelegationService:I

    return-object p0
.end method

.method public blacklist setForegroundServiceTypes(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0

    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mForegroundServiceTypes:I

    return-object p0
.end method

.method public blacklist setSticky(Z)Landroid/app/ForegroundServiceDelegationOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/ForegroundServiceDelegationOptions$Builder;->mSticky:Z

    return-object p0
.end method
