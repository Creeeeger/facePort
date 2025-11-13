.class Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;
.super Ljava/lang/Object;
.source "SecDevicePickerFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->updateDialogHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

.field final synthetic val$container:Landroid/widget/LinearLayout;

.field final synthetic val$dialogHeight:I

.field final synthetic val$listview:Landroid/widget/SemExpandableListView;

.field final synthetic val$paddingTopBottom:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;IILandroid/widget/LinearLayout;Landroid/widget/SemExpandableListView;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$dialogHeight:I

    iput p3, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$paddingTopBottom:I

    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$container:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$listview:Landroid/widget/SemExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->-$$Nest$fgetmView(Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 335
    iget v2, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$dialogHeight:I

    iget v3, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$paddingTopBottom:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    if-le v2, v4, :cond_0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v2

    :cond_0
    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v0, v4

    const/4 v5, 0x2

    if-le v2, v4, :cond_1

    if-ne v1, v5, :cond_1

    mul-int/2addr v3, v5

    add-int v0, v2, v3

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$container:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 342
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$paddingTopBottom:I

    mul-int/2addr v4, v5

    sub-int v4, v0, v4

    invoke-direct {v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$listview:Landroid/widget/SemExpandableListView;

    if-eqz v1, :cond_3

    .line 346
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$paddingTopBottom:I

    mul-int/2addr v4, v5

    sub-int/2addr v0, v4

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/SemExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->-$$Nest$fgetmView(Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
