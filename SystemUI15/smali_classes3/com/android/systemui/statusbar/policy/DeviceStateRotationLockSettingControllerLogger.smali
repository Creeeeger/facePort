.class public final Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final foldedStates:[I

.field public final halfFoldedStates:[I

.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final rearDisplayStates:[I

.field public final unfoldedStates:[I


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070103

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->foldedStates:[I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107010a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->halfFoldedStates:[I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107013c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->unfoldedStates:[I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070142

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->rearDisplayStates:[I

    return-void
.end method

.method public static final access$toDevicePostureString(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->foldedStates:[I

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Folded"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->unfoldedStates:[I

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Unfolded"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->halfFoldedStates:[I

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Half-Folded"

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->rearDisplayStates:[I

    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Rear display"

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    if-ne p1, p0, :cond_4

    const-string p0, "Uninitialized"

    goto :goto_0

    :cond_4
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method
