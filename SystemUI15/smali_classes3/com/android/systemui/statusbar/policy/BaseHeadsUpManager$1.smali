.class public final Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

.field public final synthetic val$globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;Landroid/os/Handler;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$1;->val$globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$1;->val$globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v0, "heads_up_snooze_length_ms"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mSnoozeLengthMs:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mSnoozeLengthMs:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logSnoozeLengthChange$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logSnoozeLengthChange$2;

    const-string v2, "HeadsUpManager"

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    return-void
.end method
