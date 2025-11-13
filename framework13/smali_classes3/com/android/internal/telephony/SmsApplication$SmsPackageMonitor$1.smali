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
    .param p1, "this$0"    # Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .line 1036
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    iput-object p2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$threadContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 1039
    const-string v0, "SmsApplication"

    const-string/jumbo v1, "onPackageChanged: run"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$threadContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1043
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$threadContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 1045
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 1046
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$smconfigurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 1048
    :cond_0
    const-string/jumbo v3, "onPackageChanged: end"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return-void
.end method
