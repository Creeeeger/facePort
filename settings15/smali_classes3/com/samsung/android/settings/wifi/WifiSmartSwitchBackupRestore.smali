.class public Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final actionStrings:[Ljava/lang/String;

.field public static mIsCanceled:Z

.field public static final mPermissions:[Ljava/lang/String;


# instance fields
.field public cipher:Ljavax/crypto/Cipher;

.field public mExportSessionTime:Ljava/lang/String;

.field public mFastTrack:Z

.field public mSecurityLevel:I

.field public mSessionKey:Ljava/lang/String;

.field public mSource:Ljava/lang/String;

.field public salt:[B

.field public secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field public xmlConf:Ljava/lang/String;

.field public xmlModel:Ljava/lang/String;

.field public xmlNewConf:Ljava/lang/String;

.field public xmlOldConf:Ljava/lang/String;

.field public xmlSemConfJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mPermissions:[Ljava/lang/String;

    const-string v0, "FINISH"

    const-string v1, "CANCEL"

    const-string v2, "START"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    return-void

    :cond_0
    sput-boolean v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method
