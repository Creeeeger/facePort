.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$11;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->initListViewForDialog()V
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

    .line 804
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$11;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$11;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmNestedScrollView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p0, 0x0

    return p0
.end method
