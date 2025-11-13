.class public final Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field public final activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final broadcastDialogController:Lcom/android/systemui/bluetooth/BroadcastDialogController;

.field public final instanceId:Lcom/android/internal/logging/InstanceId;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mediaControl:Lkotlinx/coroutines/flow/Flow;

.field public final mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

.field public final mediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

.field public final onAnyMediaConfigurationChange:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->SETTINGS_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/InstanceId;Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Lcom/android/systemui/bluetooth/BroadcastDialogController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->instanceId:Lcom/android/internal/logging/InstanceId;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iput-object p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p7, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    iput-object p8, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p9, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->mediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    iput-object p10, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->broadcastDialogController:Lcom/android/systemui/bluetooth/BroadcastDialogController;

    iget-object p1, p3, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->selectedUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->mediaControl:Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p3, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->onAnyMediaConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->onAnyMediaConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final launchOverLockscreen(Landroid/app/PendingIntent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/ActivityIntentHelper;->wouldPendingShowOverLockscreen(ILandroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/BroadcastOptions;->setInteractive(Z)Landroid/app/BroadcastOptions;

    invoke-virtual {v1, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->instanceId:Lcom/android/internal/logging/InstanceId;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "pending intent of "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was canceled"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaControlInteractor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
