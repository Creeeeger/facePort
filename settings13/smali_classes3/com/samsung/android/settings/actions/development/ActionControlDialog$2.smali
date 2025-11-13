.class Lcom/samsung/android/settings/actions/development/ActionControlDialog$2;
.super Ljava/lang/Object;
.source "ActionControlDialog.java"

# interfaces
.implements Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/actions/development/ActionControlDialog;->setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionFinished(ILjava/lang/String;)V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->-$$Nest$fgetmResponseView(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->-$$Nest$fgetmResponseView(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->-$$Nest$mgetReadableResponseCode(Lcom/samsung/android/settings/actions/development/ActionControlDialog;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p2, v1, p0

    const-string p0, "Response : %s, Response message : %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onActionFinished(ILjava/lang/String;Lcom/samsung/android/sdk/command/Command;)V
    .locals 2

    .line 245
    iget-object p3, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-static {p3}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->-$$Nest$fgetmResponseView(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 246
    iget-object p3, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-static {p3}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->-$$Nest$fgetmResponseView(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)Landroid/widget/TextView;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->-$$Nest$mgetReadableResponseCode(Lcom/samsung/android/settings/actions/development/ActionControlDialog;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p2, v0, p0

    const-string p0, "Response : %s, Response message : %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
