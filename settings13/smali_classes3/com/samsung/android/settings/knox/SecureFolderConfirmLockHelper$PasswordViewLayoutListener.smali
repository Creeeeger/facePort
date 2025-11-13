.class Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;
.super Ljava/lang/Object;
.source "SecureFolderConfirmLockHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PasswordViewLayoutListener"
.end annotation


# instance fields
.field activityRootView:Landroid/view/View;

.field pwdLayout:Landroid/widget/LinearLayout;

.field scrollView:Landroid/widget/ScrollView;

.field securedKnoxLogo:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/view/View;)V
    .locals 0

    .line 1127
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    iput-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    .line 1129
    sget p1, Lcom/android/settings/R$id;->pwdLayoutScrollView:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    .line 1130
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->pwdLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    .line 1131
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->knox_logo_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->securedKnoxLogo:Landroid/widget/LinearLayout;

    return-void
.end method

.method private computePaddingForPwdlayout(Landroid/view/View;III)I
    .locals 1

    .line 1253
    iget-object p4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p4}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/android/settings/R$dimen;->kg_pwd_layout_default_margin_bottom:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    sub-int/2addr p3, p2

    sub-int/2addr p3, p4

    .line 1259
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$misInLandscapeMode(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    .line 1260
    sget p0, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 1261
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    .line 1262
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1263
    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    sub-int/2addr p3, p2

    sub-int/2addr p3, p0

    return p3
.end method

.method private computePaddingForPwdlayoutInMultiwindow(Landroid/view/View;II)I
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->kg_pwd_layout_default_margin_bottom_multiwindow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p3, p2

    sub-int/2addr p3, v0

    .line 1276
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result p0

    const/4 p2, 0x0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 1277
    sget p0, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 1278
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    .line 1279
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1280
    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    sub-int/2addr p3, p2

    sub-int/2addr p3, p0

    return p3
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    .line 1154
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1156
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1158
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1160
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    goto :goto_0

    .line 1162
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v2

    .line 1164
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyboard height = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmVisibleLayoutBottomMagin(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_b

    .line 1167
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fputmVisibleLayoutBottomMagin(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;I)V

    .line 1169
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmIsInMultiWindowMode(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Z

    move-result v1

    const/16 v3, 0x8

    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$misInLandscapeMode(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-gtz v2, :cond_2

    .line 1219
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->kg_pwd_layout_height_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1220
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1221
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v0, v2, v7}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    .line 1222
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1223
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1225
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 1226
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1227
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1228
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 1230
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1231
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1234
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1235
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmVisibleLayoutBottomMagin(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)I

    move-result v3

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->computePaddingForPwdlayout(Landroid/view/View;III)I

    move-result v0

    .line 1238
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1242
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1243
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1245
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmVisibleLayoutBottomMagin(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)I

    move-result v3

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->computePaddingForPwdlayout(Landroid/view/View;III)I

    move-result v0

    .line 1246
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1170
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_a

    .line 1171
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_5

    .line 1172
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->securedKnoxLogo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1174
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->securedKnoxLogo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1178
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$misInLandscapeMode(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide v1, 0x3fe6666666666666L    # 0.7

    goto :goto_3

    :cond_6
    const-wide v1, 0x3fd999999999999aL    # 0.4

    .line 1179
    :goto_3
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    iget-object v8, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v8}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmDeviceScreenHeight(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v3, v8

    cmpg-double v1, v3, v1

    if-gez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v7

    :goto_4
    if-eqz v1, :cond_8

    .line 1182
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$misSecureFolderPinView(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1183
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$mhideKnoxLogo(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/view/View;)V

    goto :goto_5

    .line 1185
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1186
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1190
    :goto_5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1191
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_9

    .line 1195
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1196
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->keyguard_knoxLogoLayout_top_margin_multiwindow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1200
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->computePaddingForPwdlayoutInMultiwindow(Landroid/view/View;II)I

    move-result v0

    .line 1201
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    goto :goto_6

    .line 1203
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1204
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1205
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1206
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->kg_pwd_layout_height_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1210
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1211
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1213
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-interface {v0, v2, v7}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->adjustPasswordViewWithIme(Landroid/view/View;I)V

    .line 1214
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1215
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->pwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public startListener()V
    .locals 2

    .line 1135
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    const-string v1, "Start layout listener"

    .line 1136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public stopListener()V
    .locals 3

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    .line 1143
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    const-string v1, "Stop layout listener"

    .line 1144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while stopping view listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
