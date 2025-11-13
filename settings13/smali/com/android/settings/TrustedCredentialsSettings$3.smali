.class Lcom/android/settings/TrustedCredentialsSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;)V
    .locals 0

    .line 1199
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1206
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fgetmInForeground(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1207
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$mrefreshUI(Lcom/android/settings/TrustedCredentialsSettings;)V

    goto :goto_0

    .line 1209
    :cond_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$fputmRefreshUI(Lcom/android/settings/TrustedCredentialsSettings;Z)V

    :goto_0
    return-void
.end method
