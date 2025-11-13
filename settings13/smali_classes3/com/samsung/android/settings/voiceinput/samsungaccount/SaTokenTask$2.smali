.class Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$2;
.super Landroid/os/CountDownTimer;
.source "SaTokenTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->lambda$requestToken$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;JJ)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$2;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "SaTokenTask"

    const-string v1, "CountDownTimer, onFinish"

    .line 227
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$2;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    const/16 v0, -0x3e8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$msendResult(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    const-string p0, "SaTokenTask"

    const-string p1, "CountDownTimer, onTick"

    .line 222
    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
