.class public Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
.super Ljava/lang/Object;
.source "SaInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mCC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn: SaInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->mCC:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/util/function/Consumer;)Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;",
            ">;)",
            "Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;-><init>()V

    .line 22
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 40
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->mCC:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getCC()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->mCC:Ljava/lang/String;

    return-object p0
.end method

.method public setCC(Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn: SaInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->mCC:Ljava/lang/String;

    return-object p0
.end method
