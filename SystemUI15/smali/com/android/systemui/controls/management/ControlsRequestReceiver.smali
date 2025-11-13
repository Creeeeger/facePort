.class public final Lcom/android/systemui/controls/management/ControlsRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;


# instance fields
.field public final controller:Lcom/android/systemui/controls/controller/ControlsController;

.field public final handler:Landroid/os/Handler;

.field public final secController:Lcom/android/systemui/controls/controller/SecControlsController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->Companion:Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/SecControlsController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsRequestReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->secController:Lcom/android/systemui/controls/controller/SecControlsController;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "android.service.controls.extra.CONTROL"

    const-string v1, "android.intent.extra.COMPONENT_NAME"

    const-string v2, "ControlsRequestReceiver"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.controls"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-class v3, Landroid/content/ComponentName;

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_1

    const-string p0, "Null target component"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    const-class v4, Landroid/service/controls/Control;

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/controls/Control;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_2

    const-string p0, "Null control"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->Companion:Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    const-class v7, Landroid/app/ActivityManager;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v5}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v7

    goto :goto_0

    :cond_3
    const/16 v7, 0x3e8

    :goto_0
    const/16 v8, 0x64

    if-eq v7, v8, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Uid "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not in foreground"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v5, v6

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    if-nez v5, :cond_5

    return-void

    :cond_5
    const-string v5, "android.service.controls.extra.CONTROL_AUTO_ADD"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/systemui/controls/management/ControlsRequestReceiver$onReceive$1;

    invoke-direct {v0, p0, v3, v4, p2}, Lcom/android/systemui/controls/management/ControlsRequestReceiver$onReceive$1;-><init>(Lcom/android/systemui/controls/management/ControlsRequestReceiver;Landroid/content/ComponentName;Landroid/service/controls/Control;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_6
    const-string p0, "onReceive handler is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_7
    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/android/systemui/controls/management/ControlsRequestDialog;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10020000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "android.intent.extra.USER_ID"

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catch_1
    move-exception p0

    const-string p1, "Malformed intent extra Control"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception p0

    const-string p1, "Malformed intent extra ComponentName"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
