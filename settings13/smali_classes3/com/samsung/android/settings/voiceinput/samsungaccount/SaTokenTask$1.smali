.class Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "SaTokenTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final REQUEST_RETRY_DELAY:J

.field private mRetryCount:I

.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;


# direct methods
.method public static synthetic $r8$lambda$i5EXwq1CtBoK4GmBUjwoyEDcKsw(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->lambda$onReceiveAccessToken$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)V
    .locals 2

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    .line 47
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->REQUEST_RETRY_DELAY:J

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    return-void
.end method

.method private synthetic lambda$onReceiveAccessToken$0()V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$mrequestToken(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 4

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceiveAccessToken, isSuccess: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , resultData: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "error_code"

    if-eqz p3, :cond_0

    .line 54
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SaTokenTask"

    .line 53
    invoke-static {v1, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$fgetmCountDownTimer(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$fgetmCountDownTimer(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$fgetmSaService(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "SA Service is null. It was already unbind"

    .line 61
    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 p1, -0x3e8

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 65
    iget v2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-eqz p2, :cond_4

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-static {p1, v2, p3}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$msendResult(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;ILandroid/os/Bundle;)V

    .line 73
    iput v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    return-void

    .line 77
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "SAC_0301"

    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SAC_0401"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 79
    iget-object p2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-static {p2, p1, p3}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$msendResult(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;ILandroid/os/Bundle;)V

    .line 80
    iput v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    return-void

    .line 84
    :cond_5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;)V

    iget-wide v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->REQUEST_RETRY_DELAY:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    iget p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    return-void

    .line 66
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-static {p2, p1, p3}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$msendResult(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;ILandroid/os/Bundle;)V

    .line 67
    iput v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveRLControlFMM(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveRubinRequest(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
