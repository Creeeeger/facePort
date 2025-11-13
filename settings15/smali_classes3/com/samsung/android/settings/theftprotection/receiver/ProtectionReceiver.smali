.class public Lcom/samsung/android/settings/theftprotection/receiver/ProtectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/theftprotection/receiver/ProtectionReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p0, "ProtectionReceiver"

    if-nez p2, :cond_0

    const-string p1, "onReceive : intent is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "com.samsung.android.settings.action.GEOFENCE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    new-instance p0, Lcom/samsung/android/settings/theftprotection/receiver/BootActionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_1
    new-instance p0, Lcom/samsung/android/settings/theftprotection/receiver/AccountSignOutActionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance p0, Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_3
    new-instance p0, Lcom/samsung/android/settings/theftprotection/receiver/FingerprintActionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_1
    if-eqz p0, :cond_6

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->handle(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72f528e1 -> :sswitch_4
        -0x7204ec92 -> :sswitch_3
        -0x34569fac -> :sswitch_2
        -0xfef40ad -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
