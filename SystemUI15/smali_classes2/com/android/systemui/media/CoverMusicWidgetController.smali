.class public final Lcom/android/systemui/media/CoverMusicWidgetController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final addVisibilityListenerConsumer:Ljava/util/function/Consumer;

.field public enabled:Z

.field public final lifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mediaPauseTimerHandler:Landroid/os/Handler;

.field public final observer:Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;

.field public final onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

.field public pauseTimerStartedTime:J

.field public playerVisible:Z

.field public final removeVisibilityListenerConsumer:Ljava/util/function/Consumer;

.field public final subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public final widgetDisableRunnable:Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/CoverMusicWidgetController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/CoverMusicWidgetController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;",
            ">;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->addVisibilityListenerConsumer:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->removeVisibilityListenerConsumer:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iput-object p4, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->lifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->mediaPauseTimerHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;-><init>(Lcom/android/systemui/media/CoverMusicWidgetController;)V

    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->widgetDisableRunnable:Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->enabled:Z

    new-instance p1, Lcom/android/systemui/media/CoverMusicWidgetController$onPlayerVisibilityListener$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/CoverMusicWidgetController$onPlayerVisibilityListener$2;-><init>(Lcom/android/systemui/media/CoverMusicWidgetController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;-><init>(Lcom/android/systemui/media/CoverMusicWidgetController;)V

    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->observer:Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;

    return-void
.end method


# virtual methods
.method public final enableWidget(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->enabled:Z

    const-string v1, "enabled: "

    const-string v2, ", enable : "

    const-string v3, "CoverMusicWidgetController"

    invoke-static {v1, v2, v3, v0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->enabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->enabled:Z

    const-string v0, "com.samsung.android.widgetProviderName"

    const-string v1, "MusicTile"

    invoke-static {v0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SubScreenManager"

    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p1, :cond_1

    const-string p0, "enableTask() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "enableTask() "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->enableTask(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p1, :cond_3

    const-string p1, "disableTask() no plugin"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "disableTask() "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->disableTask(Landroid/os/Bundle;)V

    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.samsung.android.widgetComponentName"

    const-string v2, "com.samsung.android.app.aodservice/MusicTile"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "visible"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_4

    const-string/jumbo p0, "updateCapsule() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->updateCapsule(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method
