.class public Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;
.super Ljava/lang/Object;
.source "WifiApConditionHandler.java"

# interfaces
.implements Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;


# instance fields
.field private mApStatus:I

.field private mCount:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$mhandleWifiApStateChanged(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->handleWifiApStateChanged(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mCount:I

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mApStatus:I

    .line 30
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private handleWifiApStateChanged(Landroid/content/Context;I)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiApStateChanged:  Wi-Fi AP State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApBixbyRoutine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    .line 130
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mApStatus:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 132
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mApStatus:I

    .line 133
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/RoutineSdkProvider;->getInstance()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineSdk;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineSdk;->getConditionStatusManager()Lcom/samsung/android/sdk/routines/v3/interfaces/ConditionStatusManager;

    move-result-object p0

    const-string p2, "hotspot_condition_tag"

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/interfaces/ConditionStatusManager;->notifyConditionChanged(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback<",
            "Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;",
            ">;)V"
        }
    .end annotation

    .line 47
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$Valid;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$Valid;-><init>()V

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "WifiApBixbyRoutine"

    const-string p2, "getParameterLabel "

    .line 52
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p2, "toggle_config_key"

    invoke-virtual {p3, p2, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->switch_on_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isSatisfied(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback<",
            "Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;",
            ">;)V"
        }
    .end annotation

    .line 63
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p2, "toggle_config_key"

    invoke-virtual {p3, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isSatisfied  instanceId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " mApStatus: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mApStatus:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " paramVal: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiApBixbyRoutine"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 65
    iget p3, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mApStatus:I

    if-eq p3, p2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mApStatus:I

    if-nez p0, :cond_2

    .line 66
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->NOT_SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 0

    .line 75
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isSupported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiApBixbyRoutine"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 78
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object p0

    .line 80
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object p0
.end method

.method public onDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)V
    .locals 0

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDisabled  mCount: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiApBixbyRoutine"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mCount:I

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 88
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mCount:I

    if-nez p2, :cond_0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)V
    .locals 2

    .line 96
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "toggle_config_key"

    invoke-virtual {p3, v0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 97
    iget p3, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mCount:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mCount:I

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnabled: toggleVal: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " instanceId: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mCount:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mCount:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiApBixbyRoutine"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mCount:I

    if-ne p2, v0, :cond_0

    .line 100
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 101
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
    .locals 0

    const-string p0, "WifiApBixbyRoutine"

    const-string p1, "onRequestErrorDialogContents "

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    const-string p1, "Action valid state is not checked, Make Action state valid"

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;-><init>(Ljava/lang/String;)V

    const-string p1, "Action Not Performed"

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->setDialogTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    return-object p0
.end method

.method public onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
    .locals 1

    const-string p0, "WifiApBixbyRoutine"

    const-string p2, "onRequestTemplateContents "

    .line 109
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->mobileap:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setOnLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setOffLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setDefaultSelection(Z)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->build()Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    move-result-object p0

    return-object p0
.end method
