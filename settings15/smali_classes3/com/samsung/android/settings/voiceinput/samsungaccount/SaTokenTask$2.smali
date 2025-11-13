.class Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$2;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$2;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    const-string v0, "SaTokenTask"

    const-string v1, "CountDownTimer, onFinish"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$2;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    sget v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->$r8$clinit:I

    const/16 v0, -0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    const-string p0, "SaTokenTask"

    const-string p1, "CountDownTimer, onTick"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
