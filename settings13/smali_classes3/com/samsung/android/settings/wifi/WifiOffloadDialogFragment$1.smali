.class Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;
.super Ljava/lang/Object;
.source "WifiOffloadDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;)Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;->onDismiss(Z)V

    :cond_0
    return p1
.end method
