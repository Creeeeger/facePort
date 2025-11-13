.class final Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $actionIntent:Landroid/content/Intent;

.field final synthetic $activityOptions:Landroid/os/Bundle;

.field final synthetic $this_launchTrampolineAction:Landroid/app/Activity;

.field final synthetic $type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$type:Ljava/lang/String;

    iput-object p2, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$this_launchTrampolineAction:Landroid/app/Activity;

    iput-object p3, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$actionIntent:Landroid/content/Intent;

    iput-object p4, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$activityOptions:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$type:Ljava/lang/String;

    invoke-static {v0}, Landroidx/glance/appwidget/action/ActionTrampolineType;->valueOf(Ljava/lang/String;)Landroidx/glance/appwidget/action/ActionTrampolineType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$this_launchTrampolineAction:Landroid/app/Activity;

    iget-object p0, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$actionIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$this_launchTrampolineAction:Landroid/app/Activity;

    iget-object p0, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$actionIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$this_launchTrampolineAction:Landroid/app/Activity;

    iget-object p0, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$actionIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$this_launchTrampolineAction:Landroid/app/Activity;

    iget-object v1, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$actionIntent:Landroid/content/Intent;

    iget-object p0, p0, Landroidx/glance/appwidget/action/ActionTrampolineKt$launchTrampolineAction$1;->$activityOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
