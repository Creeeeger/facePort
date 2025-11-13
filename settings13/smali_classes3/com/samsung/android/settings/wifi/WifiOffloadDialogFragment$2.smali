.class Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$2;
.super Ljava/lang/Object;
.source "WifiOffloadDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 47
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$2;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$2;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;)Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;->onDismiss(Z)V

    return-void
.end method
