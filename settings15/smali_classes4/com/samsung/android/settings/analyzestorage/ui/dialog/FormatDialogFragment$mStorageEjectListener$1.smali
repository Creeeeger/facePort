.class public final Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$mStorageEjectListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$mStorageEjectListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->mounted(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$mStorageEjectListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->cancel()V

    :cond_0
    return-void
.end method
