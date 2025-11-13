.class Lcom/android/internal/app/PaymentSafetyPolicy$UsageStatsWatcher;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "PaymentSafetyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PaymentSafetyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageStatsWatcher"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/PaymentSafetyPolicy;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/PaymentSafetyPolicy;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/internal/app/PaymentSafetyPolicy$UsageStatsWatcher;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/PaymentSafetyPolicy;Lcom/android/internal/app/PaymentSafetyPolicy$UsageStatsWatcher-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/PaymentSafetyPolicy$UsageStatsWatcher;-><init>(Lcom/android/internal/app/PaymentSafetyPolicy;)V

    return-void
.end method


# virtual methods
.method public blacklist notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    return-void
.end method

.method public blacklist noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy$UsageStatsWatcher;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$mcheckPolicy(Lcom/android/internal/app/PaymentSafetyPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method public blacklist noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    return-void
.end method
