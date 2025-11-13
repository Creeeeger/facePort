.class Lcom/samsung/android/settings/nfc/PaymentBackend;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;,
        Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private mAppName:Landroid/content/ComponentName;

.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/PaymentBackend;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 80
    invoke-static {p1}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    return-void
.end method

.method private getUserName(Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/UserManager;

    .line 281
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_1

    return-object v0

    .line 285
    :cond_1
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showErrorDialog(IZ)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 340
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentBackend$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend$1;-><init>(Lcom/samsung/android/settings/nfc/PaymentBackend;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 352
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 353
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    .line 354
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 355
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 356
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    xor-int/lit8 p0, p2, 0x1

    return p0
.end method


# virtual methods
.method public ActionRetry()V
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    const-string v2, "payment"

    invoke-virtual {v0, v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->registerService(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    .line 319
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    const-string v2, "PaymentBackend"

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    retval : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v3, 0x3e8

    if-gt v3, v0, :cond_4

    const/16 v3, 0x1fa5

    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_5

    const-string p0, "pin verification is needed"

    .line 322
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/16 v1, 0x23c1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x244b

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 327
    :cond_2
    sget v0, Lcom/android/settings/R$string;->nfc_payment_settings_default_failed:I

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z

    goto :goto_1

    .line 325
    :cond_3
    :goto_0
    sget v0, Lcom/android/settings/R$string;->nfc_payment_settings_nfc_locked:I

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    :cond_5
    :goto_1
    return-void
.end method

.method getDefaultAppInfo()Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    return-object p0
.end method

.method getDefaultPaymentApp(I)Landroid/content/ComponentName;
    .locals 1

    .line 222
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "nfc_payment_default_component"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 225
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getDefaultPaymentApp()Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 208
    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 210
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp(I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 212
    new-instance p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;-><init>()V

    .line 213
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;->userId:I

    .line 214
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;->componentName:Landroid/content/ComponentName;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getPaymentAppInfos()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 84
    iget-object v1, v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 88
    iget-object v4, v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v6, 0x0

    .line 88
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/os/UserManager;

    .line 90
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 91
    invoke-virtual {v4}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v5

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;

    move-result-object v7

    .line 95
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    .line 97
    invoke-virtual {v4, v10}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v11

    const-string v12, "PaymentBackend"

    if-eqz v11, :cond_0

    const-string v10, "Skipping work profile apps"

    .line 98
    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_0
    iget-object v11, v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 103
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    const-string v14, "payment"

    invoke-virtual {v11, v14, v13}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 109
    new-instance v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {v8}, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;-><init>()V

    .line 110
    iput-object v10, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    .line 111
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v6

    iput-boolean v6, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isManagedProfile:Z

    .line 113
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const/16 v16, 0x1

    if-ne v3, v6, :cond_2

    move/from16 v6, v16

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isCurrentUser:Z

    .line 114
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getUserName(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userName:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v15, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    if-nez v6, :cond_3

    .line 118
    invoke-virtual {v15, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 121
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 122
    iget-object v6, v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    move/from16 v17, v3

    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v18, v4

    iget-object v4, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    .line 123
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 122
    invoke-virtual {v6, v3, v14, v4}, Landroid/nfc/cardemulation/CardEmulation;->isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    move/from16 v17, v3

    move-object/from16 v18, v4

    if-nez v7, :cond_5

    const/4 v3, 0x0

    .line 125
    iput-boolean v3, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 127
    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v6, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;->userId:I

    .line 128
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne v4, v6, :cond_6

    move/from16 v4, v16

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    iput-boolean v4, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    .line 130
    :goto_4
    iget-boolean v4, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v4, :cond_7

    move-object v9, v8

    .line 134
    :cond_7
    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 135
    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 137
    new-instance v6, Landroid/content/ComponentName;

    iget-object v3, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 138
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    .line 141
    iput-object v3, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    .line 143
    :goto_5
    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    .line 147
    invoke-virtual {v15, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 148
    invoke-virtual {v15, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_6

    :cond_9
    const-string v4, "Icon is null"

    .line 150
    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v15, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 156
    :goto_6
    invoke-virtual {v15, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 157
    invoke-virtual {v15, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_7

    :cond_a
    const-string v6, "Banner is null"

    .line 159
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v15, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 163
    :goto_7
    iput-object v6, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    .line 165
    iget-object v6, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 167
    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->isAidBased()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isNonAidService:Z

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appInfo componentName, userId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v3, v17

    move-object/from16 v4, v18

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    move/from16 v17, v3

    move-object/from16 v18, v4

    const/4 v3, 0x0

    .line 171
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move/from16 v3, v17

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 173
    :cond_c
    iput-object v9, v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    return-object v2
.end method

.method isForegroundMode()Z
    .locals 3

    const/4 v0, 0x0

    .line 186
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "nfc_payment_foreground"

    .line 187
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 186
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method setDefaultAppInfo(Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    return-void
.end method

.method public setDefaultPaymentApp(Landroid/content/ComponentName;I)V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    .line 258
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 260
    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 263
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "nfc_payment_default_component"

    if-ne v2, p2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 264
    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 270
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 268
    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method setForegroundMode(Z)V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    .line 195
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 197
    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 199
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 200
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v3, "nfc_payment_foreground"

    .line 199
    invoke-static {v2, v3, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    return-void
.end method
