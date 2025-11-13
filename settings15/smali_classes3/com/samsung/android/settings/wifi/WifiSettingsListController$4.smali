.class public final Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->performClick()Z

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
