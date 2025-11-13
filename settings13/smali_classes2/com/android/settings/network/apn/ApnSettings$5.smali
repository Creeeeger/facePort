.class Lcom/android/settings/network/apn/ApnSettings$5;
.super Landroid/database/ContentObserver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnSettings;Landroid/os/Handler;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$5;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 353
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 354
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$5;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->access$000(Lcom/android/settings/network/apn/ApnSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "ApnSettings"

    const-string v0, "FINISH : airplane mode on"

    .line 355
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$5;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
