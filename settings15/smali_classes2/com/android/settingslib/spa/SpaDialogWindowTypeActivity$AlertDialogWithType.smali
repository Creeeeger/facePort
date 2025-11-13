.class public final Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType;->this$0:Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;

    const v0, 0x7f15069b

    invoke-direct {p0, p2, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p2, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType$1$1;

    invoke-direct {p2, p1}, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType$1$1;-><init>(Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x392d19a9

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    new-instance p2, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType$2;

    invoke-direct {p2, p1}, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType$2;-><init>(Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;)V

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType;->this$0:Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;

    check-cast v0, Lcom/android/settings/network/WepNetworkDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dialog_window_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
