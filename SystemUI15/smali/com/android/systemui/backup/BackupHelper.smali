.class public Lcom/android/systemui/backup/BackupHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/backup/BackupHelper$Companion;

.field public static final controlsDataLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/backup/BackupHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/backup/BackupHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/backup/BackupHelper;->Companion:Lcom/android/systemui/backup/BackupHelper$Companion;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/backup/BackupHelper;->controlsDataLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/UserHandle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/backup/BackupAgentHelper;->onCreate(Landroid/os/UserHandle;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    sget-object v1, Lcom/android/systemui/settings/UserFileManagerImpl;->Companion:Lcom/android/systemui/settings/UserFileManagerImpl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "controls_favorites.xml"

    invoke-static {v0, v1}, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;->createFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/backup/BackupHelperKt$getPPControlsFile$1;-><init>(ILandroid/content/Context;)V

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;

    sget-object v2, Lcom/android/systemui/backup/BackupHelper;->controlsDataLock:Ljava/lang/Object;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;-><init>(Ljava/lang/Object;Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo v0, "systemui.files_no_overwrite"

    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    sget v0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->$r8$clinit:I

    const-string v0, "shared_backup"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/people/widget/PeopleBackupHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/people/widget/PeopleBackupHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;[Ljava/lang/String;)V

    const-string/jumbo v0, "systemui.people.shared_preferences"

    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    new-instance v0, Lcom/android/systemui/keyguard/domain/backup/KeyguardQuickAffordanceBackupHelper;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/backup/KeyguardQuickAffordanceBackupHelper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "systemui.keyguard.quickaffordance.shared_preferences"

    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/communal/domain/backup/CommunalPrefsBackupHelper;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/communal/domain/backup/CommunalPrefsBackupHelper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "systemui.communal.shared_preferences"

    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    new-instance v0, Lcom/android/systemui/communal/data/backup/CommunalBackupHelper;

    new-instance v1, Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;

    invoke-direct {v1, p0}, Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/communal/data/backup/CommunalBackupHelper;-><init>(Landroid/os/UserHandle;Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;)V

    const-string/jumbo p1, "systemui.communal_state"

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    :cond_0
    return-void
.end method

.method public final onRestoreFinished()V
    .locals 3

    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onRestoreFinished()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.backup.RESTORE_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v2, "com.android.systemui.permission.SELF"

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/backup/BackupAgentHelper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
