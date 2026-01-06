.class Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;
.super Ljava/lang/Object;
.source "SecureFolderSysUiClientHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->addListenersForPasswordView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

.field final synthetic val$knoxDetailsText:Landroid/widget/LinearLayout;

.field final synthetic val$knoxLogo:Landroid/widget/ImageView;

.field final synthetic val$knoxTitleText:Landroid/widget/TextView;

.field final synthetic val$logo_layout_parent:Landroid/widget/RelativeLayout;

.field final synthetic val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic val$pwdLayout:Landroid/widget/LinearLayout;

.field final synthetic val$pwdLayoutScrollView:Landroid/widget/ScrollView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;Landroid/view/View;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$pwdLayoutScrollView:Landroid/widget/ScrollView;

    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$pwdLayout:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$logo_layout_parent:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxLogo:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxTitleText:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxDetailsText:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    iput-object p10, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$view:Landroid/view/View;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$pwdLayoutScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$pwdLayoutScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$pwdLayoutScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyboard height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KKG::SecureFolderSysUiClientHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    if-gtz v3, :cond_3

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$400(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v5, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$logo_layout_parent:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxLogo:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxTitleText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v7}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070141

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxDetailsText:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5, v7, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$400(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3e4ccccd    # 0.2f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3f4ccccd    # 0.8f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_2
    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$400(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-int v4, v3, v2

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v5, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$logo_layout_parent:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5, v5, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxDetailsText:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxLogo:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxTitleText:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-int v4, v3, v2

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v5, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$logo_layout_parent:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxTitleText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;->val$knoxDetailsText:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_5
    :goto_3
    return-void
.end method
