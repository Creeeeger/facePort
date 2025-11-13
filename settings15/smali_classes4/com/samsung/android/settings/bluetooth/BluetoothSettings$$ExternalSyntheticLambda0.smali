.class public final synthetic Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$1:Z

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$2:I

    sget-boolean v2, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "BluetoothSettings"

    const-string v0, "activity not created, can\'t create popup"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bluetooth_bubble_tips_count"

    add-int/2addr p0, v2

    invoke-static {v1, v3, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0a0102

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    new-instance p0, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object p0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    const/4 p0, 0x2

    new-array v1, p0, [I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    const/high16 v5, 0x420c0000    # 35.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    const/high16 v4, 0x41900000    # 18.0f

    mul-float/2addr v5, v4

    float-to-int v4, v5

    iget-object v5, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f14223d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v5, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    aget v5, v1, v6

    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v3

    goto :goto_0

    :cond_2
    aget v5, v1, v6

    add-int v6, v5, v3

    :goto_0
    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    aget v1, v1, v2

    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v2, v4

    invoke-virtual {v3, v6, v2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14223c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x3

    :goto_1
    invoke-virtual {v1, p0}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    :goto_2
    return-void
.end method
