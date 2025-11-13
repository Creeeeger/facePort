.class final enum Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

.field public static final enum BROADCAST_SEARCH:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

.field public static final enum QR_CODE_SCAN_OTHER:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

.field public static final enum QR_CODE_SCAN_SETTINGS:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

.field public static final enum UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    const-string v2, "QR_CODE_SCAN_SETTINGS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->QR_CODE_SCAN_SETTINGS:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    const-string v3, "QR_CODE_SCAN_OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->QR_CODE_SCAN_OTHER:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    new-instance v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    const-string v4, "BROADCAST_SEARCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->BROADCAST_SEARCH:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    new-instance v4, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    const-string v5, "REPOSITORY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    move-result-object v0

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->$VALUES:[Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;
    .locals 1

    const-class v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;
    .locals 1

    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->$VALUES:[Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    invoke-virtual {v0}, [Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    return-object v0
.end method
