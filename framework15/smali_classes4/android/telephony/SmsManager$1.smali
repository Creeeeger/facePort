.class Landroid/telephony/SmsManager$1;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/SmsManager;

.field final synthetic blacklist val$attributionTag:Ljava/lang/String;

.field final synthetic blacklist val$deliveryIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$destinationAddress:Ljava/lang/String;

.field final synthetic blacklist val$messageId:J

.field final synthetic blacklist val$packageName:Ljava/lang/String;

.field final synthetic blacklist val$persistMessage:Z

.field final synthetic blacklist val$scAddress:Ljava/lang/String;

.field final synthetic blacklist val$sentIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$text:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/SmsManager$1;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$1;->val$attributionTag:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$1;->val$destinationAddress:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/SmsManager$1;->val$scAddress:Ljava/lang/String;

    iput-object p6, p0, Landroid/telephony/SmsManager$1;->val$text:Ljava/lang/String;

    iput-object p7, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    iput-object p8, p0, Landroid/telephony/SmsManager$1;->val$deliveryIntent:Landroid/app/PendingIntent;

    iput-boolean p9, p0, Landroid/telephony/SmsManager$1;->val$persistMessage:Z

    iput-wide p10, p0, Landroid/telephony/SmsManager$1;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist onSuccess(I)V
    .locals 13

    invoke-static {}, Landroid/telephony/SmsManager;->-$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v12

    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager$1;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/SmsManager$1;->val$attributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/SmsManager$1;->val$destinationAddress:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsManager$1;->val$scAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/SmsManager$1;->val$text:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/telephony/SmsManager$1;->val$deliveryIntent:Landroid/app/PendingIntent;

    iget-boolean v9, p0, Landroid/telephony/SmsManager$1;->val$persistMessage:Z

    iget-wide v10, p0, Landroid/telephony/SmsManager$1;->val$messageId:J

    move-object v0, v12

    move v1, p1

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTextMessageInternal: Couldn\'t send SMS, exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/SmsManager$1;->val$messageId:J

    invoke-static {v2, v3}, Landroid/telephony/SmsManager;->-$$Nest$smformatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    :goto_0
    return-void
.end method
