.class public final Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final activityRootView:Landroid/view/View;

.field public final pwdLayout:Landroid/widget/LinearLayout;

.field public final scrollView:Landroid/widget/ScrollView;

.field public final securedKnoxLogo:Landroid/widget/LinearLayout;

.field public final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    const p1, 0x7f0a0c09

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    const p1, 0x7f0a0c08

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0849

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->securedKnoxLogo:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final computePaddingForPwdlayout(Landroid/view/View;II)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p3, p2

    sub-int/2addr p3, v0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f0a0843

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move p0, p1

    :goto_0
    sub-int/2addr p3, p1

    sub-int/2addr p3, p0

    return p3
.end method

.method public final onGlobalLayout()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    if-eqz v0, :cond_9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v2

    :goto_0
    const-string v1, "Keyboard height = "

    const-string v3, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {v2, v1, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget v3, v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v4, :cond_9

    iput v4, v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    iget-boolean v3, v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    const/16 v4, 0x8

    const/16 v5, 0x10

    const v6, 0x7f0704b6

    const/4 v7, -0x2

    const v8, 0x7f0a0843

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-nez v3, :cond_4

    iget-object v1, v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_3

    if-gtz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v0, v2, v10}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget v2, v2, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->computePaddingForPwdlayout(Landroid/view/View;II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    goto/16 :goto_4

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget v2, v2, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->computePaddingForPwdlayout(Landroid/view/View;II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    goto/16 :goto_4

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v3, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->securedKnoxLogo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->securedKnoxLogo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v3, v3, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0704b5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v4, v3

    sub-int/2addr v4, v0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v10

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_7
    move v0, v10

    :goto_3
    sub-int/2addr v4, v10

    sub-int/2addr v4, v0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v0, p0, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v0, v2, v10}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final stopListener()V
    .locals 3

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    const-string v1, "Stop layout listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while stopping view listener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
