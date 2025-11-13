.class public Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String; = "@VoiceIn: SaInfo"


# instance fields
.field private mCC:Ljava/lang/String;


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->mCC:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialized"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@VoiceIn: SaInfo"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->mCC:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final getCC()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->mCC:Ljava/lang/String;

    return-object p0
.end method

.method public final setCC(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCC "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn: SaInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->mCC:Ljava/lang/String;

    return-void
.end method
