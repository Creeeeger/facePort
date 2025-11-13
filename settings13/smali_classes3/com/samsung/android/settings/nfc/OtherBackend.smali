.class Lcom/samsung/android/settings/nfc/OtherBackend;
.super Ljava/lang/Object;
.source "OtherBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static final isY2olympicEdition:Z


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/nfc/OtherBackend;->DBG:Z

    const-string v0, "ro.product.vendor.name"

    .line 27
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "y2qdcmwoly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/OtherBackend;->isY2olympicEdition:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 51
    invoke-static {p1}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    return-void
.end method

.method private getUserName(Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/UserManager;

    .line 176
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_1

    return-object v0

    .line 180
    :cond_1
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkDefaultOtherApp(Landroid/content/ComponentName;I)Z
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v0, "other"

    invoke-virtual {p0, p1, v0, p2}, Landroid/nfc/cardemulation/CardEmulation;->isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method disableDefaultOtherApp(Landroid/content/ComponentName;I)V
    .locals 2

    .line 161
    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherBackend;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsetOtherService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OtherBackend"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->unsetOtherService(Landroid/content/ComponentName;I)Z

    return-void
.end method

.method enableDefaultOtherApp(Landroid/content/ComponentName;I)V
    .locals 2

    .line 152
    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherBackend;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOtherService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OtherBackend"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->setOtherService(Landroid/content/ComponentName;I)Z

    return-void
.end method

.method getOtherAppInfos()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 59
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/os/UserManager;

    .line 61
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 62
    invoke-virtual {v3}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v4

    .line 64
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 66
    invoke-virtual {v3, v6}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v7

    const-string v8, "OtherBackend"

    if-eqz v7, :cond_0

    const-string v6, "Skipping work profile apps"

    .line 67
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 72
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    const-string v10, "other"

    invoke-virtual {v7, v10, v9}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 79
    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    .line 83
    new-instance v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-direct {v11}, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;-><init>()V

    .line 84
    iput-object v6, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    .line 85
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v12

    iput-boolean v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isManagedProfile:Z

    .line 87
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    const/4 v13, 0x1

    if-ne v2, v12, :cond_2

    move v12, v13

    goto :goto_2

    :cond_2
    move v12, v5

    :goto_2
    iput-boolean v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isCurrentUser:Z

    .line 88
    iget-object v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/samsung/android/settings/nfc/OtherBackend;->getUserName(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userName:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {v10, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 94
    invoke-virtual {v10, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_3

    :cond_3
    const-string v12, "Icon is null"

    .line 96
    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v10, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 102
    :goto_3
    invoke-virtual {v10, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 103
    invoke-virtual {v10, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto :goto_4

    :cond_4
    const-string v14, "Banner is null"

    .line 105
    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v10, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 109
    :goto_4
    iput-object v14, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    .line 111
    iget-object v14, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v12, v14}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    .line 122
    invoke-virtual {v10, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    .line 124
    iget-object v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    if-nez v12, :cond_5

    .line 125
    invoke-virtual {v10, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    .line 132
    :cond_5
    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->isSelectedOtherService()Z

    move-result v12

    iput-boolean v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    .line 135
    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    iput-object v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    .line 136
    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->isAidBased()Z

    move-result v12

    xor-int/2addr v12, v13

    iput-boolean v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isNonAidService:Z

    .line 137
    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v12

    if-nez v12, :cond_6

    .line 138
    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->seName:Ljava/lang/String;

    .line 140
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appInfo componentName, userId : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 143
    :cond_7
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_8
    return-object v1
.end method
