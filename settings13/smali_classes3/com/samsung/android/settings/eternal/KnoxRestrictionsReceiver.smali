.class public Lcom/samsung/android/settings/eternal/KnoxRestrictionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KnoxRestrictionsReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "Eternal/KnoxRestrictionsReceiver"

    .line 39
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive() action : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, " null"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Eternal/KnoxRestrictionsReceiver"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->updateRestrictionState(Landroid/content/Context;)V

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRestrictionState: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance p0, Landroid/content/ComponentName;

    const-class v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    const-string p2, "com.samsung.android.knox.intent.action.KNOX_FACE_WIDGET_OFF_INTERNAL"

    .line 58
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 59
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->disableAllFaceWidget(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method
