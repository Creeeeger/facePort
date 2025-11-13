.class final enum Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeCallAudioType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

.field public static final enum CONNECTED_EARLIER:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

.field public static final enum CONNECTED_LATER:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

.field public static final enum UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;->UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    const-string v2, "CONNECTED_EARLIER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;->CONNECTED_EARLIER:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    const-string v3, "CONNECTED_LATER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;->CONNECTED_LATER:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    move-result-object v0

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;->$VALUES:[Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;
    .locals 1

    const-class v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;
    .locals 1

    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;->$VALUES:[Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    invoke-virtual {v0}, [Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    return-object v0
.end method
