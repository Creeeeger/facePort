.class public Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DEBUG:Z

.field private static final MAX_CODE_LENGTH:I = 0x10

.field private static final MAX_NAME_LENGTH:I = 0x20

.field private static final MIN_NAME_CODE_LENGTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SecBluetoothLeBroadcastSourceInfoController"

.field private static mEncryptedBroadcast:I


# instance fields
.field private final ENCRYPTED_BROADCAST:I

.field private final KEY_PREF_BR_CODE:Ljava/lang/String;

.field private final KEY_PREF_BR_NAME:Ljava/lang/String;

.field private final UNENCRYPTED_BROADCAST:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBroadcastCode:Ljava/lang/String;

.field private mBroadcastCodeButton:Landroid/widget/Button;

.field private mBroadcastCodeEditText:Landroid/widget/EditText;

.field private mBroadcastCodeErrorTextView:Landroid/widget/TextView;

.field private mBroadcastCodeWatcher:Landroid/text/TextWatcher;

.field private mBroadcastName:Ljava/lang/String;

.field private mBroadcastNameButton:Landroid/widget/Button;

.field private mBroadcastNameEditText:Landroid/widget/EditText;

.field private mBroadcastNameErrorTextView:Landroid/widget/TextView;

.field private mBroadcastNameWatcher:Landroid/text/TextWatcher;

.field private final mContext:Landroid/content/Context;

.field private mDialogLabelTextView:Landroid/widget/TextView;

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mPrefKey:Ljava/lang/String;

.field private mScreenId:Ljava/lang/String;

.field private mSubTextView:Landroid/widget/TextView;

.field private mTempBroadcastCode:Ljava/lang/String;

.field private mTempBroadcastName:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$07bp0ASKhXsHCSM-Jdtd2GAkPSM(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->lambda$launchBroadcastCodeDialog$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5esTvRXZt7sEw4WjBKihBoFROjA(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->lambda$launchBroadcastCodeDialog$2(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MM70t10FNUKb9JLeRwNcYhAqDRk(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->lambda$launchBroadcastNameDialog$3(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$f1JlXKtspQNjix8aB_ZE5Lel0Rw(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->lambda$launchBroadcastNameDialog$4(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mtskAxkbVDpTW_SVf4K_GMxOMfg(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->lambda$launchBroadcastCodeDialog$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastCodeButton(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastCodeEditText(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastNameButton(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastNameEditText(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrefKey(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mPrefKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mScreenId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempBroadcastCode(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mTempBroadcastCode:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempBroadcastName(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mTempBroadcastName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBroadcastCode(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCode:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBroadcastName(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTempBroadcastCode(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mTempBroadcastCode:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTempBroadcastName(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mTempBroadcastName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlaunchBroadcastCodeDialog(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->launchBroadcastCodeDialog()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlaunchBroadcastNameDialog(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->launchBroadcastNameDialog()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveInputText(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->saveInputText(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEncryptedBroadcast(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setEncryptedBroadcast(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetErrorText(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setErrorText(Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "key_broadcast_name"

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->KEY_PREF_BR_NAME:Ljava/lang/String;

    const-string v0, "key_broadcast_code"

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->KEY_PREF_BR_CODE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mTempBroadcastName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mTempBroadcastCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->UNENCRYPTED_BROADCAST:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->ENCRYPTED_BROADCAST:I

    new-instance v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$6;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$6;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f141fc0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mScreenId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->getEncryptedBroadcast()V

    return-void
.end method

.method private getEncryptedBroadcast()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bluetooth_le_encrypted_broadcast"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mEncryptedBroadcast:I

    return-void
.end method

.method private lambda$launchBroadcastCodeDialog$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mScreenId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f140c57

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SecBluetoothLeBroadcastSourceInfoController"

    const-string p1, "cancel button: clicked"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private lambda$launchBroadcastCodeDialog$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mScreenId:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f140c52

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1420ed

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setSubText(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setEncryptedBroadcast(Z)V

    const-string p0, "SecBluetoothLeBroadcastSourceInfoController"

    const-string p1, "Don\'t use password"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private lambda$launchBroadcastCodeDialog$2(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mScreenId:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f140c53

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->saveInputText(Z)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setEncryptedBroadcast(Z)V

    return-void
.end method

.method private lambda$launchBroadcastNameDialog$3(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mScreenId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f140c57

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SecBluetoothLeBroadcastSourceInfoController"

    const-string p1, "cancel button: clicked"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private lambda$launchBroadcastNameDialog$4(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mScreenId:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f140c55

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->saveInputText(Z)V

    return-void
.end method

.method private launchBroadcastCodeDialog()V
    .locals 8

    const-string v0, "SecBluetoothLeBroadcastSourceInfoController"

    const-string v1, "launchBroadcastCodeDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0830

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0b2c

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mDialogLabelTextView:Landroid/widget/TextView;

    const v1, 0x7f0a051f

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0a0260

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140ec3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mDialogLabelTextView:Landroid/widget/TextView;

    const v4, 0x7f142233

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/settings/Utils$EmojiInputFilter;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v2

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->isEncryptedBroadcast()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mSubTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f14222f

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v1, v5}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;I)V

    const v5, 0x7f14222d

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v1, v5}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;I)V

    const v5, 0x7f1420df

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v1, v5}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;I)V

    const v1, 0x7f142230

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->isEncryptedBroadcast()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_3
    return-void
.end method

.method private launchBroadcastNameDialog()V
    .locals 6

    const-string v0, "SecBluetoothLeBroadcastSourceInfoController"

    const-string v1, "launchBroadcastNameDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0830

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0b2c

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mDialogLabelTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0260

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140ec4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mDialogLabelTextView:Landroid/widget/TextView;

    const v3, 0x7f14222a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mSubTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\u200E"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f14222e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;I)V

    const v3, 0x7f14222d

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v1, v3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;Ljava/lang/String;I)V

    const v1, 0x7f142230

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$3;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method private saveInputText(Z)V
    .locals 3

    const-string/jumbo v0, "save input text: "

    const-string v1, "SecBluetoothLeBroadcastSourceInfoController"

    const/4 v2, 0x4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_le_broadcast_name"

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setSubText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    if-ge p1, v2, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCode:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_le_broadcast_code"

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCode:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setSubText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setEncryptedBroadcast(Z)V
    .locals 1

    sput p1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mEncryptedBroadcast:I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "bluetooth_le_encrypted_broadcast"

    sget v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mEncryptedBroadcast:I

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setErrorText(Ljava/lang/String;Z)V
    .locals 5

    const v0, 0x7f060572

    const v1, 0x7f06074e

    const/16 v2, 0x8

    const/4 v3, 0x0

    const v4, 0x7f060753

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-static {p2, v4, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/EditText;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mDialogLabelTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastNameEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-static {p2, v1, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/EditText;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mDialogLabelTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-static {p2, v4, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/EditText;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mDialogLabelTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mBroadcastCodeEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-static {p2, v1, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/EditText;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mDialogLabelTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public disableEditImageButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a05c5

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method public dismissAlertDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " dismiss dialog "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothLeBroadcastSourceInfoController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a091e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "key_broadcast_code"

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f060559

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->enableEditImageButton()V

    goto :goto_0

    :cond_0
    const-string v0, "key_broadcast_name"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableEditImageButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a05c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$1;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mTitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mSubTextView:Landroid/widget/TextView;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEncryptedBroadcast()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->getEncryptedBroadcast()V

    sget p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mEncryptedBroadcast:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onPreferenceClick :: key = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecBluetoothLeBroadcastSourceInfoController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setSubText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mSubTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
