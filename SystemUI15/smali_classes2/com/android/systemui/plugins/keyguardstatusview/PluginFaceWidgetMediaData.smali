.class public Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;"
        }
    .end annotation
.end field

.field actionsToShowInCompact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field active:Z

.field app:Ljava/lang/String;

.field appIcon:Landroid/graphics/drawable/Drawable;

.field artist:Ljava/lang/CharSequence;

.field artwork:Landroid/graphics/drawable/Icon;

.field backgroundColor:I

.field clickIntent:Landroid/app/PendingIntent;

.field device:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

.field foregroundColor:I

.field hasCheckedForResume:Z

.field initialized:Z

.field isPlaying:Z

.field notificationKey:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field resumeAction:Ljava/lang/Runnable;

.field resumption:Z

.field song:Ljava/lang/CharSequence;

.field token:Landroid/media/session/MediaSession$Token;

.field userId:I


# direct methods
.method public constructor <init>(IZIILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;ZLjava/lang/Runnable;ZLjava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZII",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/media/session/MediaSession$Token;",
            "Landroid/app/PendingIntent;",
            "Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;",
            "Z",
            "Ljava/lang/Runnable;",
            "Z",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->userId:I

    move v1, p2

    iput-boolean v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->initialized:Z

    move v1, p3

    iput v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->backgroundColor:I

    move v1, p4

    iput v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->foregroundColor:I

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->app:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->appIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artist:Ljava/lang/CharSequence;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->song:Ljava/lang/CharSequence;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artwork:Landroid/graphics/drawable/Icon;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actions:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actionsToShowInCompact:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->packageName:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->token:Landroid/media/session/MediaSession$Token;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->clickIntent:Landroid/app/PendingIntent;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->device:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->active:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumeAction:Ljava/lang/Runnable;

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumption:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->notificationKey:Ljava/lang/String;

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->hasCheckedForResume:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->isPlaying:Z

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actions:Ljava/util/List;

    return-object p0
.end method

.method public getActionsToShowInCompact()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actionsToShowInCompact:Ljava/util/List;

    return-object p0
.end method

.method public getApp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->app:Ljava/lang/String;

    return-object p0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getArtist()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getArtwork()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artwork:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->backgroundColor:I

    return p0
.end method

.method public getClickIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->clickIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getDevice()Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->device:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    return-object p0
.end method

.method public getForegroundColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->foregroundColor:I

    return p0
.end method

.method public getNotificationKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->notificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getResumeAction()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumeAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getSong()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->song:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getToken()Landroid/media/session/MediaSession$Token;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->token:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->userId:I

    return p0
.end method

.method public isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->active:Z

    return p0
.end method

.method public isHasCheckedForResume()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->hasCheckedForResume:Z

    return p0
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->initialized:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->isPlaying:Z

    return p0
.end method

.method public isResumption()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumption:Z

    return p0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actions:Ljava/util/List;

    return-void
.end method

.method public setActionsToShowInCompact(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actionsToShowInCompact:Ljava/util/List;

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->active:Z

    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->app:Ljava/lang/String;

    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setArtist(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artist:Ljava/lang/CharSequence;

    return-void
.end method

.method public setArtwork(Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artwork:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->backgroundColor:I

    return-void
.end method

.method public setClickIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->clickIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setDevice(Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->device:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->foregroundColor:I

    return-void
.end method

.method public setHasCheckedForResume(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->hasCheckedForResume:Z

    return-void
.end method

.method public setInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->initialized:Z

    return-void
.end method

.method public setNotificationKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->notificationKey:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->isPlaying:Z

    return-void
.end method

.method public setResumeAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumeAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setResumption(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumption:Z

    return-void
.end method

.method public setSong(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->song:Ljava/lang/CharSequence;

    return-void
.end method

.method public setToken(Landroid/media/session/MediaSession$Token;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->token:Landroid/media/session/MediaSession$Token;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->userId:I

    return-void
.end method
