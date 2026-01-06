.class public Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;
.super Ljava/lang/Object;
.source "SecureFolderSysUiClientHelper.java"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;


# static fields
.field private static final BIOMETRIC_FAILED_ATTEMPTS_TIMEOUT_MS:I = 0x7530

.field private static final BIOMETRIC_MAX_FAILED_ATTEMPTS:I = 0x32

.field private static final BIOMETRIC_MAX_FAILED_ATTEMPTS_BEFORE_THROTTLE:I = 0x5

.field private static final DETAIL_TEXTS:[[I

.field public static final FAILED_ATTEMPTS_TO_UPDATE_HEADER:I = 0xa

.field public static final MAXIMUM_FAILED_ATTEMPTS_ALLOWED:I = 0x14

.field private static final SAMSUNG_ACCOUNT_RESET_KEY:Ljava/lang/String; = "sf_reset_with_samsung_account"

.field private static final TAG:Ljava/lang/String; = "KKG::SecureFolderSysUiClientHelper"


# instance fields
.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtnForgot:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private final mCredentialType:I

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

.field private mIsPasswordShown:Z

.field private mKnoxEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mUninstallBtn:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f100053

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

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->DETAIL_TEXTS:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mCredentialType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->getStatusLogString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSamsungAnalyticsLogger;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mIsPasswordShown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mIsPasswordShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->removeSecureFolder(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mCredentialType:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->isInLandscapeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->showForgotPasswordDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->getCurrentLockType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->showUninstallDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->showSFLockedView(ZZ)V

    return-void
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

    new-instance v9, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;

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

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;Landroid/view/View;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v12, v11}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private adjustPasswordViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setAuthenticationViewOrientation(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

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

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v14

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v15, v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v3

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v14, v14, v3}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setPadding(IIII)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isFoldableProduct()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setAuthenticationViewOrientation(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

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

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isFoldableProduct()Z

    move-result v12

    if-eqz v12, :cond_0

    iget v12, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v12, :cond_0

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v12

    goto :goto_0

    :cond_0
    move v12, v13

    :goto_0
    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v2, v13, v13, v14, v12}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setPadding(IIII)V

    const/high16 v13, 0x3f000000    # 0.5f

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_1
    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v2, v13, v13, v13, v12}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->setPadding(IIII)V

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070138

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

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

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isFoldableProduct()Z

    move-result v12

    if-eqz v12, :cond_2

    const v12, 0x3f19999a    # 0.6f

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v12, 0x3ecccccd    # 0.4f

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->adjustBiometricViewWeightsForPatternPortrait()F

    move-result v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v12

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_1
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    const/4 v2, 0x1

    if-gtz v0, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    if-gtz v1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private failedBiometricAttemptForSecureFolder()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    return-void
.end method

.method private getCurrentLockType()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mCredentialType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "password"

    goto :goto_0

    :pswitch_1
    const-string v0, "pattern"

    goto :goto_0

    :pswitch_2
    const-string v0, "pin"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultDetails(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->DETAIL_TEXTS:[[I

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget v1, v1, v0

    return v1

    :pswitch_1
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->DETAIL_TEXTS:[[I

    aget-object v1, v2, v1

    aget v1, v1, v0

    return v1

    :pswitch_2
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->DETAIL_TEXTS:[[I

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

.method private getSecureFolderLogo()Landroid/graphics/drawable/Drawable;
    .locals 8

    const-string v0, "KKG::SecureFolderSysUiClientHelper"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v4

    move-object v1, v4

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    array-length v6, v1

    invoke-static {v1, v3, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to fetch sf icon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v1, :cond_1

    const-string v4, "Applying default sf icon"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800c3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v4, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    array-length v7, v1

    invoke-static {v1, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v2, v5

    :cond_1
    return-object v2
.end method

.method private getStatusLogString(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FINGERPRINT_PLUS_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->getCurrentLockType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v3, "dedicated finger"

    goto :goto_0

    :cond_0
    const-string v3, "fingerprint"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isAdminActive(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3

    nop

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    const-string v1, "KKG::SecureFolderSysUiClientHelper"

    const-string v2, "DevicePolicyManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method private isAttemptLeftNeedToShow(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInLandscapeMode()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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

.method private isResetWithSamsungAccountEnable()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    const-string v2, "sf_reset_with_samsung_account"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
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

.method private removeSecureFolder(Landroid/content/Context;)V
    .locals 5

    const-string v0, "KKG::SecureFolderSysUiClientHelper"

    const-string v1, "removeSecureFolder()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSecureFolder(). Incorrect User ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setActiveAdminIfNeeded(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DelFlag"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setDefaultIconandName(Landroid/content/Context;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->removeSecureFolderUser(Landroid/content/Context;I)V

    return-void
.end method

.method private removeSecureFolderUser(Landroid/content/Context;I)V
    .locals 3

    :try_start_0
    const-string v0, "com.samsung.knox.securefolder"

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSecureFolderUser(). Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KKG::SecureFolderSysUiClientHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setActiveAdmin(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 5

    nop

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "KKG::SecureFolderSysUiClientHelper"

    if-nez v0, :cond_0

    const-string v2, "DevicePolicyManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-virtual {v0, p2, p3, v2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting active admin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setActiveAdminIfNeeded(Landroid/content/Context;)V
    .locals 4

    const-string v0, "KKG::SecureFolderSysUiClientHelper"

    const-string v1, "setActiveAdminIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.securefolder"

    const-string v3, "com.samsung.knox.securefolder.containeragent.detector.KnoxDeviceAdminReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->isAdminActive(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "setActiveAdminIfNeeded(): Setting active admin"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setActiveAdmin(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method private setAuthenticationViewOrientation(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 3

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
    const/16 v0, 0x8

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setForgotOrUninstallBtn(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;I)V

    return-void
.end method

.method private setDefaultIconandName(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "secure_folder_image_name"

    const-string v2, "sf_app_icon_00"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "secure_folder_name"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setForgotOrUninstallBtn(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;I)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    move-result v0

    const v1, 0x7f0a005d

    const v2, 0x7f0a005c

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->getOrientation()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mCredentialType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    nop

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$4;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0701e7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->getOrientation()I

    move-result v6

    if-ne v6, v3, :cond_2

    invoke-virtual {p1, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0701e9

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x3

    const v3, 0x7f0a007e

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    const v2, 0x7f1000da

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    const v2, 0x7f0800ab

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$5;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setStrongAuthBiometricLockout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

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
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p3}, Lcom/samsung/android/biometrics/app/setting/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private showForgotPasswordDialog()V
    .locals 7

    const-string v0, "KKG::SecureFolderSysUiClientHelper"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1030128

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_1
    nop

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, ""

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    const v6, 0x7f1000c1

    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1000bf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_3

    :sswitch_1
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1000c3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_3

    :sswitch_2
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_3

    :goto_2
    const-string v5, "invalid quality error"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isSecBrandAsGalaxy()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1000c5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1000c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_4
    const v5, 0x7f1000de

    new-instance v6, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$6;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f10004e

    new-instance v6, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$7;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7e1

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

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

.method private showSFLockedView(ZZ)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.knox.SecureFolderLockedView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "fromResetBtn"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "wasLastAttempt"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while launching secure folder locked view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KKG::SecureFolderSysUiClientHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showUninstallDialog()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1030128

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_1
    nop

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f10010b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f1000d9

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f1000da

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$8;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f10004e

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$9;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7e1

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updatePasswordViewLayout(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 5

    const v0, 0x7f0a00ed

    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0a0106

    invoke-virtual {p1, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

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

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mCredentialType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f1000fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060049

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$1;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;Landroid/widget/EditText;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$2;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->adjustPasswordViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->addListenersForPasswordView(Landroid/view/View;)V

    return-void
.end method

.method private updatePatternViewLayout(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->adjustPatternViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    return-void
.end method


# virtual methods
.method public changeCredentialViewIfNeeded(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;Landroid/view/View;)Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;
    .locals 4

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mCredentialType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mCredentialType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0035

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->updatePatternViewLayout(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0034

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->updatePasswordViewLayout(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SECURE_FOLDER"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0101

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0a007e

    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mCredentialType:I

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->getDefaultDetails(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
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
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleAuthenticationFailed()Z
    .locals 9

    const-string v0, "KKG::SecureFolderSysUiClientHelper"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->failedBiometricAttemptForSecureFolder()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedBiometricAttempts(I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x66

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x32

    if-lt v1, v7, :cond_1

    const-string v7, "mFailedBiometricUnlockAttemptsForSecureFolder ( too many failed. )"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v7}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setStrongAuthBiometricLockout()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    return v6

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    return v6

    :cond_1
    if-eqz v1, :cond_3

    rem-int/lit8 v0, v1, 0x5

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v7}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v7

    const/16 v8, 0x7530

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    return v6

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    return v6

    :cond_3
    return v5
.end method

.method public handleAuthenticationSucceeded()Z
    .locals 4

    const-string v0, "KKG::SecureFolderSysUiClientHelper"

    const-string v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->getCurrentLockType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    const/16 v3, 0x3e8

    invoke-static {v2, v3, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public interceptHandleAuthenticationSucceededIfNeeded()Z
    .locals 2

    const-string v0, "KKG::SecureFolderSysUiClientHelper"

    const-string v1, "interceptHandleAuthenticationSucceededIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public interceptNegativeButtonEventIfNeeded()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

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
    .locals 3

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, 0x3f266666    # 0.65f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

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
    .locals 3

    const v0, 0x7f0a00e3

    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SECURE_FOLDER_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f100042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->getKeyTitle(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p2, v1, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->getKeySubTitle(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p3, v1, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->getKeyDescription(Landroid/hardware/biometrics/PromptInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p4, v1, p1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->getSecureFolderLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mCredentialType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mCredentialType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->adjustPatternViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->adjustPasswordViewLayout(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCredentialVerified(IZLandroid/view/View;ILandroid/widget/TextView;)V
    .locals 5

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    goto/16 :goto_0

    :cond_0
    if-lez p4, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFailedUnlockAttemptsForSecureFolder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KKG::SecureFolderSysUiClientHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x14

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mFailedUnlockAttemptsForSecureFolder ( show Locked View. )"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->showSFLockedView(ZZ)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown credential type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    instance-of v1, p3, Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_3

    move-object v1, p3

    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    instance-of v1, p3, Landroid/widget/EditText;

    if-eqz v1, :cond_3

    move-object v1, p3

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setClickable(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSamsungAnalyticsLogger;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

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

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    new-instance v4, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v2}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

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

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    new-instance v4, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

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

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    return-void
.end method

.method public setDetailText(Landroid/widget/TextView;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    rsub-int/lit8 v2, v0, 0x14

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->isAttemptLeftNeedToShow(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0002

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v6, v7, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->DETAIL_TEXTS:[[I

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aget v5, v6, v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v3, v4

    goto :goto_3

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->isAttemptLeftNeedToShow(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0004

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v6, v7, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->DETAIL_TEXTS:[[I

    aget-object v4, v7, v4

    aget v4, v4, v5

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v3, v4

    goto :goto_3

    :sswitch_2
    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->isAttemptLeftNeedToShow(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0003

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v6, v7, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v3, v4

    nop

    :goto_3
    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    nop

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

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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
