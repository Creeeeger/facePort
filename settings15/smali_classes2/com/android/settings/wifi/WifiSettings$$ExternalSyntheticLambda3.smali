.class public final synthetic Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/wifi/WifiSettings;

    packed-switch v1, :pswitch_data_0

    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0102

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    const-string v2, "WifiSettings"

    if-nez v1, :cond_1

    const-string p0, "parentView is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHasShownBubbleTip:Z

    if-eqz v1, :cond_2

    const-string p0, "Cannot show tip popup"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    new-instance v1, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f14287b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f1414be

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/widget/SemTipPopup;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mHasShownBubbleTip:Z

    const/4 v1, 0x2

    new-array v4, v1, [I

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    const/high16 v7, 0x420c0000    # 35.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    const/high16 v6, 0x41900000    # 18.0f

    mul-float/2addr v7, v6

    float-to-int v6, v7

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    if-nez v7, :cond_3

    aget v0, v4, v0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v0

    sub-int/2addr v7, v5

    goto :goto_0

    :cond_3
    aget v0, v4, v0

    add-int v7, v0, v5

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    aget v3, v4, v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr v4, v6

    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "BadTokenException occurs. The showAutoWifiTipPopup show will be ignored."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :pswitch_0
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    return-void

    :pswitch_1
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->checkConnectViaQr()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
