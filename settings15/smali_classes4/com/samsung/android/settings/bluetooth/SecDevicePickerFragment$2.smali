.class public final Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

.field public final synthetic val$container:Landroid/widget/LinearLayout;

.field public final synthetic val$dialogHeight:I

.field public final synthetic val$listview:Landroid/widget/SemExpandableListView;

.field public final synthetic val$paddingTopBottom:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;IILandroid/widget/LinearLayout;Landroid/widget/SemExpandableListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$dialogHeight:I

    iput p3, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$paddingTopBottom:I

    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$container:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$listview:Landroid/widget/SemExpandableListView;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

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

    add-int v0, v3, v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$container:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$paddingTopBottom:I

    mul-int/2addr v4, v5

    sub-int v4, v0, v4

    invoke-direct {v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$listview:Landroid/widget/SemExpandableListView;

    if-eqz v1, :cond_3

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->val$paddingTopBottom:I

    mul-int/2addr v4, v5

    sub-int/2addr v0, v4

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/SemExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
