.class public Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;
.super Ljava/lang/Object;
.source "AppUpdateData.java"


# instance fields
.field private mContentSize:Ljava/lang/String;

.field private mResultCode:Ljava/lang/String;

.field private mVersionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mResultCode:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mVersionCode:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mContentSize:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getmContentSize()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mContentSize:Ljava/lang/String;

    return-object p0
.end method

.method public getmResultCode()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mResultCode:Ljava/lang/String;

    return-object p0
.end method

.method public getmVersionCode()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mVersionCode:Ljava/lang/String;

    return-object p0
.end method

.method public setmContentSize(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mContentSize:Ljava/lang/String;

    return-void
.end method

.method public setmResultCode(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mResultCode:Ljava/lang/String;

    return-void
.end method

.method public setmVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mVersionCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppUpdateData{mResultCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mResultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVersionCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mContentSize=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->mContentSize:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
