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
    .param p1, "this$0"    # Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    .line 76
    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;->this$0:Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;->this$0:Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    invoke-static {v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->-$$Nest$fgetmMenuDialog(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;->this$0:Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    invoke-static {v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->-$$Nest$fgetmMenuDialog(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 84
    :cond_0
    return-void
.end method
