.class final Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2;->this$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getStr1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2;->this$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->access$toDevicePostureString(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt2()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "Unknown"

    goto :goto_0

    :cond_0
    const-string v2, "UNLOCKED"

    goto :goto_0

    :cond_1
    const-string v2, "LOCKED"

    goto :goto_0

    :cond_2
    const-string v2, "IGNORED"

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool1()Z

    move-result v3

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool2()Z

    move-result p1

    const-string/jumbo v4, "readPersistedSetting: caller="

    const-string v5, ", state="

    const-string v6, " ["

    invoke-static {v1, v4, v0, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], rotationLockSettingForState: "

    const-string v4, ", shouldBeLocked="

    invoke-static {v0, p0, v1, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ", isLocked="

    invoke-static {v0, v3, p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
