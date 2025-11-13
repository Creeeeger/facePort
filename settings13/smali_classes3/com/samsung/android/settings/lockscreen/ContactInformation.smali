.class public Lcom/samsung/android/settings/lockscreen/ContactInformation;
.super Landroidx/fragment/app/DialogFragment;
.source "ContactInformation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckbox:Landroid/widget/CheckBox;

.field mContext:Landroid/content/Context;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Ljava/lang/String;

.field private mOwnerInfoEditText:Landroid/widget/EditText;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$19yWTZNRKO_9VyMK4oTqblWe3Uw(Lcom/samsung/android/settings/lockscreen/ContactInformation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->lambda$refreshDialogCustomView$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$3lNKEghAwSttdX5r-Xn81yBJjZw(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->lambda$showInputMethod$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VAXFrgLLU2LQAT15-5AcboXIU7Y(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->lambda$refreshDialogCustomView$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorTextView(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mErrorTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOwnerInfoEditText(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollView(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowInputMethod(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->showInputMethod()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    return-void
.end method

.method private hideSoftInput()V
    .locals 2

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 361
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initView()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/ContactInformation;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x41

    if-le v0, v2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    .line 132
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->ownerinfo_scrollview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mScrollView:Landroid/widget/ScrollView;

    .line 134
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->show_owner_info_on_lockscreen_checkbox_popup:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mCheckbox:Landroid/widget/CheckBox;

    .line 135
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->error_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mErrorTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    .line 136
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mCheckbox:Landroid/widget/CheckBox;

    sget v4, Lcom/android/settings/R$string;->sec_show_contact_info_on_lockscreen_label:I

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 142
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->owner_info_edit_text_popup:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    .line 144
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    const-string v3, "disableImage=true;"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 154
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz v1, :cond_5

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mCheckbox:Landroid/widget/CheckBox;

    sget v1, Lcom/android/settings/R$string;->show_profile_info_on_lockscreen_label:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_0

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mCheckbox:Landroid/widget/CheckBox;

    sget v1, Lcom/android/settings/R$string;->sec_show_user_info_on_lockscreen_label:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 162
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/ContactInformation$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation$2;-><init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private synthetic lambda$refreshDialogCustomView$1()V
    .locals 1

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    const/16 v0, 0x82

    .line 217
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$refreshDialogCustomView$2(Z)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 210
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_1

    .line 215
    new-instance v0, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$showInputMethod$0()V
    .locals 3

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 176
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mErrorTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 187
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->refreshDialogCustomView(Z)V

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 190
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/lockscreen/ContactInformation;
    .locals 3

    .line 78
    new-instance v0, Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 80
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refreshDialogCustomView(Z)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 205
    new-instance v1, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private showInputMethod()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 198
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 199
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x2

    const/16 v0, 0x1130

    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->saveChanges()V

    .line 334
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 335
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    sget v2, Lcom/samsung/android/settings/lockscreen/ContactInformation;->MY_USER_ID:I

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    const/16 v1, 0xc8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, v1, p1, v2}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 339
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->hideSoftInput()V

    const/16 p0, 0x1162

    .line 340
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    .line 343
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->hideSoftInput()V

    const/16 p0, 0x1144

    .line 344
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->showInputMethod()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->sec_contact_information_popup:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mView:Landroid/view/View;

    .line 100
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->initView()V

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mView:Landroid/view/View;

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->done_button:I

    .line 109
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    .line 110
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mAlertDialog:Landroid/app/AlertDialog;

    .line 113
    new-instance v0, Lcom/samsung/android/settings/lockscreen/ContactInformation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation$1;-><init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 122
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->hideSoftInput()V

    .line 355
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 236
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v2, "getCurrentLockScreenString"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 243
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfo:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ContactsInformation"

    const-string v2, "onResume() : ContactInformation has updated by MDM admin."

    .line 245
    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->showInputMethod()V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/ContactInformation$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation$3;-><init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v0, 0x1130

    .line 277
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    .line 278
    invoke-static {v0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;

    const/16 v4, 0x41

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;-><init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method saveChanges()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/ContactInformation;->MY_USER_ID:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    return-void
.end method
