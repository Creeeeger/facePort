.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;
.super Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlertDialog:Landroid/app/AlertDialog;

.field public final mContext:Landroid/content/Context;

.field public final mMessageEditTextImeOptions:I

.field public final mMessageEditTextInputType:I

.field public mMessageEditTextString:Ljava/lang/String;

.field public final mPositiveButtonText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mMessageEditTextInputType:I

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mMessageEditTextImeOptions:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const p2, 0x7f141b4b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mPositiveButtonText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "WifiApDialogPreference"

    const-string v1, "Dialog is showing, ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->onPreferenceClick(Landroidx/preference/Preference;)Z

    return v2

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {p1, v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;I)V

    invoke-virtual {p1, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;I)V

    invoke-virtual {p1, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mPositiveButtonText:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;I)V

    invoke-virtual {p1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;)V

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;)V

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0d0a22

    invoke-virtual {p1, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v3, 0x7f0a0521

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a051c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v5, 0x7f0a051e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a051d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v6, 0x8

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mMessageEditTextString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mMessageEditTextString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mMessageEditTextInputType:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_4

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    :cond_4
    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mMessageEditTextImeOptions:I

    if-eq v3, v7, :cond_5

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_5
    new-array v3, v0, [Landroid/text/InputFilter;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;)V

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return v2
.end method
