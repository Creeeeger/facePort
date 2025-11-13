.class public final Lcom/android/systemui/communal/domain/backup/CommunalPrefsBackupHelper;
.super Landroid/app/backup/SharedPreferencesBackupHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    sget-object v0, Lcom/android/systemui/settings/UserFileManagerImpl;->Companion:Lcom/android/systemui/settings/UserFileManagerImpl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "communal_hub_prefs"

    invoke-static {p2, v0}, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;->createFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method
