.class public Landroid/app/ForegroundServiceDelegationOptions;
.super Ljava/lang/Object;
.source "ForegroundServiceDelegationOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ForegroundServiceDelegationOptions$Builder;,
        Landroid/app/ForegroundServiceDelegationOptions$DelegationService;
    }
.end annotation


# static fields
.field public static final blacklist DELEGATION_SERVICE_CAMERA:I = 0x7

.field public static final blacklist DELEGATION_SERVICE_CONNECTED_DEVICE:I = 0x5

.field public static final blacklist DELEGATION_SERVICE_DATA_SYNC:I = 0x1

.field public static final blacklist DELEGATION_SERVICE_DEFAULT:I = 0x0

.field public static final blacklist DELEGATION_SERVICE_HEALTH:I = 0x9

.field public static final blacklist DELEGATION_SERVICE_LOCATION:I = 0x4

.field public static final blacklist DELEGATION_SERVICE_MEDIA_PLAYBACK:I = 0x2

.field public static final blacklist DELEGATION_SERVICE_MEDIA_PROJECTION:I = 0x6

.field public static final blacklist DELEGATION_SERVICE_MICROPHONE:I = 0x8

.field public static final blacklist DELEGATION_SERVICE_PHONE_CALL:I = 0x3

.field public static final blacklist DELEGATION_SERVICE_REMOTE_MESSAGING:I = 0xa

.field public static final blacklist DELEGATION_SERVICE_SPECIAL_USE:I = 0xc

.field public static final blacklist DELEGATION_SERVICE_SYSTEM_EXEMPTED:I = 0xb


# instance fields
.field public final blacklist mClientAppThread:Landroid/app/IApplicationThread;

.field public blacklist mClientInstanceName:Ljava/lang/String;

.field public final blacklist mClientNotification:Landroid/app/Notification;

.field public final blacklist mClientNotificationId:I

.field public final blacklist mClientPackageName:Ljava/lang/String;

.field public final blacklist mClientPid:I

.field public final blacklist mClientUid:I

.field public final blacklist mDelegationService:I

.field public final blacklist mForegroundServiceTypes:I

.field public final blacklist mSticky:Z


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;Landroid/app/IApplicationThread;ZLjava/lang/String;II)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/app/ForegroundServiceDelegationOptions;-><init>(IILjava/lang/String;Landroid/app/IApplicationThread;ZLjava/lang/String;IIILandroid/app/Notification;)V

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Landroid/app/IApplicationThread;ZLjava/lang/String;IIILandroid/app/Notification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPid:I

    iput p2, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    iput-object p3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientAppThread:Landroid/app/IApplicationThread;

    iput-boolean p5, p0, Landroid/app/ForegroundServiceDelegationOptions;->mSticky:Z

    iput-object p6, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientInstanceName:Ljava/lang/String;

    iput p7, p0, Landroid/app/ForegroundServiceDelegationOptions;->mForegroundServiceTypes:I

    iput p8, p0, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    iput p9, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientNotificationId:I

    iput-object p10, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientNotification:Landroid/app/Notification;

    return-void
.end method

.method public static blacklist serviceCodeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SPECIAL_USE"

    return-object v0

    :pswitch_1
    const-string v0, "SYSTEM_EXEMPTED"

    return-object v0

    :pswitch_2
    const-string v0, "REMOTE_MESSAGING"

    return-object v0

    :pswitch_3
    const-string v0, "HEALTH"

    return-object v0

    :pswitch_4
    const-string v0, "MICROPHONE"

    return-object v0

    :pswitch_5
    const-string v0, "CAMERA"

    return-object v0

    :pswitch_6
    const-string v0, "MEDIA_PROJECTION"

    return-object v0

    :pswitch_7
    const-string v0, "CONNECTED_DEVICE"

    return-object v0

    :pswitch_8
    const-string v0, "LOCATION"

    return-object v0

    :pswitch_9
    const-string v0, "PHONE_CALL"

    return-object v0

    :pswitch_a
    const-string v0, "MEDIA_PLAYBACK"

    return-object v0

    :pswitch_b
    const-string v0, "DATA_SYNC"

    return-object v0

    :pswitch_c
    const-string v0, "DEFAULT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getComponentName()Landroid/content/ComponentName;
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    invoke-static {v3}, Landroid/app/ForegroundServiceDelegationOptions;->serviceCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ForegroundServiceDelegate{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "service:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    invoke-static {v3}, Landroid/app/ForegroundServiceDelegationOptions;->serviceCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "pid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist isSameDelegate(Landroid/app/ForegroundServiceDelegationOptions;)Z
    .locals 2

    iget v0, p0, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    iget v1, p1, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    iget v1, p1, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientPid:I

    iget v1, p1, Landroid/app/ForegroundServiceDelegationOptions;->mClientPid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/ForegroundServiceDelegationOptions;->mClientInstanceName:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/ForegroundServiceDelegationOptions;->mClientInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
