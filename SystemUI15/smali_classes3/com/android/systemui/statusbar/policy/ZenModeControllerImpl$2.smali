.class public final Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 14

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    const-string/jumbo v0, "zen_mode"

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "Zen mode setting changed to "

    const-string v2, "ZenModeController"

    invoke-static {p1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenMode(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireSafeChange(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz p1, :cond_3

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v4, :cond_3

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "zen_duration"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "manual"

    const-string/jumbo v4, "zen_mode_byRuleApp"

    const-string v0, ""

    const-string v1, "NSTE0300"

    const-string/jumbo v2, "zen_mode_from"

    const-string/jumbo v6, "zen_mode_duration"

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v10, "zen_mode_from"

    const-string v11, "byRule"

    const-string v8, ""

    const-string v9, "NSTE0300"

    const-string/jumbo v12, "zen_mode_byRuleApp"

    invoke-static/range {v8 .. v13}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method
