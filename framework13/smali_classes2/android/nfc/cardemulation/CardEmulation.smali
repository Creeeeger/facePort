.class public final Landroid/nfc/cardemulation/CardEmulation;
.super Ljava/lang/Object;
.source "CardEmulation.java"


# static fields
.field public static final whitelist ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT"

.field private static final blacklist AID_PATTERN:Ljava/util/regex/Pattern;

.field public static final whitelist CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist CATEGORY_PAYMENT:Ljava/lang/String; = "payment"

.field public static final whitelist EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final whitelist EXTRA_SERVICE_COMPONENT:Ljava/lang/String; = "component"

.field public static final whitelist SELECTION_MODE_ALWAYS_ASK:I = 0x1

.field public static final whitelist SELECTION_MODE_ASK_IF_CONFLICT:I = 0x2

.field public static final whitelist SELECTION_MODE_PREFER_DEFAULT:I = 0x0

.field public static final whitelist SEM_ACTION_FOREGROUND:Ljava/lang/String; = "com.samsung.android.nfc.cardemulation.action.SEM_ACTION_FOREGROUND"

.field static final greylist-max-o TAG:Ljava/lang/String; = "CardEmulation"

.field static greylist-max-o sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/CardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sIsInitialized:Z

.field static greylist-max-o sService:Landroid/nfc/INfcCardEmulation;


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    const-string v0, "[0-9A-Fa-f]{10,32}\\*?\\#?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->AID_PATTERN:Ljava/util/regex/Pattern;

    .line 147
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcCardEmulation;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 155
    sput-object p2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 156
    return-void
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;
    .locals 6
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    const-class v0, Landroid/nfc/cardemulation/CardEmulation;

    monitor-enter v0

    .line 165
    if-eqz p0, :cond_6

    .line 166
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 167
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_5

    .line 171
    sget-boolean v2, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    if-nez v2, :cond_2

    .line 172
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_1

    .line 178
    :try_start_1
    const-string v3, "android.hardware.nfc.hce"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 185
    nop

    .line 186
    const/4 v3, 0x1

    :try_start_2
    sput-boolean v3, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 179
    :cond_0
    :try_start_3
    const-string v3, "CardEmulation"

    const-string v4, "This device does not support card emulation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "CardEmulation"

    const-string v5, "PackageManager query failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 174
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "CardEmulation"

    const-string v4, "Cannot get PackageManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 188
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_2
    :goto_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/CardEmulation;

    .line 189
    .local v2, "manager":Landroid/nfc/cardemulation/CardEmulation;
    if-nez v2, :cond_4

    .line 191
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v3

    .line 192
    .local v3, "service":Landroid/nfc/INfcCardEmulation;
    if-eqz v3, :cond_3

    .line 196
    new-instance v4, Landroid/nfc/cardemulation/CardEmulation;

    invoke-direct {v4, v1, v3}, Landroid/nfc/cardemulation/CardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V

    move-object v2, v4

    .line 197
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 193
    :cond_3
    const-string v4, "CardEmulation"

    const-string v5, "This device does not implement the INfcCardEmulation interface."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    .end local v3    # "service":Landroid/nfc/INfcCardEmulation;
    :cond_4
    :goto_1
    monitor-exit v0

    return-object v2

    .line 168
    .end local v2    # "manager":Landroid/nfc/cardemulation/CardEmulation;
    :cond_5
    :try_start_5
    const-string v2, "CardEmulation"

    const-string v3, "NfcAdapter context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 164
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 165
    .restart local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NfcAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static greylist-max-o isValidAid(Ljava/lang/String;)Z
    .locals 7
    .param p0, "aid"    # Ljava/lang/String;

    .line 931
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 932
    return v0

    .line 935
    :cond_0
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "#"

    const-string v4, " is not a valid AID."

    const-string v5, "AID "

    const-string v6, "CardEmulation"

    if-nez v2, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return v0

    .line 941
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return v0

    .line 947
    :cond_3
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->AID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_4

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return v0

    .line 952
    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist categoryAllowsForegroundPreference(Ljava/lang/String;)Z
    .locals 5
    .param p1, "category"    # Ljava/lang/String;

    .line 284
    const-string v0, "payment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "preferForeground":Z
    :try_start_0
    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_payment_foreground"

    .line 288
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 287
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 290
    goto :goto_1

    .line 289
    :catch_0
    move-exception v1

    .line 291
    :goto_1
    return v0

    .line 294
    .end local v0    # "preferForeground":Z
    :cond_1
    return v1
