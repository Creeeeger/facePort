.class public Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;
.super Ljava/lang/Object;
.source "WorkProfileSysUiClientHelper.java"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;


# static fields
.field private static final BIOMETRIC_FAILED_ATTEMPTS_TIMEOUT_MS:I = 0x7530

.field private static final BIOMETRIC_MAX_FAILED_ATTEMPTS:I = 0x32

.field private static final BIOMETRIC_MAX_FAILED_ATTEMPTS_BEFORE_THROTTLE:I = 0x5

.field private static final DETAIL_TEXTS:[[I

.field private static final TAG:Ljava/lang/String; = "KKG::WorkProfileSysUiClientHelper"


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private final mCredentialType:I

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

.field private mIsPasswordShown:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f1000e0

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    const v3, 0x7f1000e2

    aput v3, v2, v4

    aput-object v2, v0, v1

    new-array v1, v1, [I

    const v2, 0x7f1000e1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->DETAIL_TEXTS:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mCredentialType:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mIsPasswordShown:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mIsPasswordShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->isInLandscapeMode()Z

    move-result v0

    return v0
.end method

.method private addListenersForPasswordView(Landroid/view/View;)V
    .locals 21

    move-object/from16 v11, p1

    const v0, 0x7f0a0113

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ScrollView;

    const v0, 0x7f0a00bb

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageView;

    const v0, 0x7f0a0112

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0105

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00e3

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    const v0, 0x7f0a007f

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v9, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$4;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v14

    move-object v5, v15

    move-object v6, v13

    move-object/from16 v7, v16

    move-object/from16 v8, v19

    move-object v11, v9

    move-object/from16 v9, v17

    move-object/from16 v20, v12

    move-object v12, v10

    move-object/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$4;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;Landroid/view/View;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v12, v11}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private adjustPasswordViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->setAuthenticationViewOrientation(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    const v3, 0x7f0a0105

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0a00bb

    invoke-virtual {v2, v4}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0112

    invoke-virtual {v2, v5}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0a0113

    invoke-virtual {v2, v6}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    const v7, 0x7f0a007f

    invoke-virtual {v2, v7}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v8, 0x7f0a0107

    invoke-virtual {v2, v8}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    iget v14, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    const/4 v14, -0x1

    iput v14, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v14, 0x0

    iput v14, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/high16 v14, 0x3f000000    # 0.5f

    iput v14, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v14, 0xd

    invoke-virtual {v11, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v15, 0xa

    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v15, 0x11

    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isFoldableProduct()Z

    move-result v14

    if-eqz v14, :cond_0

    iget v14, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v14, :cond_0

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v14

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v15, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v15

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v15, v14}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setPadding(IIII)V

    const/4 v3, -0x1

    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_1
    move-object/from16 v18, v3

    const/4 v3, -0x1

    iput v3, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v14, 0x7f070138

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x50

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0xa

    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xd

    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/high16 v14, 0x3e800000    # 0.25f

    iput v14, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v14, 0x3f400000    # 0.75f

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v3

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v14, v14, v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setPadding(IIII)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isFoldableProduct()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result v3

    int-to-double v14, v3

    const-wide v16, 0x3fe6666666666666L    # 0.7

    mul-double v14, v14, v16

    double-to-int v3, v14

    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result v3

    int-to-double v14, v3

    const-wide v16, 0x3fd999999999999aL    # 0.4

    mul-double v14, v14, v16

    double-to-int v3, v14

    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    return-void
.end method

.method private adjustPatternViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->setAuthenticationViewOrientation(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    const v3, 0x7f0a0105

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0a0113

    invoke-virtual {v2, v4}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const v7, 0x7f0a00bb

    invoke-virtual {v2, v7}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0a0112

    invoke-virtual {v2, v8}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f0a007f

    invoke-virtual {v2, v9}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    iget v12, v1, Landroid/content/res/Configuration;->orientation:I

    const/16 v15, 0xd

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-ne v12, v14, :cond_1

    iput v13, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v12, 0x11

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v12, 0x7f0a00e3

    const/4 v14, 0x3

    invoke-virtual {v11, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/high16 v12, 0x3f000000    # 0.5f

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isFoldableProduct()Z

    move-result v12

    if-eqz v12, :cond_0

    iget v12, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v12, :cond_0

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v12

    goto :goto_0

    :cond_0
    move v12, v13

    :goto_0
    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v2, v13, v13, v14, v12}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f070138

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v12, 0xe

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v12, 0xa

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v12, 0x50

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->adjustBiometricViewWeightsForPatternPortrait()F

    move-result v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v12

    iput v14, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v2, v13, v13, v13, v14}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setPadding(IIII)V

    :goto_1
    return-void
.end method

.method private failedBiometricAttemptForWorkProfile()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    return-void
.end method

.method private getBiometricLockTimerDialogIntent(I)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method private getDefaultDetails(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->DETAIL_TEXTS:[[I

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget v1, v1, v0

    return v1

    :pswitch_1
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->DETAIL_TEXTS:[[I

    aget-object v1, v2, v1

    aget v1, v1, v0

    return v1

    :pswitch_2
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->DETAIL_TEXTS:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget v1, v1, v0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getKeyDescription(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static getKeySubTitle(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static getKeyTitle(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private isInLandscapeMode()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$onErrorTimeoutFinish$0(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic lambda$onErrorTimeoutFinish$1(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private reportFailedAttempt(Landroid/widget/TextView;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "KKG::WorkProfileSysUiClientHelper"

    const-string v2, "reportFailedAttempt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v7

    goto :goto_1

    :cond_0
    const-string v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v8, "getMaximumFailedPasswordsForDisable"

    const/4 v9, -0x1

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v11}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v10

    if-lez v10, :cond_1

    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v11}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v11

    const v12, 0x186a0

    mul-int/2addr v11, v12

    goto :goto_0

    :cond_1
    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v11}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v11

    if-nez v11, :cond_2

    move v11, v5

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    :goto_0
    new-array v9, v6, [Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v5

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v12, v7, v8, v9}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    move v7, v12

    :goto_1
    if-lez v3, :cond_3

    if-lez v7, :cond_3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_2

    :cond_3
    if-lez v3, :cond_4

    move v8, v3

    goto :goto_2

    :cond_4
    if-lez v7, :cond_5

    move v8, v7

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-lez v8, :cond_18

    if-gtz v2, :cond_6

    move-object/from16 v11, p1

    goto/16 :goto_5

    :cond_6
    sub-int v9, v8, v2

    const/16 v10, 0xa

    if-le v9, v10, :cond_7

    return-void

    :cond_7
    if-ne v9, v6, :cond_8

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v11, 0x7f1000d7

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_8
    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v11, 0x7f1000d8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_3
    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x5

    if-le v9, v10, :cond_9

    return-void

    :cond_9
    const-string v10, ""

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    iget-object v13, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v13}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v13

    invoke-static {v12, v13}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v14}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v14

    invoke-static {v13, v14}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Under than 5 attempts left : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " Wipe : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " Disable : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    const/4 v15, 0x2

    if-ne v8, v3, :cond_11

    if-ne v2, v6, :cond_d

    if-ne v9, v6, :cond_b

    if-eqz v13, :cond_a

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v14, 0x7f1000cb

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v12, v14, v5

    aput-object v12, v14, v6

    invoke-static {v1, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v15, v6

    goto/16 :goto_4

    :cond_a
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v14, 0x7f1000cf

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v15, v6

    goto/16 :goto_4

    :cond_b
    if-eqz v13, :cond_c

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v14, 0x7f1000cc

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v12, v15, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v6

    const/4 v14, 0x2

    aput-object v12, v15, v14

    invoke-static {v1, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v15, v6

    goto/16 :goto_4

    :cond_c
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v14, 0x7f1000d0

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-static {v1, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v15, v6

    goto/16 :goto_4

    :cond_d
    if-ne v9, v6, :cond_f

    if-eqz v13, :cond_e

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v14, 0x7f1000ce

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v5

    aput-object v12, v15, v6

    const/4 v14, 0x2

    aput-object v12, v15, v14

    invoke-static {v1, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v15, v6

    goto/16 :goto_4

    :cond_e
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v14, 0x7f1000d2

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-static {v1, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v15, v6

    goto/16 :goto_4

    :cond_f
    if-eqz v13, :cond_10

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v15, 0x7f1000cd

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v5

    aput-object v12, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v6, 0x2

    aput-object v15, v1, v6

    const/4 v6, 0x3

    aput-object v12, v1, v6

    invoke-static {v14, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_10
    const/4 v6, 0x2

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v14, 0x7f1000d1

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v6, v15

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_11
    move v15, v6

    if-ne v2, v15, :cond_13

    if-ne v8, v15, :cond_12

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1000c7

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v12, v6, v5

    aput-object v12, v6, v15

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_12
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1000c8

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v12, v14, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v15

    const/4 v6, 0x2

    aput-object v12, v14, v6

    invoke-static {v1, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_13
    if-ne v9, v15, :cond_14

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1000ca

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v5

    aput-object v12, v14, v15

    const/4 v6, 0x2

    aput-object v12, v14, v6

    invoke-static {v1, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_14
    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v14, 0x7f1000c9

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v5

    aput-object v12, v1, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x2

    aput-object v14, v1, v16

    const/4 v14, 0x3

    aput-object v12, v1, v14

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    if-ge v9, v15, :cond_16

    if-eq v8, v3, :cond_15

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->sendAdminLockEvent(I)V

    :cond_15
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    return-void

    :cond_16
    const/4 v6, 0x1

    if-ge v9, v6, :cond_17

    move v5, v6

    :cond_17
    invoke-direct {v0, v1, v5}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->showLastTryDialog(Ljava/lang/String;Z)V

    return-void

    :cond_18
    move-object/from16 v11, p1

    :goto_5
    return-void
.end method

.method private sendAdminLockEvent(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "knox.container.proxy.POLICY_ADMIN_LOCK"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private setAuthenticationViewOrientation(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setOrientation(I)V

    :goto_0
    return-void
.end method

.method private setStrongAuthBiometricLockout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    return-void
.end method

.method private setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p3}, Lcom/samsung/android/biometrics/app/setting/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private showLastTryDialog(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1030128

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_1
    nop

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$1;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v5, 0x7e1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setType(I)V

    const/16 v5, 0x50

    invoke-virtual {v1, v5}, Landroid/view/Window;->setGravity(I)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$2;

    invoke-direct {v5, p0, p2}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$2;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;Z)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updatePasswordViewLayout(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 6

    const v0, 0x7f0a00ed

    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0a0106

    invoke-virtual {p1, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";disableToolbar=true;lockScreenPasswordField=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    :cond_0
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mCredentialType:I

    const/4 v3, 0x3

    const/16 v4, 0x8

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordVisibilityEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08008f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f1000fa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060049

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;Landroid/widget/EditText;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->adjustPasswordViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->addListenersForPasswordView(Landroid/view/View;)V

    return-void
.end method

.method private updatePatternViewLayout(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->adjustPatternViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    return-void
.end method


# virtual methods
.method public changeCredentialViewIfNeeded(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;Landroid/view/View;)Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;
    .locals 4

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mCredentialType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mCredentialType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0035

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->updatePatternViewLayout(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0034

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->updatePasswordViewLayout(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MANAGED_PROFILE_KNOX"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0101

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0a007e

    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mCredentialType:I

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->getDefaultDetails(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a00e4

    invoke-virtual {p1, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDetailsTextView(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0a007e

    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f100050

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f100052

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f100051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
        0x70000 -> :sswitch_1
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleAuthenticationFailed()Z
    .locals 9

    const-string v0, "KKG::WorkProfileSysUiClientHelper"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->failedBiometricAttemptForWorkProfile()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedBiometricAttempts(I)I

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/16 v7, 0x32

    if-lt v1, v7, :cond_2

    const-string v7, "isBiometricDeadlineForWorkProfile ( too many failed. )"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v7}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v7}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v7

    invoke-static {v0, v7}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->sendAdminLockEvent(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v6, v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->setStrongAuthBiometricLockout()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v6, v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    return v5

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    :goto_0
    return v5

    :cond_2
    if-eqz v1, :cond_5

    rem-int/lit8 v0, v1, 0x5

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v7}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v7

    const/16 v8, 0x7530

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v7}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v7

    invoke-static {v0, v7}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v6, v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    return v5

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v6, v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    return v5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    return v5

    :cond_5
    return v3
.end method

.method public handleAuthenticationSucceeded()Z
    .locals 2

    const-string v0, "KKG::WorkProfileSysUiClientHelper"

    const-string v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public interceptHandleAuthenticationSucceededIfNeeded()Z
    .locals 3

    const-string v0, "KKG::WorkProfileSysUiClientHelper"

    const-string v1, "intercepthandleAuthenticationSucceededIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "applied password policy with multificator enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public interceptNegativeButtonEventIfNeeded()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public modifyLayoutParamsIfNeeded(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/InsetsFlags;->behavior:I

    return-void
.end method

.method public onAttachedPatternViewToWindow(Lcom/android/internal/widget/LockPatternView;)V
    .locals 2

    const/4 v0, -0x1

    const/high16 v1, -0x10000

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    return-void
.end method

.method public onAttachedToWindow(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6

    const v0, 0x7f0a00e3

    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string v2, "MANAGED_PROFILE_KNOX_LEGACY_CL"

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f100043

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f100044

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f100042

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->getKeyTitle(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->getKeySubTitle(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, p3, v3, p1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->getKeyDescription(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, p4, v3, p1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    if-eqz p5, :cond_4

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/ResourceManager;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const-string v5, "com.android.settings"

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sec_ws_ic_knox_premium"

    invoke-virtual {v3, v1}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "knox_basic"

    invoke-virtual {v3, v1}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_4

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mCredentialType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mCredentialType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->adjustPatternViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->adjustPasswordViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCredentialVerified(IZLandroid/view/View;ILandroid/widget/TextView;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    goto :goto_1

    :cond_0
    if-lez p4, :cond_1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    instance-of v0, p3, Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    instance-of v0, p3, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    invoke-direct {p0, p5}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->reportFailedAttempt(Landroid/widget/TextView;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onErrorTimeoutFinish(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;ILandroid/view/View;)V
    .locals 5

    const-wide/16 v0, 0x64

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    instance-of v3, p3, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move-object v3, p3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setClickable(Z)V

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    new-instance v4, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v2}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p1, v4, v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    instance-of v0, p3, Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    instance-of v3, p3, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move-object v3, p3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setClickable(Z)V

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    new-instance v4, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p1, v4, v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBiometricAttemptDeadline(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    return-void
.end method

.method public setDetailText(Landroid/widget/TextView;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->DETAIL_TEXTS:[[I

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->DETAIL_TEXTS:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->DETAIL_TEXTS:[[I

    aget-object v4, v4, v2

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setErrorTimerText(Landroid/widget/TextView;II)V
    .locals 6

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0e0005

    const/16 v1, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le p2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    add-int/lit8 v4, p3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v0, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0006

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
