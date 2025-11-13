.class Lcom/android/settings/accounts/AccountPreferenceController$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccountPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 3

    .line 856
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountPreferenceController;->-$$Nest$fgetmHandler(Lcom/android/settings/accounts/AccountPreferenceController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->-$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 842
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController$2;->sendUpdate()V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 847
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController$2;->sendUpdate()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 852
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController$2;->sendUpdate()V

    return-void
.end method
