.class public Lcom/samsung/android/settings/theftprotection/receiver/ProtectionTimerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/theftprotection/receiver/ProtectionTimerReceiver;

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

    const-string p0, "ProtectionTimerReceiver"

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
    const-string v1, "com.samsung.android.settings.action.START_SECURITY_DELAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "com.samsung.android.settings.action.GRACE_TIME_EXPIRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "com.samsung.android.settings.action.ENTER_TRUSTED_PLACES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "com.samsung.android.settings.action.TIME_DELAY_EXPIRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "com.samsung.android.settings.action.GRACE_TIME_FORCE_TERMINATION"

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
    new-instance p0, Lcom/samsung/android/settings/theftprotection/receiver/TimerActionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_1
    if-eqz p0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/theftprotection/receiver/TimerActionProcessor;->handle(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f7cf0ae -> :sswitch_4
        0x34598290 -> :sswitch_3
        0x40ae9268 -> :sswitch_2
        0x53cc550d -> :sswitch_1
        0x6593a28e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
