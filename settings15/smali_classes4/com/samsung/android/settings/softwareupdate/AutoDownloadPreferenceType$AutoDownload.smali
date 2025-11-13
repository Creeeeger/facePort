.class public abstract Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$AutoDownload;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final map:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$AutoDownload;->map:Ljava/util/HashMap;

    const/4 v1, 0x0

    const-string v2, "key_never"

    const/4 v3, 0x1

    const-string v4, "key_wifi_only"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "key_wifi_or_mobile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
