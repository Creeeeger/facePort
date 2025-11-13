.class Lcom/android/settingslib/bluetooth/BluetoothUtils$1;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 630
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$1;->val$context:Landroid/content/Context;

    const v2, 0x1030223

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$1;->val$msg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
