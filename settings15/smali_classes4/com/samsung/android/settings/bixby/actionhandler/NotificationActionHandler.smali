.class public final Lcom/samsung/android/settings/bixby/actionhandler/NotificationActionHandler;
.super Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "viv.accessibilityApp.TurnOnNotificationReminder"

    const-string/jumbo v1, "viv.accessibilityApp.TurnOffNotificationReminder"

    const-string/jumbo v2, "viv.accessibilityApp.OpenNotificationReminder"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bixby/actionhandler/NotificationActionHandler;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final executeActionInternal(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam;

    iget-object v1, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, Lcom/samsung/android/settings/bixby/control/ControlFactory$LazyHolder;->sControlFactory:Lcom/samsung/android/settings/bixby/control/ControlFactory;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bixby/control/ControlFactory;->createControl(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)Lcom/samsung/android/settings/bixby/control/Control;

    move-result-object p1

    const-string v1, "com.android.settings.command"

    invoke-interface {p1, v1}, Lcom/samsung/android/settings/bixby/control/Control;->execute(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->mResultConverter:Lcom/samsung/android/settings/bixby/converter/ResultConverter;

    iget-object v0, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/bixby/converter/ResultConverter;->convert(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isAffectedByKnoxPolicy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
