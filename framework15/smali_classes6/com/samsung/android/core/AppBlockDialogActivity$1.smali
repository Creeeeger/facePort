.class Lcom/samsung/android/core/AppBlockDialogActivity$1;
.super Ljava/lang/Object;
.source "AppBlockDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/core/AppBlockDialogActivity;->showBlockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/core/AppBlockDialogActivity;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/core/AppBlockDialogActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$1;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "AppJumpBlockTool"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$1;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetisClickAllow(Lcom/samsung/android/core/AppBlockDialogActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$1;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->finish()V

    :cond_0
    return-void
.end method
