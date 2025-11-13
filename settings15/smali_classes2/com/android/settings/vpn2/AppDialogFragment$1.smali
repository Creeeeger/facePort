.class public final Lcom/android/settings/vpn2/AppDialogFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/vpn2/AppDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/vpn2/AppDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings/vpn2/AppDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->onDisconnect()V

    return-void
.end method
