.class public Lcom/samsung/android/globalactions/util/AlertDialogFactory;
.super Ljava/lang/Object;
.source "AlertDialogFactory.java"


# instance fields
.field private blacklist mAlertDialog:Landroid/app/AlertDialog;

.field private blacklist mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsNightMode:Z

.field private blacklist mPasswordTextView:Landroid/widget/EditText;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist initAlertDialogBuilder()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mIsNightMode:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mIsNightMode:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    const v3, 0x1030128

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    :goto_1
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$getProKioskModeDialog$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic blacklist lambda$getProKioskModeDialog$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public blacklist getInsertSimCardDialog()Landroid/app/AlertDialog;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->initAlertDialogBuilder()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10405cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10405d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "GlobalActions_InsertSimCardDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public blacklist getProKioskModeDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->initAlertDialogBuilder()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10405dd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10405da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/EditText;

    iget-boolean v4, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mIsNightMode:Z

    if-eqz v4, :cond_0

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    const v6, 0x1030128

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    :goto_0
    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v3, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v3, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/globalactions/util/AlertDialogFactory$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/samsung/android/globalactions/util/AlertDialogFactory$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    const v4, 0x104000a

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/globalactions/util/AlertDialogFactory$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/samsung/android/globalactions/util/AlertDialogFactory$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v3, "GlobalActions_ProKioskDialog"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7d8

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public blacklist getProKioskPasswordText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProKioskPasswordWindowToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
