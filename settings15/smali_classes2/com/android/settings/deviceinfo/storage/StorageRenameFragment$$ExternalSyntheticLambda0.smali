.class public final synthetic Lcom/android/settings/deviceinfo/storage/StorageRenameFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/os/storage/StorageManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageRenameFragment$$ExternalSyntheticLambda0;->f$0:Landroid/os/storage/StorageManager;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageRenameFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageRenameFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageRenameFragment$$ExternalSyntheticLambda0;->f$0:Landroid/os/storage/StorageManager;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageRenameFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageRenameFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/storage/StorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
