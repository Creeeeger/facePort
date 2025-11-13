.class public final enum Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/voiceinput/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

.field public static final enum DOWNLOADABLE:Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

.field public static final enum DOWNLOADED:Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

.field public static final enum NOTAVAILABLE:Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

.field public static final enum UPADATEABLE:Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

.field public static final values:[Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    const-string v1, "NOTAVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;->NOTAVAILABLE:Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    new-instance v1, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    const-string v2, "DOWNLOADABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;->DOWNLOADABLE:Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    new-instance v2, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    const-string v3, "UPADATEABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;->UPADATEABLE:Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    new-instance v3, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    const-string v4, "DOWNLOADED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;->DOWNLOADED:Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;->$VALUES:[Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;->values()[Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;->values:[Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;->$VALUES:[Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/voiceinput/Constants$DownloadStatus;

    return-object v0
.end method
