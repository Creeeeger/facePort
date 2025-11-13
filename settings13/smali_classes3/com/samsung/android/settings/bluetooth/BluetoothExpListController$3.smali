.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 362
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmExpandableListView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/widget/SemExpandableListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/widget/AdapterView;->requestFocus()Z

    const-string p0, "BluetoothExpListController"

    const-string p1, "setOnItemSelectedListener position 0 - have child : requestFocus() "

    .line 364
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
