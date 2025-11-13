.class public final synthetic Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$1:Landroidx/core/util/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda1;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$1:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$1:Landroidx/core/util/Consumer;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->getDeviceProtectionSecurityInfo(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$1:Landroidx/core/util/Consumer;

    const-string v1, ""

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "dc_security_last_scan_time"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "key_last_scan_time"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Unknown authority or Last Scan Method not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceProtectionUtils"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
