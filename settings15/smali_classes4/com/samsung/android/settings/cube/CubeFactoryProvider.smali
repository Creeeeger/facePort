.class public abstract Lcom/samsung/android/settings/cube/CubeFactoryProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "CubeFactoryProvider"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mControlDataManager:Lcom/samsung/android/settings/cube/index/ControlDataManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlDataManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/cube/index/ControlDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mControlDataManager:Lcom/samsung/android/settings/cube/index/ControlDataManager;

    sget-object p1, Lcom/samsung/android/settings/cube/CubeCallbackManager$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/cube/CubeCallbackManager;

    iget-object p1, p1, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeFactoryHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->getCubeLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPreferenceController() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CubeFactoryProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getAllIndexedControlData()Ljava/util/HashMap;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mControlDataManager:Lcom/samsung/android/settings/cube/index/ControlDataManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->getIndexedControlData(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->buildControlData(Landroid/database/Cursor;)Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/settings/cube/index/ControlData;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->buildControlData(Landroid/database/Cursor;)Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAllIndexedControlData() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ControlDataManager"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return-object v0
.end method

.method public abstract getCubeLabel()Ljava/lang/String;
.end method

.method public final getValue(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mControlDataManager:Lcom/samsung/android/settings/cube/index/ControlDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->getControlDataFromKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mControllerClassName:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getValue() "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

.method public final setValue(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mControlDataManager:Lcom/samsung/android/settings/cube/index/ControlDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->getControlDataFromKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->INVALID_DATA:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mControllerClassName:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_FOUND_CONTROLLER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object p1

    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/settings/core/BasePreferenceController;->setControlId(Lcom/samsung/android/settings/cube/ControlValue;)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->getTypedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settings/core/BasePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    if-eq v1, v3, :cond_3

    iget-boolean v1, p2, Lcom/samsung/android/settings/cube/ControlValue;->mForceChange:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/settings/cube/CubeInteractionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "controllerName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "controlData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "prefKey"

    iget-object v2, p2, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "controlId"

    iget-object p2, p2, Lcom/samsung/android/settings/cube/ControlValue;->mControlId:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p2, "requestUserInteraction() prefKey = "

    const-string v0, " / "

    invoke-static {p2, v2, v0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CubeFactoryProvider"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->REQUEST_SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object p1

    :cond_3
    :goto_1
    invoke-virtual {v2, p2}, Lcom/android/settings/core/BasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "can not found controller by key : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object p1
.end method
