.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PreferredActivityBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PreferredActivityBackupHelper$Key;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist KEYS:[Ljava/lang/String;

.field private static final blacklist KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final blacklist KEY_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final blacklist KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final blacklist STATE_VERSION:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "PreferredBackup"


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const-string/jumbo v0, "intent-verification"

    const-string v1, "domain-verification"

    const-string/jumbo v2, "preferred-activity"

    const-string v3, "default-apps"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    const/4 v0, 0x4

    sget-object v1, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 5

    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "preferred-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "intent-verification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "domain-verification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "default-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDomainVerification([BI)V

    goto :goto_3

    :pswitch_1
    goto :goto_3

    :pswitch_2
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    goto :goto_3

    :pswitch_3
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V

    goto :goto_3

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected restore key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x298b2982 -> :sswitch_3
        -0x20befb7c -> :sswitch_2
        -0x19949e54 -> :sswitch_1
        0x4fa3eadb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .locals 6

    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "preferred-activity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "intent-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "domain-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "default-apps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v3, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->getDomainVerificationBackup(I)[B

    move-result-object v0

    return-object v0

    :pswitch_1
    return-object v2

    :pswitch_2
    iget v3, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    move-result-object v0

    return-object v0

    :pswitch_3
    iget v3, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    move-result-object v0

    return-object v0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected backup key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to store payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x298b2982 -> :sswitch_3
        -0x20befb7c -> :sswitch_2
        -0x19949e54 -> :sswitch_1
        0x4fa3eadb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
