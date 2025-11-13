.class public final Lcom/samsung/android/settings/lockscreen/controller/AODPowerSavingPreferenceController$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPowerSavingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/controller/AODPowerSavingPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPowerSavingPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPowerSavingPreferenceController;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    const-string p1, "content://com.samsung.android.sm.dcapi"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "key_preference"

    const-string v1, "aod"

    invoke-static {v0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPowerSavingPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPowerSavingPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPowerSavingPreferenceController;->access$000(Lcom/samsung/android/settings/lockscreen/controller/AODPowerSavingPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "psm_start_power_saving_activity"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "changeable"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "AODPowerSavingPreferenceController"

    if-nez p1, :cond_0

    const-string p1, "API call has failed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "Enter in power saving"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
