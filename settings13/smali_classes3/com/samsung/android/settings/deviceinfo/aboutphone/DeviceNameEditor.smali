.class public Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;
.super Landroidx/fragment/app/DialogFragment;
.source "DeviceNameEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;,
        Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;
    }
.end annotation


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;


# instance fields
.field private listener:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnchorView:Landroid/view/View;

.field private mDeviceNameScrollView:Landroid/widget/ScrollView;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnchorView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceNameScrollView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mDeviceNameScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEditText(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorTextView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mErrorTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 327
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$8;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$8;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_name"

    .line 135
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->device_name_scrollview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mDeviceNameScrollView:Landroid/widget/ScrollView;

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->error_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mErrorTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->device_name_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    .line 141
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;

    const/16 v3, 0x20

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;I)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "DeviceInfoHeaderDeviceName"

    const-string v0, "Caught Exception setSelection"

    .line 149
    invoke-static {p1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 154
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$3;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$4;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 184
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    const-string v0, "disableAutoReplacement=true"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    const-string v0, "disableEmoticonInput=true;disableImage=true"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "maxLength"

    .line 188
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->showInputMethod()V

    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;
    .locals 3

    .line 63
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 65
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showInputMethod()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$5;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$6;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const/16 v0, 0x1fab

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 202
    invoke-static {v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->saveDeviceName()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 206
    invoke-static {v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->listener:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;

    if-eqz p0, :cond_2

    .line 208
    invoke-interface {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;->onNegativeClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/16 p1, 0x28

    const/16 v0, 0x1fab

    .line 76
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$style;->Theme_Settings:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->sec_device_name_popup:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mView:Landroid/view/View;

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->initView(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$1;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 92
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mView:Landroid/view/View;

    .line 93
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->common_done:I

    .line 95
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    .line 96
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$2;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 3

    const-string v0, "DeviceInfoHeaderDeviceName"

    const-string v1, "onDestroyView"

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 266
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->listener:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;->onDismiss()V

    .line 271
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 247
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->showInputMethod()V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$7;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method saveDeviceName()V
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->saveToDb()V

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->listener:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;

    if-eqz p0, :cond_0

    .line 288
    invoke-interface {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;->onPositiveClick()V

    :cond_0
    return-void
.end method

.method saveToDb()V
    .locals 2

    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "device_name"

    .line 279
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setConfirmationDialogFragmentListener(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->listener:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;

    return-void
.end method
