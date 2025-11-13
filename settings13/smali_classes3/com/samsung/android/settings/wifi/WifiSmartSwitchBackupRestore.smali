.class public Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiSmartSwitchBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;
    }
.end annotation


# static fields
.field static final actionStrings:[Ljava/lang/String;

.field static mIsCanceled:Z

.field private static final mPermissions:[Ljava/lang/String;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field isIgnoreSupportFeature:Z

.field mExportSessionTime:Ljava/lang/String;

.field mFastTrack:Z

.field mSecurityLevel:I

.field mSessionKey:Ljava/lang/String;

.field mSource:Ljava/lang/String;

.field private salt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;

.field xmlNewConf:Ljava/lang/String;

.field xmlOldConf:Ljava/lang/String;

.field xmlQtableJson:Ljava/lang/String;

.field xmlSemConfJson:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcipher(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsalt(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->salt:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsecretKey(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcipher(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/Cipher;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsalt(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->salt:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsecretKey(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmPermissions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 112
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mPermissions:[Ljava/lang/String;

    const-string v0, "START"

    const-string v1, "FINISH"

    const-string v2, "CANCEL"

    .line 137
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION"

    const/4 v2, 0x0

    .line 173
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 p0, 0x1

    .line 176
    sput-boolean p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    return-void

    .line 179
    :cond_0
    sput-boolean v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method
