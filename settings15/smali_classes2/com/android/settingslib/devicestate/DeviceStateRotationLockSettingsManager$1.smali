.class public final Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$1;->this$0:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$1;->this$0:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->onPersistedSettingsChanged()V

    return-void
.end method
