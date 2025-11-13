.class Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecSettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/core/SecSettingsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AssistantReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/core/SecSettingsBaseActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;->this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings.Search"

    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;->this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->openSearchView()V

    :cond_0
    return-void
.end method
