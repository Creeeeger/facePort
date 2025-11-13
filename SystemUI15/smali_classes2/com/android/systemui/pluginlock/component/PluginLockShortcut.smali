.class public Lcom/android/systemui/pluginlock/component/PluginLockShortcut;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final KEY_SHORTCUT_ENABLED:Ljava/lang/String; = "lockscreen_show_shortcut"

.field private static final KEY_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final TAG:Ljava/lang/String; = "PluginLockShortcut"

.field private static final UPDATE_LOCKSTAR_DATA:Ljava/lang/String; = "update_lockstar_data"

.field private static final UPDATE_LOCKSTAR_DATA_ITEM:Ljava/lang/String; = "update_lockstar_data_item"

.field private static final VALUE_SHORTCUT_DISABLED:I = 0x0

.field private static final VALUE_SHORTCUT_ENABLED:I = 0x1


# instance fields
.field private final mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mIsDlsData:Z

.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mShortcutVisibility:I


# direct methods
.method public static synthetic $r8$lambda$tuVApe2FcnZbuLuLg8EZRiVuU6Q(Lcom/android/systemui/pluginlock/component/PluginLockShortcut;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockShortcut;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->workaroundForRecoveringShortcutSetting()V

    return-void
.end method

.method private getShortcutBackup()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getShortcutBackupValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method private getShortcutState()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getShortcutState()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 6

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChange() uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockShortcut"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-string v2, "lockscreen_show_shortcut"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string p0, "onChange() ignored"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->updateLockStarStoredData(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->recover()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "onChange() wrong state"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "loadData() mShortcutVisibility: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    const-string v0, "PluginLockShortcut"

    invoke-static {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private registerCallback(I)V
    .locals 3

    const-string v0, "registerCallback() value: "

    const-string v1, "PluginLockShortcut"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "lockscreen_show_shortcut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method private setShortcutBackup(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutBackup(I)V

    if-ltz p1, :cond_0

    const/4 p1, -0x3

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method private setShortcutState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method private setShortcutVisibility(I)V
    .locals 2

    const-string/jumbo v0, "setShortcutVisibility : "

    const-string v1, "PluginLockShortcut"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const-string v0, "lockscreen_show_shortcut"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    return-void
.end method

.method private unregisterCallback()V
    .locals 2

    const-string v0, "PluginLockShortcut"

    const-string/jumbo v1, "unregisterCallback() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method private updateLockStarStoredData(Landroid/net/Uri;)V
    .locals 5

    const-string v0, "PluginLockShortcut"

    if-eqz p1, :cond_1

    const-string v1, "lockscreen_show_shortcut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "action"

    const-string/jumbo v2, "update_lockstar_data"

    invoke-static {p1, v2}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v2, "update_lockstar_data_item"

    const-string/jumbo v3, "shortcut_visibility"

    invoke-static {v2, v3}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extras"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateLockStarStoredData() bundle"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onEventReceived(Landroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "updateLockStarStoredData, uri is null or shortcut isn\'t enabled"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private workaroundForRecoveringShortcutSetting()V
    .locals 2

    const-string v0, "lockscreen_show_shortcut"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    move-result v0

    const-string v1, "apply() state:"

    const-string v2, "PluginLockShortcut"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string p0, "apply() skip!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    const-string p1, "lockscreen_show_shortcut"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "apply() curValue: "

    invoke-static {p1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    const-string p1, "apply() dlsVisible visibility: "

    invoke-static {p2, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->registerCallback(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockShortcut"

    const-string v1, "recover()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutState(I)V

    return-void
.end method

.method public reset(Z)V
    .locals 3

    const-string v0, "reset() reconnectReq: "

    const-string v1, "PluginLockShortcut"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->unregisterCallback()V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    move-result p1

    const-string v2, "reset() state: "

    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq p1, v0, :cond_0

    const/4 v2, -0x2

    if-eq p1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutBackup()I

    move-result p1

    const-string v2, "reset() original: "

    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    move-result v0

    const-string/jumbo v1, "update() state: "

    const-string v2, "PluginLockShortcut"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    if-eqz v1, :cond_0

    const-string/jumbo p0, "update() skip!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->unregisterCallback()V

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string/jumbo p2, "update() visibility: "

    invoke-static {p1, p2, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq p1, v1, :cond_3

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->registerCallback(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutBackup()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    :goto_1
    return-void
.end method
