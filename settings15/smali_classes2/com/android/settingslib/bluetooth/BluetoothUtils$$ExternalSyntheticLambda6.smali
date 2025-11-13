.class public final synthetic Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/Runnable;

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;IIILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$2:I

    iput p4, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$3:I

    iput-object p5, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$1:I

    iget v2, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$2:I

    iget v3, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$3:I

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;->f$5:Ljava/lang/Runnable;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    const v7, 0x1030223

    invoke-direct {v6, v0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda11;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda11;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Runnable;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