.end method

.method public blacklist disableAutoRouting()Z
    .locals 5

    .line 1003
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->disableAutoRouting()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1006
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 1007
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return v2

    .line 1011
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcCardEmulation;->disableAutoRouting()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 1012
    :catch_1
    move-exception v1

    .line 1013
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return v2
.end method

.method public blacklist enableAutoRouting()Z
    .locals 5

    .line 982
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->enableAutoRouting()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 985
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 986
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return v2

    .line 990
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcCardEmulation;->enableAutoRouting()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 991
    :catch_1
    move-exception v1

    .line 992
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return v2
.end method

.method public blacklist getAidSizeForServiceInPercent(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "app"    # Landroid/content/ComponentName;

    .line 1220
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->getAidSizeForServiceInPercent(ILandroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1222
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1225
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 1226
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return v2

    .line 1230
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcCardEmulation;->getAidSizeForServiceInPercent(ILandroid/content/ComponentName;)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 1231
    :catch_1
    move-exception v1

    .line 1232
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    return v2
.end method

.method public whitelist getAidsForPreferredPaymentService()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 698
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 699
    .local v1, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 700
    .end local v1    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 702
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v3, "Failed to recover CardEmulationService."

    const-string v4, "CardEmulation"

    if-eqz v2, :cond_2

    .line 707
    :try_start_1
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 708
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v2

    .line 709
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-object v0

    .line 710
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_1
    move-exception v0

    .line 711
    .local v0, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 703
    .end local v0    # "ee":Landroid/os/RemoteException;
    :cond_2
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 517
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v1

    .line 519
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 520
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 522
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v3, "Failed to recover CardEmulationService."

    const-string v4, "CardEmulation"

    if-nez v2, :cond_1

    .line 523
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-object v0

    .line 527
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v2

    .line 529
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    return-object v0

    .line 530
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :catch_1
    move-exception v2

    .line 531
    .local v2, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-object v0
.end method

.method public whitelist getDescriptionForPreferredPaymentService()Ljava/lang/CharSequence;
    .locals 6

    .line 780
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 781
    .local v1, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 782
    .end local v1    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_0
    move-exception v1

    .line 783
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 784
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v3, "Failed to recover CardEmulationService."

    const-string v4, "CardEmulation"

    if-eqz v2, :cond_2

    .line 789
    :try_start_1
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 790
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v2

    .line 791
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-object v0

    .line 792
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_1
    move-exception v0

    .line 793
    .local v0, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 785
    .end local v0    # "ee":Landroid/os/RemoteException;
    :cond_2
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getPaymentDefaultServiceInfo()Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 5

    .line 1294
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcCardEmulation;->getPaymentDefaultServiceInfo(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1296
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1299
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 1300
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-object v2

    .line 1304
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/nfc/INfcCardEmulation;->getPaymentDefaultServiceInfo(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 1305
    :catch_1
    move-exception v1

    .line 1306
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    return-object v2
.end method

.method public blacklist getPaymentPriority()Landroid/content/ComponentName;
    .locals 5

    .line 1270
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcCardEmulation;->getPaymentPriority(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1272
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1275
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 1276
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    return-object v2

    .line 1280
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/nfc/INfcCardEmulation;->getPaymentPriority(I)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 1281
    :catch_1
    move-exception v1

    .line 1282
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-object v2
.end method

.method public whitelist getRouteDestinationForPreferredPaymentService()Ljava/lang/String;
    .locals 7

    .line 737
    const-string v0, "Host"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v3, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v2

    .line 738
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v2, :cond_2

    .line 739
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v3

    if-nez v3, :cond_1

    .line 740
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 741
    const-string v0, "OffHost"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_0
    return-object v0

    .line 743
    :cond_1
    return-object v0

    .line 745
    :cond_2
    return-object v1

    .line 746
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_0
    move-exception v2

    .line 747
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 748
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v4, "Failed to recover CardEmulationService."

    const-string v5, "CardEmulation"

    if-eqz v3, :cond_6

    .line 753
    :try_start_1
    iget-object v6, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 754
    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v3, v6}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 755
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v3, :cond_5

    .line 756
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v1

    if-nez v1, :cond_4

    .line 757
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 758
    const-string v0, "Offhost"

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 757
    :goto_1
    return-object v0

    .line 760
    :cond_4
    return-object v0

    .line 762
    :cond_5
    return-object v1

    .line 764
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_1
    move-exception v0

    .line 765
    .local v0, "ee":Landroid/os/RemoteException;
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 749
    .end local v0    # "ee":Landroid/os/RemoteException;
    :cond_6
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSelectionModeForCategory(Ljava/lang/String;)I
    .locals 6
    .param p1, "category"    # Ljava/lang/String;

    .line 311
    const-string v0, "payment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "paymentRegistered":Z
    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->isDefaultPaymentRegistered()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 327
    goto :goto_0

    .line 315
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 317
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v4, "CardEmulation"

    if-nez v3, :cond_0

    .line 318
    const-string v3, "Failed to recover CardEmulationService."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v1

    .line 322
    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->isDefaultPaymentRegistered()Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    .line 326
    nop

    .line 328
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v0, :cond_1

    .line 329
    const/4 v1, 0x0

    return v1

    .line 331
    :cond_1
    return v1

    .line 323
    .restart local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 324
    .local v3, "ee":Landroid/os/RemoteException;
    const-string v5, "Failed to reach CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v1

    .line 334
    .end local v0    # "paymentRegistered":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "ee":Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public greylist-max-o getServices(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 878
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 879
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 882
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 883
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-object v2

    .line 887
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 888
    :catch_1
    move-exception v1

    .line 889
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return-object v2
.end method

.method public blacklist getServices(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 900
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p2, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 901
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 904
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 905
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-object v2

    .line 909
    :cond_0
    :try_start_1
    invoke-interface {v1, p2, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 910
    :catch_1
    move-exception v1

    .line 911
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-object v2
.end method

.method public blacklist getUsedAidTableSizeInPercent(Ljava/lang/String;)I
    .locals 5
    .param p1, "category"    # Ljava/lang/String;

    .line 1195
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->getUsedAidTableSizeInPercent(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1197
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1200
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 1201
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return v2

    .line 1205
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcCardEmulation;->getUsedAidTableSizeInPercent(ILjava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 1206
    :catch_1
    move-exception v1

    .line 1207
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    return v2
.end method

.method public blacklist initializePaymentDefault(I)V
    .locals 4
    .param p1, "necessity"    # I

    .line 1245
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->initializePaymentDefault(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1250
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v2, "CardEmulation"

    if-nez v1, :cond_0

    .line 1251
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    return-void

    .line 1255
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v3, p1}, Landroid/nfc/INfcCardEmulation;->initializePaymentDefault(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1259
    nop

    .line 1261
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1256
    .restart local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1257
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-void
.end method

.method public whitelist isDefaultServiceForAid(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "aid"    # Ljava/lang/String;

    .line 254
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 258
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 259
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v2

    .line 263
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 264
    :catch_1
    move-exception v1

    .line 265
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v2
.end method

.method public whitelist isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 223
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 224
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 227
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "Failed to recover CardEmulationService."

    const-string v4, "CardEmulation"

    if-nez v1, :cond_0

    .line 228
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v2

    .line 232
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v1, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 234
    :catch_1
    move-exception v1

    .line 235
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v2
.end method

.method public blacklist isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 1145
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1147
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1150
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 1151
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return v2

    .line 1155
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 1156
    :catch_1
    move-exception v1

    .line 1157
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return v2
.end method

.method public blacklist isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1170
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1172
    :catch_0
    move-exception v0

    .line 1174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1175
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 1176
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    return v2

    .line 1180
    :cond_0
    :try_start_1
    invoke-interface {v1, p3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 1181
    :catch_1
    move-exception v1

    .line 1182
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    return v2
.end method

.method greylist-max-o recoverService()V
    .locals 2

    .line 1417
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1418
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 1419
    return-void
.end method

.method public whitelist registerAidsForService(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 360
    .local p3, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v0, p3, p2}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 362
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :try_start_0
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2, p1, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 363
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 366
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v3, 0x0

    const-string v4, "CardEmulation"

    if-nez v2, :cond_0

    .line 367
    const-string v2, "Failed to recover CardEmulationService."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return v3

    .line 371
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v5, p1, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    .line 373
    :catch_1
    move-exception v2

    .line 374
    .local v2, "ee":Landroid/os/RemoteException;
    const-string v5, "Failed to reach CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return v3
.end method

.method public blacklist registerService(Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 6
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 1025
    if-eqz p1, :cond_1

    .line 1032
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1034
    :catch_0
    move-exception v1

    .line 1036
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1037
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/16 v3, 0x2397

    const-string v4, "CardEmulation"

    if-nez v2, :cond_0

    .line 1038
    const-string v0, "Failed to recover CardEmulationService."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return v3

    .line 1044
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v5, p1, p2, v0}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 1046
    :catch_1
    move-exception v0

    .line 1047
    .local v0, "ee":Landroid/os/RemoteException;
    const-string v2, "Failed to reach CardEmulationService."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return v3

    .line 1026
    .end local v0    # "ee":Landroid/os/RemoteException;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service or category is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerService(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 4
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1060
    if-eqz p1, :cond_1

    .line 1065
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v1, p3, p1, p2, v0}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    goto :goto_0

    .line 1066
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1069
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v3, "CardEmulation"

    if-nez v2, :cond_0

    .line 1070
    const-string v0, "Failed to recover CardEmulationService."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void

    .line 1074
    :cond_0
    :try_start_1
    invoke-interface {v2, p3, p1, p2, v0}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1078
    nop

    .line 1080
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1075
    .restart local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1076
    .local v0, "ee":Landroid/os/RemoteException;
    const-string v2, "Failed to reach CardEmulationService."

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-void

    .line 1061
    .end local v0    # "ee":Landroid/os/RemoteException;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service or category is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 554
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 555
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 558
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 559
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return v2

    .line 563
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 564
    :catch_1
    move-exception v1

    .line 565
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return v2
.end method

.method public blacklist setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 849
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 850
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 853
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 854
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return v2

    .line 858
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 859
    :catch_1
    move-exception v1

    .line 860
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return v2
.end method

.method public greylist-max-o setDefaultForNextTap(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 827
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 828
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 831
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 832
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return v2

    .line 836
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 837
    :catch_1
    move-exception v1

    .line 838
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return v2
.end method

.method public greylist-max-o setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 804
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 805
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 808
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 809
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return v2

    .line 813
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 815
    :catch_1
    move-exception v1

    .line 816
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return v2
.end method

.method public blacklist setLockPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 1317
    if-eqz p1, :cond_1

    .line 1322
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p1}, Landroid/nfc/INfcCardEmulation;->setLockPassword(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1324
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1327
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 1328
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return v2

    .line 1332
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/nfc/INfcCardEmulation;->setLockPassword(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 1333
    :catch_1
    move-exception v1

    .line 1334
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    return v2

    .line 1318
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOffHostForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 8
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "offHostSecureElement"    # Ljava/lang/String;

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, "validSecureElement":Z
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 461
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v2, 0x0

    if-eqz v1, :cond_8

    if-nez p2, :cond_0

    goto :goto_1

    .line 465
    :cond_0
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getSupportedOffHostSecureElements()Ljava/util/List;

    move-result-object v3

    .line 466
    .local v3, "validSE":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "eSE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 467
    :cond_1
    const-string v5, "SIM"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 468
    :cond_2
    return v2

    .line 471
    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 472
    return v2

    .line 475
    :cond_4
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 476
    const-string p2, "eSE1"

    goto :goto_0

    .line 477
    :cond_5
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 478
    const-string p2, "SIM1"

    .line 482
    :cond_6
    :goto_0
    :try_start_0
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v4, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->setOffHostForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 484
    :catch_0
    move-exception v4

    .line 486
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 487
    sget-object v5, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v6, "CardEmulation"

    if-nez v5, :cond_7

    .line 488
    const-string v5, "Failed to recover CardEmulationService."

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return v2

    .line 492
    :cond_7
    :try_start_1
    iget-object v7, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-interface {v5, v7, p1, p2}, Landroid/nfc/INfcCardEmulation;->setOffHostForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    .line 494
    :catch_1
    move-exception v5

    .line 495
    .local v5, "ee":Landroid/os/RemoteException;
    const-string v7, "Failed to reach CardEmulationService."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v2

    .line 462
    .end local v3    # "validSE":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "ee":Landroid/os/RemoteException;
    :cond_8
    :goto_1
    return v2
.end method

.method public blacklist setOtherService(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 1346
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/cardemulation/CardEmulation;->setOtherService(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public blacklist setOtherService(Landroid/content/ComponentName;I)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1354
    if-eqz p1, :cond_1

    .line 1359
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p2, p1}, Landroid/nfc/INfcCardEmulation;->setOtherService(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1361
    :catch_0
    move-exception v0

    .line 1363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1364
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 1365
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return v2

    .line 1369
    :cond_0
    :try_start_1
    invoke-interface {v1, p2, p1}, Landroid/nfc/INfcCardEmulation;->setOtherService(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 1370
    :catch_1
    move-exception v1

    .line 1371
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return v2

    .line 1355
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity or service or category is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPreferredService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 602
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 605
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p2}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 610
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 613
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 614
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return v2

    .line 618
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 619
    :catch_1
    move-exception v1

    .line 620
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v2

    .line 606
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be resumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity or service or category is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist supportsAidPrefixRegistration()Z
    .locals 5

    .line 673
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 676
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 677
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return v2

    .line 681
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 682
    :catch_1
    move-exception v1

    .line 683
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return v2
.end method

.method public blacklist supportsAutoRouting()Z
    .locals 5

    .line 961
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->supportsAutoRouting()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 964
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 965
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return v2

    .line 969
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcCardEmulation;->supportsAutoRouting()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 970
    :catch_1
    move-exception v1

    .line 971
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return v2
.end method

.method public blacklist unregisterOtherService(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "app"    # Landroid/content/ComponentName;

    .line 1088
    if-eqz p1, :cond_1

    .line 1093
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->unregisterOtherService(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    return-void

    .line 1095
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1098
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v1, :cond_0

    .line 1099
    return-void

    .line 1102
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/nfc/INfcCardEmulation;->unregisterOtherService(ILandroid/content/ComponentName;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1103
    return-void

    .line 1104
    :catch_1
    move-exception v1

    .line 1105
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v2, "CardEmulation"

    const-string v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return-void

    .line 1089
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service or category is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterOtherService(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1116
    if-eqz p1, :cond_1

    .line 1121
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p2, p1}, Landroid/nfc/INfcCardEmulation;->unregisterOtherService(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    return-void

    .line 1123
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1126
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v1, :cond_0

    .line 1127
    return-void

    .line 1130
    :cond_0
    :try_start_1
    invoke-interface {v1, p2, p1}, Landroid/nfc/INfcCardEmulation;->unregisterOtherService(ILandroid/content/ComponentName;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1131
    return-void

    .line 1132
    :catch_1
    move-exception v1

    .line 1133
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v2, "CardEmulation"

    const-string v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void

    .line 1117
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service or category is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unsetOffHostForService(Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 399
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 400
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 401
    return v1

    .line 405
    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v3, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->unsetOffHostForService(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 406
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 409
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v4, "CardEmulation"

    if-nez v3, :cond_1

    .line 410
    const-string v3, "Failed to recover CardEmulationService."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v1

    .line 414
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v3, v5, p1}, Landroid/nfc/INfcCardEmulation;->unsetOffHostForService(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 415
    :catch_1
    move-exception v3

    .line 416
    .local v3, "ee":Landroid/os/RemoteException;
    const-string v5, "Failed to reach CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return v1
.end method

.method public blacklist unsetOtherService(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 1382
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/cardemulation/CardEmulation;->unsetOtherService(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public blacklist unsetOtherService(Landroid/content/ComponentName;I)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1390
    if-eqz p1, :cond_1

    .line 1395
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p2, p1}, Landroid/nfc/INfcCardEmulation;->unsetOtherService(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1397
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 1400
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 1401
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    return v2

    .line 1405
    :cond_0
    :try_start_1
    invoke-interface {v1, p2, p1}, Landroid/nfc/INfcCardEmulation;->unsetOtherService(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 1406
    :catch_1
    move-exception v1

    .line 1407
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    return v2

    .line 1391
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity or service or category is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unsetPreferredService(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 637
    if-eqz p1, :cond_2

    .line 640
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 645
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 648
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_0

    .line 649
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return v2

    .line 653
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 654
    :catch_1
    move-exception v1

    .line 655
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return v2

    .line 641
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be resumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
