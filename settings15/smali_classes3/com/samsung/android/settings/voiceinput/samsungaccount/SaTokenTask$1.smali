.class Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final REQUEST_RETRY_MAX_COUNT:I = 0x2


# instance fields
.field private final REQUEST_RETRY_DELAY:J

.field private mRetryCount:I

.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->REQUEST_RETRY_DELAY:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    return-void
.end method


# virtual methods
.method public final onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 4

    const-string p1, "onReceiveAccessToken, isSuccess: "

    const-string v0, " , resultData: "

    invoke-static {p1, v0, p2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "error_code"

    if-eqz p3, :cond_0

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

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$fgetmCountDownTimer(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$fgetmCountDownTimer(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->-$$Nest$fgetmSaService(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "SA Service is null. It was already unbind"

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 p1, -0x3e8

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    iget v2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-virtual {p1, v2, p3}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    iput v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    return-void

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "SAC_0301"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SAC_0401"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    iput v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    return-void

    :cond_5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda1;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-wide v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->REQUEST_RETRY_DELAY:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    return-void

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->this$0:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    iput v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;->mRetryCount:I

    return-void
.end method
