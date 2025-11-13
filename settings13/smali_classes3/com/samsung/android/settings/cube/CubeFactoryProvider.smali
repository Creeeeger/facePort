.class public abstract Lcom/samsung/android/settings/cube/CubeFactoryProvider;
.super Ljava/lang/Object;
.source "CubeFactoryProvider.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mControlDataManager:Lcom/samsung/android/settings/cube/index/ControlDataManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlDataManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/cube/index/ControlDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mControlDataManager:Lcom/samsung/android/settings/cube/index/ControlDataManager;

    .line 32
    invoke-static {}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->getInstance()Lcom/samsung/android/settings/cube/CubeCallbackManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->registerCube(Lcom/samsung/android/settings/cube/CubeFactoryProvider;)V

    return-void
.end method

.method private requestUserInteraction(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlValue;)V
    .locals 3

    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/settings/cube/CubeInteractionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "controllerName"

    .line 119
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "controlData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "prefKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->getControlId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "controlId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestUserInteraction() prefKey = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CubeFactoryProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected getAllIndexedControlData()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/cube/index/ControlData;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mControlDataManager:Lcom/samsung/android/settings/cube/index/ControlDataManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->getAllIndexedControlData()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public abstract getCubeLabel()Ljava/lang/String;
.end method

.method protected getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 2

    .line 65
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferenceController() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CubeFactoryProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getValue(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mControlDataManager:Lcom/samsung/android/settings/cube/index/ControlDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->getControlDataFromKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/index/ControlData;->getControllerClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 53
    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getValue() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CubeFactoryProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public abstract notifyControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;)V
.end method

.method protected setValue(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mControlDataManager:Lcom/samsung/android/settings/cube/index/ControlDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->getControlDataFromKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 81
    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 82
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->INVALID_DATA:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/index/ControlData;->getControllerClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v1

    if-nez v1, :cond_1

    .line 90
    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_FOUND_CONTROLLER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 92
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 95
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/settings/core/BasePreferenceController;->setControlId(Lcom/samsung/android/settings/cube/ControlValue;)V

    .line 97
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->getTypedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    if-eq v2, v3, :cond_3

    .line 98
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->shouldIgnoreUserInteraction()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/index/ControlData;->getControllerClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->requestUserInteraction(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlValue;)V

    .line 102
    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->REQUEST_SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 103
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 99
    :cond_3
    :goto_0
    invoke-interface {v1, p2}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 108
    :cond_4
    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 109
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not found controller by key : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method
