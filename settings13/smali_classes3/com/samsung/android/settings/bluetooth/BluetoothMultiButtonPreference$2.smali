.class Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$2;
.super Ljava/lang/Object;
.source "BluetoothMultiButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fputselectedPosition(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmCustomView(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetselectedPosition(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$mupdateButtonStatus(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)V

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetselectedPosition(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$mcallButtonSelectListener(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)V

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmBtnMid(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->playAnimation()V

    return-void
.end method
