.class public final synthetic Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    iput p2, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    iget p0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;->$r8$clinit:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.systemui"

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "compat_task_id"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    iget-object p0, v0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method
