.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$3;
.super Ljava/lang/Object;
.source "BluetoothExpListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;Landroid/view/ViewGroup;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$3;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 589
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$3;->val$viewGroup:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    if-nez p1, :cond_0

    .line 590
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$3;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return p2
.end method
