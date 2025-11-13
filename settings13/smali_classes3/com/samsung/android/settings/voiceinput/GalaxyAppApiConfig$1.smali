.class Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig$1;
.super Ljava/lang/Object;
.source "GalaxyAppApiConfig.java"

# interfaces
.implements Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getCC()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig$1;->this$0:Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    const-string p0, "@VoiceIn: GalaxyAppApiConfig"

    const-string v0, "Fail to receive cc"

    .line 149
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3ec

    if-ne p1, v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResult()V
    .locals 1

    const-string p0, "@VoiceIn: GalaxyAppApiConfig"

    const-string v0, "cc received"

    .line 144
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
