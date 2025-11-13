.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$Temp;
    }
.end annotation


# static fields
.field public static final RESULT_CODE_FAIL_PERMISSION_ERROR:I = 0x3

.field public static final RESULT_CODE_FAIL_SERVICE_UNAVAILABLE:I = 0x1

.field public static final RESULT_CODE_FAIL_WRONG_ARGUMENT:I = 0x2

.field public static final RESULT_CODE_INVALID:I = -0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PeripheralManager"

.field public static volatile sInstance:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/ex/peripheral/PeripheralDataListener;",
            "Lcom/samsung/android/knox/ex/peripheral/IDataListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mInfoListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/ex/peripheral/PeripheralInfoListener;",
            "Lcom/samsung/android/knox/ex/peripheral/IInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;",
            "Lcom/samsung/android/knox/ex/peripheral/IStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->sInstance:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->sInstance:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->sInstance:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->sInstance:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    return-object p0
.end method


# virtual methods
.method public beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter beep()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$29;

    invoke-direct {v0, p0, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$29;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, p2, p3, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "beep getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave beep() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public check(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter check()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$1;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->check(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "check getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave check() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter clearMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$14;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$14;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave clearMemory() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public connectPeripheral(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter connectPeripheral()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "INTERNAL_KEY_BLUETOOTH_DEVICE"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$26;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$26;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, v0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->connectPeripheral(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave connectPeripheral() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public disable()I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter disable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->disable()I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "disable getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v0, "Leave disable() with "

    invoke-static {v1, v0, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public disconnectPeripheral(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter disconnectPeripheral()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$27;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$27;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->disconnectPeripheral(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave disconnectPeripheral() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter displayText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v7, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$28;

    invoke-direct {v7, p0, p5}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$28;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "displayText getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave displayText() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public enable(Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->enable(Landroid/os/Bundle;Z)I

    move-result p0

    return p0
.end method

.method public enable(Landroid/os/Bundle;Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter enable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->enable(Landroid/os/Bundle;Z)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "enable getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave enable() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getAvailablePeripherals()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$4;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "getAvailablePeripherals getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave getAvailablePeripherals() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public getBluetoothPeripherals(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getBluetoothPeripherals()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$25;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$25;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getBluetoothPeripherals(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave getBluetoothPeripherals() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getConfiguration()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$6;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$6;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave getConfiguration() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getConnectionProfile()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$20;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$20;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave getConnectionProfile() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public getInformation(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getInformation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$5;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getInformation(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave getInformation() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getPairingBarcodeData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$23;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$23;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave getPairingBarcodeData() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public getPluginsToSetup()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getPluginsToSetup()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getPluginsToSetup()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "getPluginsToSetup getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Leave getPluginsToSetup() with "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :goto_2
    throw p0
.end method

.method public final getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;
    .locals 0

    const-string/jumbo p0, "peripheral"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object p0

    return-object p0
.end method

.method public getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getStoredData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$13;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$13;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave getStoredData() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getSupportedPeripherals()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$22;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$22;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave getSupportedPeripherals() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public isEnabled()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter isEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->isEnabled()Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "isEnabled getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v0, "Leave isEnabled() with "

    invoke-static {v0, p0, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :goto_2
    throw p0
.end method

.method public isStarted()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter isStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->isStarted()Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "isStarted getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v0, "Leave isStarted() with "

    invoke-static {v0, p0, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :goto_2
    throw p0
.end method

.method public registerDataListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralDataListener;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter registerDataListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    new-instance v3, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$8;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$8;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralDataListener;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/peripheral/IDataListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->registerDataListener(Lcom/samsung/android/knox/ex/peripheral/IDataListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "registerDataListener getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave registerDataListener() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public registerInfoListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralInfoListener;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter registerInfoListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    new-instance v3, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$9;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$9;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralInfoListener;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/peripheral/IInfoListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->registerInfoListener(Lcom/samsung/android/knox/ex/peripheral/IInfoListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "registerInfoListener getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave registerInfoListener() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public registerStateListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter registerStateListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    new-instance v3, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/peripheral/IStateListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->registerStateListener(Lcom/samsung/android/knox/ex/peripheral/IStateListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "registerStateListener getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave registerStateListener() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter resetPeripheral()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$17;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$17;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave resetPeripheral() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter setConfiguration()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$7;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$7;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave setConfiguration() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter setConnectionProfile()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$21;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$21;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave setConnectionProfile() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public start(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$2;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->start(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "start getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave start() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter startAutoTriggerMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$15;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$15;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave startAutoTriggerMode() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter startBarcodeScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$11;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$11;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave startBarcodeScan() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public stop(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$3;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave stop() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter stopAutoTriggerMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$16;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$16;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave stopAutoTriggerMode() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter stopBarcodeScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$12;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$12;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave stopBarcodeScan() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public stopPairingPeripheral(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter stopPairingPeripheral()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$24;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$24;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stopPairingPeripheral(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave stopPairingPeripheral() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter triggerVendorCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$18;

    invoke-direct {v0, p0, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$18;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, p2, p3, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave triggerVendorCommand() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public unregisterDataListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralDataListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter unregisterDataListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ex/peripheral/IDataListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->unregisterDataListener(Lcom/samsung/android/knox/ex/peripheral/IDataListener;)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "unregisterDataListener getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave unregisterDataListener() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public unregisterInfoListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralInfoListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter unregisterInfoListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ex/peripheral/IInfoListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->unregisterInfoListener(Lcom/samsung/android/knox/ex/peripheral/IInfoListener;)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "unregisterInfoListener getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave unregisterInfoListener() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public unregisterStateListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter unregisterStateListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ex/peripheral/IStateListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->unregisterStateListener(Lcom/samsung/android/knox/ex/peripheral/IStateListener;)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "unregisterStateListener getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave unregisterStateListener() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 9

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter updateFirmware()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v8, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$19;

    invoke-direct {v8, p0, p6}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$19;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave updateFirmware() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method

.method public vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter vibrate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$30;

    invoke-direct {v0, p0, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$30;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    invoke-interface {v2, p1, p2, p3, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "vibrate getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave vibrate() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    throw p0
.end method
