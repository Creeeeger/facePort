.class public final Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10103bd

    const v5, 0x10103be

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    sub-int/2addr v2, v4

    iput v2, v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mExtraControlViewWidth:I

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget v2, v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mExtraControlViewWidth:I

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->updateExtraControlUri(I)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOnGlobalLayoutListener:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
