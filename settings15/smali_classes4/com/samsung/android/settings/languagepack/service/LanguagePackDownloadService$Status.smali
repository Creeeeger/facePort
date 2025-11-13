.class public final enum Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

.field public static final enum STATUS_CANCEL:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

.field public static final enum STATUS_DOWNLOADING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

.field public static final enum STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

.field public static final enum STATUS_FINISH:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

.field public static final enum STATUS_INSTALLING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

.field public static final enum STATUS_PAUSE:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

.field public static final enum STATUS_WAITING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const-string v1, "STATUS_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const-string v2, "STATUS_WAITING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_WAITING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    new-instance v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const-string v3, "STATUS_DOWNLOADING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_DOWNLOADING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    new-instance v3, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const-string v4, "STATUS_INSTALLING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_INSTALLING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    new-instance v4, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const-string v5, "STATUS_ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    new-instance v5, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const-string v6, "STATUS_CANCEL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_CANCEL:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    new-instance v6, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const-string v7, "STATUS_FINISH"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_FINISH:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    new-instance v7, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const-string v8, "STATUS_PAUSE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_PAUSE:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->$VALUES:[Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->$VALUES:[Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    return-object v0
.end method
