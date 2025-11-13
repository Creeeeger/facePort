.class Lcom/android/settings/homepage/SettingsHomepageActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SettingsHomepageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homepage/SettingsHomepageActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$3;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingsHomepageActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$3;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-static {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->access$000(Lcom/android/settings/homepage/SettingsHomepageActivity;)Lcom/android/settings/core/CategoryMixin;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/CategoryMixin;->updateCategories()V

    return-void
.end method
