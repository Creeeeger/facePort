.class public final Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$3;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 2

    const-string v0, "WifiOffloadDialog"

    const-string v1, "back key pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$3;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mListener:Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->-$$Nest$mdoFinish(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V

    return-void
.end method
