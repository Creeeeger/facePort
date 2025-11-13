.class Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$2;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$2;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;

    iget-object p2, p2, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$2;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$2;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v0, v0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mContentObserver:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;

    invoke-interface {v1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$2;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "reduce_bright_colors_activated"

    iget-object p0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mContentObserver:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
