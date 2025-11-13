.class public final Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v1, "heads_up_notifications_enabled"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logHeadsUpFeatureChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logHeadsUpFeatureChanged$2;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "InterruptionStateProvider"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v1, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v2, v6, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    if-eq v0, v2, :cond_1

    if-nez v2, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logWillDismissAll$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logWillDismissAll$2;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p1, v4, v1, v0, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->releaseAllImmediately()V

    :cond_1
    return-void
.end method
