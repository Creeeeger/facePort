.class Lcom/android/settings/accounts/AccountDashboardFragment$3;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "AccountDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 1

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 288
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "google_core_control"

    .line 289
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
