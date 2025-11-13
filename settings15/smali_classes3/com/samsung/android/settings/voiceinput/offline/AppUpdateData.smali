.class public Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private mContentSize:Ljava/lang/String;

.field private mResultCode:Ljava/lang/String;

.field private mVersionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mResultCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mVersionCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mContentSize:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getmResultCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mResultCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getmVersionCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mVersionCode:Ljava/lang/String;

    return-object p0
.end method

.method public final setmContentSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mContentSize:Ljava/lang/String;

    return-void
.end method

.method public final setmResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mResultCode:Ljava/lang/String;

    return-void
.end method

.method public final setmVersionCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mVersionCode:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppUpdateData{mResultCode=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mResultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mVersionCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mContentSize=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mContentSize:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
