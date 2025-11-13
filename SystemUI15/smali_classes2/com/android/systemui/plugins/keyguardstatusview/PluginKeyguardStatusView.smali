.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_FACE_WIDGET"
    version = 0x0
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_FACE_WIDGET"

.field public static final MAJOR_VERSION:I = 0x3

.field public static final MINOR_VERSION:I = 0x1e

.field public static final VERSION:I = 0xbd6


# virtual methods
.method public abstract attachFaceWidgetContainer(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3fc
    .end annotation
.end method

.method public abstract attachFaceWidgetContainer(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x40f
    .end annotation
.end method

.method public abstract createFullNowBar(Landroid/view/View;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbc2
    .end annotation
.end method

.method public abstract destroyFullNowBar()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbc2
    .end annotation
.end method

.method public abstract dismissFaceWidgetDashBoard()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x40b
    .end annotation
.end method

.method public abstract dozeTimeTick()V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getAODStateProvider()Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x401
    .end annotation
.end method

.method public abstract getClockProvider()Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;
.end method

.method public abstract getContainerView()Landroid/view/View;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3e8
    .end annotation
.end method

.method public abstract getContentsContainers()Ljava/util/List;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3fc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentClockType()I
.end method

.method public abstract getMinTopMargin(IZ)I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f0
    .end annotation
.end method

.method public abstract getNotificationController()Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;
.end method

.method public abstract getPositionAlgorithm()Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;
.end method

.method public abstract getSecKeyguardSidePadding()Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;
.end method

.method public abstract isFaceWidgetFullScreenShowing()Z
.end method

.method public abstract isInContentBounds(FF)Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x40a
    .end annotation
.end method

.method public abstract isMediaOutputRemoteviewsVisible()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x408
    .end annotation
.end method

.method public abstract onBackRequested()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbd3
    .end annotation
.end method

.method public abstract onCancelEditMode()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x410
    .end annotation
.end method

.method public abstract onClassLoaderDiscarded()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x405
    .end annotation
.end method

.method public abstract onClockClicked(II)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbbf
    .end annotation
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbd1
    .end annotation
.end method

.method public abstract onDensityOrFontScaleChanged()V
.end method

.method public abstract onFinishedGoingToSleep()V
.end method

.method public abstract onFinishedWakingUp()V
.end method

.method public abstract onFolderStateChanged(Z)V
.end method

.method public abstract onKeyguardVisibilityHelperChanged(I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x415
    .end annotation
.end method

.method public abstract onMediaPlayerLastExpandedPrefChanged(Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d8
    .end annotation
.end method

.method public abstract onNioLayoutUpdated(IIIIIIIF)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbd2
    .end annotation
.end method

.method public abstract onNioViewStateUpdated(FI)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbd5
    .end annotation
.end method

.method public abstract onStartedGoingToSleep()V
.end method

.method public abstract onStartedWakingUp()V
.end method

.method public abstract onStartingEditModeAnimation(Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x410
    .end annotation
.end method

.method public abstract onStartingEditModeTouchDownCanceled()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbd0
    .end annotation
.end method

.method public abstract onStartingEditModeTouchDownStarted()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbd0
    .end annotation
.end method

.method public abstract onUpdateLockscreenHiddenItems()V
.end method

.method public abstract setDarkAmount(F)V
.end method

.method public abstract setDozing(Z)V
.end method

.method public abstract setExpandState(ZI)V
.end method

.method public abstract setFullNowBarProgress(Ljava/lang/Float;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbc2
    .end annotation
.end method

.method public abstract setMediaOutputVisibility(Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x408
    .end annotation
.end method

.method public abstract setPluginFaceWidgetCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView$Callback;)V
.end method

.method public abstract setTouchEnabled(Z)V
.end method
