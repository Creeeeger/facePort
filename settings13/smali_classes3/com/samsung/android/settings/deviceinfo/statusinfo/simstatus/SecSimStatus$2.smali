.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SecSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubscriptionsChanged() - mCurrentSlotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fgetmCurrentSlotId(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fgetmCurrentSlotId(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mgetPhoneSubscriptionInfo(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fputmSubscriptionInfo(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/SubscriptionInfo;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fgetmSubscriptionInfo(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mSubscriptionInfo == null"

    .line 211
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateSubscriptionStatusNotAvailable(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fgetmSubscriptionInfo(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fputmCurrentSubId(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentSubId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fgetmCurrentSubId(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateSubscriptionStatus(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    return-void
.end method
