.class public Lcom/android/systemui/popup/view/SimTrayProtectionDialog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# static fields
.field private static final TAG:Ljava/lang/String; = "SimTrayProtectionDialog"

.field public static final TINY_TEXT_SCALE:F = 0.9f


# instance fields
.field private mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBodyLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayWidth:I

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mStyle:I

.field private mType:I

.field private mWaterproof:Z


# direct methods
.method public static synthetic $r8$lambda$3kqyPSFI_LTLRV_HgRAPLrqbeKY(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->lambda$createDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBodyImage(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayMetrics(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayWidth(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayWidth:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayMetrics(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;Landroid/util/DisplayMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayWidth(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;IZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;-><init>(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iput p3, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mType:I

    iput-boolean p4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mWaterproof:Z

    iput p5, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mStyle:I

    new-instance p2, Lcom/android/systemui/popup/data/SimTrayProtectionData;

    invoke-direct {p2, p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->createDialog(Lcom/android/systemui/popup/data/SimTrayProtectionData;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private createDialog(Lcom/android/systemui/popup/data/SimTrayProtectionData;)Landroidx/appcompat/app/AlertDialog;
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getTitleMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FLIP:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v1, v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f140613

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d043e

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0b68

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const v5, 0x7f0a0b67

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getBodyImageHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getBodyImage()I

    move-result v5

    if-nez v5, :cond_1

    const-string v8, ""

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "SimTrayProtectionDialog"

    const-string v10, "drawable"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "raw"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v5, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v8, "Unknown resource type"

    invoke-virtual {v5, v9, v8}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v10, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    const v5, 0x7f0a0b6a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v8, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mType:I

    const/16 v10, 0x8

    if-ne v8, v3, :cond_4

    iget-object v8, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getBodyMessageNoSimCard()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const v8, 0x7f0a0b6b

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mWaterproof:Z

    if-ne v11, v3, :cond_5

    iget-object v11, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getBodyMessageWaterProofSimCard()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    const v11, 0x7f0a0b69

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget v12, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mStyle:I

    if-nez v12, :cond_6

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_6
    iget-object v10, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->getBodyMessageInsertingSimCard()I

    move-result p1

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    sget-boolean p1, Lcom/android/systemui/BasicRune;->POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG:Z

    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/TextView;

    aput-object v11, v1, v2

    aput-object v8, v1, v3

    const/4 v2, 0x2

    aput-object v5, v1, v2

    invoke-direct {p0, v1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->updateFontSize([Landroid/widget/TextView;)V

    :cond_7
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f131594

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)V

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7e1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :goto_6
    return-object p0
.end method

.method private synthetic lambda$createDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private varargs updateFontSize([Landroid/widget/TextView;)V
    .locals 5

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x3f666666    # 0.9f

    const v3, 0x3fa66666    # 1.3f

    const v4, 0x7f071548

    invoke-static {v1, v4, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public show()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "SimTrayProtectionDialog"

    invoke-virtual {p0, v0}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
