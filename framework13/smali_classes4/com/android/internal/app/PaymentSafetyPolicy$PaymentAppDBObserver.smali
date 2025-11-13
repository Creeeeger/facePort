.class Lcom/android/internal/app/PaymentSafetyPolicy$PaymentAppDBObserver;
.super Landroid/database/ContentObserver;
.source "PaymentSafetyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PaymentSafetyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentAppDBObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/PaymentSafetyPolicy;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/PaymentSafetyPolicy;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 167
    iput-object p1, p0, Lcom/android/internal/app/PaymentSafetyPolicy$PaymentAppDBObserver;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    .line 168
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 169
    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 173
    if-nez p2, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy$PaymentAppDBObserver;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-static {v0}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/PaymentSafetyPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy$PaymentAppDBObserver;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-static {v0}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/PaymentSafetyPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method
