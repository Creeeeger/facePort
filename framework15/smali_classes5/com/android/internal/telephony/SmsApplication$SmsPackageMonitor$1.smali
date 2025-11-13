.class Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;
.super Ljava/lang/Object;
.source "SmsApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

.field final synthetic blacklist val$threadContext:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    iput-object p2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$threadContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    const-string/jumbo v0, "onPackageChanged: run"

    const-string v1, "SmsApplication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$threadContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$threadContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$smconfigurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    :cond_0
    const-string/jumbo v3, "onPackageChanged: end"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
