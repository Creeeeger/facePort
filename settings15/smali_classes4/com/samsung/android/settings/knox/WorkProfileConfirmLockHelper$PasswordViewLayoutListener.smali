.class public final Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final activityRootView:Landroid/view/View;

.field public final pwdLayout:Landroid/widget/LinearLayout;

.field public final scrollView:Landroid/widget/ScrollView;

.field public final securedKnoxLogo:Landroid/widget/LinearLayout;

.field public final synthetic this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    const p1, 0x7f0a0c09

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    const p1, 0x7f0a0c08

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0849

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->securedKnoxLogo:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final computePaddingForPwdlayout(Landroid/view/View;II)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p3, p2

    sub-int/2addr p3, v0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode$1()Z

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
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    if-eqz v1, :cond_d

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v2, v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v3

    :goto_0
    const-string v2, "Keyboard height = "

    const-string v4, "KKG::WorkProfileConfirmLockHelper"

    invoke-static {v3, v2, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget v5, v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v6, :cond_d

    iput v6, v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    iget-boolean v5, v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mIsInMultiWindowMode:Z

    const/16 v6, 0x10

    const v7, 0x7f0704b6

    const/4 v8, -0x2

    const/16 v9, 0x8

    const/4 v10, -0x1

    const v11, 0x7f0a0843

    const/4 v12, 0x0

    if-nez v5, :cond_4

    iget-object v2, v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode$1()Z

    move-result v1

    if-eqz v1, :cond_3

    if-gtz v3, :cond_2

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    iget-object v3, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v1, v3, v12}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget v3, v3, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->computePaddingForPwdlayout(Landroid/view/View;II)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v2, v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    goto/16 :goto_7

    :cond_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget v3, v3, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->computePaddingForPwdlayout(Landroid/view/View;II)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v2, v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    goto/16 :goto_7

    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v2, v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_c

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_5

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->securedKnoxLogo:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->securedKnoxLogo:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-virtual {v2}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->isInLandscapeMode$1()Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide v5, 0x3fe6666666666666L    # 0.7

    goto :goto_3

    :cond_6
    const-wide v5, 0x3fd999999999999aL    # 0.4

    :goto_3
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v7

    int-to-double v13, v2

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget v7, v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mDeviceScreenHeight:I

    int-to-double v8, v7

    div-double/2addr v13, v8

    cmpg-double v5, v13, v5

    if-gez v5, :cond_9

    invoke-virtual {v2}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->applyWorkChallengeBackgroundCase()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    const/high16 v5, 0x20000

    iget v2, v2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->quality:I

    if-eq v2, v5, :cond_9

    const/high16 v5, 0x30000

    if-eq v2, v5, :cond_9

    :goto_4
    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v5, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    const-string v5, "Hiding Knox logo."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    :cond_8
    const-string v2, "Unable to hide knox logo."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v10, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v4, v4, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_a
    iget-object v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    iget-object v4, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v1

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0704b5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v1

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_b

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_b
    move v1, v12

    :goto_6
    sub-int/2addr v5, v12

    sub-int/2addr v5, v1

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v1, v0, v5}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    goto :goto_7

    :cond_c
    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    iget-object v3, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v1, v3, v12}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public final stopListener()V
    .locals 3

    const-string v0, "KKG::WorkProfileConfirmLockHelper"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    const-string v1, "Stop layout listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

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
