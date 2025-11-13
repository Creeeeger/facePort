.class public Lcom/samsung/android/media/AudioParameter$Builder;
.super Ljava/lang/Object;
.source "AudioParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/AudioParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/AudioParameter$Builder;->mAudioParams:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/media/AudioParameter;
    .locals 2

    new-instance v0, Lcom/samsung/android/media/AudioParameter;

    iget-object v1, p0, Lcom/samsung/android/media/AudioParameter$Builder;->mAudioParams:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public blacklist setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter$Builder;->mAudioParams:Ljava/util/LinkedHashMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter$Builder;->mAudioParams:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter$Builder;->mAudioParams:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter$Builder;->mAudioParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter$Builder;->mAudioParams:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
