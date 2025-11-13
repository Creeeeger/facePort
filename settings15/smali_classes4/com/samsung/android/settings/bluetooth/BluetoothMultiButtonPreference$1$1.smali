.class public final Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1$1;->this$1:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateMidBarSizeFlag:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1$1;->this$1:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v1, 0x7f0a096c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1$1;->this$1:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;

    iget-object v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1$1;->this$1:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;

    iget-object v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1$1;->this$1:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;

    iget-object v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1$1;->this$1:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;

    iget-object v3, v3, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget v4, v3, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHighVisible:I

    if-nez v4, :cond_1

    mul-int/lit8 v4, v2, 0x2c

    div-int/lit16 v4, v4, 0x168

    mul-int/lit16 v2, v2, 0x13c

    div-int/lit16 v2, v2, 0x168

    goto :goto_1

    :cond_1
    mul-int/lit8 v4, v2, 0x34

    div-int/lit16 v4, v4, 0x168

    mul-int/lit16 v2, v2, 0x134

    div-int/lit16 v2, v2, 0x168

    :goto_1
    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, v3, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1$1;->this$1:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateMidBarSizeFlag:Z

    return-void
.end method
