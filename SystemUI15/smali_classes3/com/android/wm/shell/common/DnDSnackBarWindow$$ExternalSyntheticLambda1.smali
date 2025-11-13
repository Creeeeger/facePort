.class public final synthetic Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DnDSnackBarWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DnDSnackBarWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    iget-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mCallbacks:Lcom/android/wm/shell/common/DnDSnackBarController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    const-string v2, "multi_window_for_all_apps"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.settings.LABS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/wm/shell/common/DnDSnackBarController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DnDSnackBarWindow;->hide()V

    return-void
.end method
