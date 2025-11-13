.class public final Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$8;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$8;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$8;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object v1, v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$8;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object v1, v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$8;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object v0, v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$8;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object v0, v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
