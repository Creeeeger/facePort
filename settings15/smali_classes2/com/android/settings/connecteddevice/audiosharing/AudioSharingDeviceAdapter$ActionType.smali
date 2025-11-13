.class public final enum Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

.field public static final enum REMOVE:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

.field public static final enum SHARE:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    const-string v1, "SHARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;->SHARE:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    const-string v2, "REMOVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;->REMOVE:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    filled-new-array {v0, v1}, [Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    move-result-object v0

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;->$VALUES:[Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;
    .locals 1

    const-class v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;
    .locals 1

    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;->$VALUES:[Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    invoke-virtual {v0}, [Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    return-object v0
.end method
