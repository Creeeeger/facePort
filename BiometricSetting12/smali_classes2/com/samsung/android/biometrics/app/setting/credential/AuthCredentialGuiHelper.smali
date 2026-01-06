.class public Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;
.super Ljava/lang/Object;
.source "AuthCredentialGuiHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_AuthCredentialGuiHelper"


# instance fields
.field private mBaseView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEditLayout:Landroid/widget/LinearLayout;

.field private mTitleLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mBaseView:Landroid/view/View;

    const v0, 0x7f0a01a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mEditLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public applyRotationGui()V
    .locals 5

    const-string v0, "BSS_AuthCredentialGuiHelper"

    const-string v1, "applyRotationGui - Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mEditLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070058

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public resizeMainLayout()V
    .locals 14

    const-string v0, "BSS_AuthCredentialGuiHelper"

    const-string v1, "resizeMainLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a00f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    sub-int v5, v4, v2

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v5

    :goto_0
    nop

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide v6, 0x3fc70a3d70a3d70aL    # 0.18

    goto :goto_1

    :cond_1
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v8, v8

    add-int v9, v2, v3

    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070059

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-double v9, v5

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v9, v12

    double-to-int v9, v9

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v12, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "displayHeight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Top Margin = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
