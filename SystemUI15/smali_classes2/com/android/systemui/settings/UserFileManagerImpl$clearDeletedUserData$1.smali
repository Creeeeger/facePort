.class public final Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/UserFileManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserFileManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;->this$0:Lcom/android/systemui/settings/UserFileManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;->this$0:Lcom/android/systemui/settings/UserFileManagerImpl;

    iget-object v1, v0, Lcom/android/systemui/settings/UserFileManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/UserFileManagerImpl;->access$deleteFiles(Lcom/android/systemui/settings/UserFileManagerImpl;Ljava/io/File;)V

    iget-object v0, p0, Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;->this$0:Lcom/android/systemui/settings/UserFileManagerImpl;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;->this$0:Lcom/android/systemui/settings/UserFileManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v2, "shared_prefs"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/systemui/settings/UserFileManagerImpl;->access$deleteFiles(Lcom/android/systemui/settings/UserFileManagerImpl;Ljava/io/File;)V

    return-void
.end method
