.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    const-string v2, "PluginFaceWidgetManager"

    if-eqz v0, :cond_d

    const/4 p1, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    const-string v4, "createFullNowBar"

    if-eq v0, v1, :cond_2

    if-eq v0, p1, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string p1, "MSG_SHOW_BUDS_INFO"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSoundCraftController:Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSoundCraftControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSoundCraftController:Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;

    new-instance v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    iput-object v0, p1, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;->listener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p1, :cond_12

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSoundCraftController:Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;->createView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->createFullNowBar(Landroid/view/View;)V

    goto/16 :goto_6

    :cond_2
    const-string p1, "MSG_SHOW_MEDIA_OUTPUT"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaOutputController:Lcom/android/systemui/media/mediaoutput/MediaOutputController;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaOutputControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/MediaOutputController;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaOutputController:Lcom/android/systemui/media/mediaoutput/MediaOutputController;

    new-instance v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    iput-object v0, p1, Lcom/android/systemui/media/mediaoutput/MediaOutputController;->listener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p1, :cond_12

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaOutputController:Lcom/android/systemui/media/mediaoutput/MediaOutputController;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mediaPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/mediaoutput/MediaOutputController;->createView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->createFullNowBar(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaOutputDetailShowing:Z

    goto/16 :goto_6

    :cond_4
    const-string v0, "Attach container started"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v2, 0x0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mEditModeContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget-object v5, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    if-nez v5, :cond_6

    move-object v5, v1

    goto :goto_1

    :cond_6
    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mContainerView:Landroid/view/View;

    invoke-interface {v4, v5, v6, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->attachFaceWidgetContainer(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getContainerView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mContainerView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {v4}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getContentsContainers()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    iput-object v4, v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iput-object v0, v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    iput-object v5, v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mClockContainer:Landroid/view/View;

    goto :goto_2

    :cond_7
    iput-object v1, v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mClockContainer:Landroid/view/View;

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->updateFaceWidgetArea()V

    iput-boolean v3, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mIsConnected:Z

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    if-eqz v1, :cond_a

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_9
    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_a
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getAODStateProvider()Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/doze/PluginAODManager;->mPluginAODStateProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iget-object v0, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)V

    iput-object v0, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    :cond_b
    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->addListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v0, v0, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mEditModeListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSharedPrefListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusBarNioLayoutRepository:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->paddingLeft:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->paddingRight:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->totalHeight:I

    iget v4, p1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->topMargin:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->containerStartX:I

    iget v6, p1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->containerEndX:I

    iget v7, p1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->iconSize:I

    iget v8, p1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->iconScaleRatio:F

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onNioLayoutUpdated(IIIIIIIF)V

    goto/16 :goto_6

    :cond_d
    const-string v0, "Init Plugin Wrapper started"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;)V

    new-instance v2, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    const-class v3, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-direct {v2, v3, p1, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {v2}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p1, :cond_12

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->setPluginFaceWidgetCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    iput-object p1, v2, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    iput-object p1, v2, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    instance-of v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    if-eqz v2, :cond_f

    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    iget-object v4, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {v4}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getPositionAlgorithm()Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    move-result-object v4

    const-class v5, Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    invoke-direct {v3, v5, v4, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {v3}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    iput-object v3, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->loadDimens(Landroid/content/Context;Landroid/content/res/Resources;)V

    goto :goto_4

    :cond_e
    invoke-virtual {p1, v1, v1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->loadDimens(Landroid/content/Context;Landroid/content/res/Resources;)V

    :cond_f
    :goto_4
    new-instance p1, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getNotificationController()Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    move-result-object v1

    const-class v2, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    invoke-direct {p1, v2, v1, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {p1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->initPlugin(Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getClockProvider()Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    move-result-object v1

    const-class v2, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    invoke-direct {p1, v2, v1, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {p1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iput-object p1, v1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    iget-object p1, v1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;

    if-nez v2, :cond_10

    goto :goto_5

    :cond_10
    iget-object v3, v1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->registerClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    goto :goto_5

    :cond_11
    new-instance p1, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getSecKeyguardSidePadding()Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    move-result-object v1

    const-class v2, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    invoke-direct {p1, v2, v1, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {p1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginKeyguardSidePadding:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    :cond_12
    :goto_6
    return-void
.end method
