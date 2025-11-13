.class Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilitySamsungShortcutChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;->this$0:Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;->this$0:Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    invoke-static {v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->-$$Nest$fgetmMenuDialog(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;->this$0:Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    invoke-static {v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->-$$Nest$fgetmMenuDialog(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
