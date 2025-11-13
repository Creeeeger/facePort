.class public final Lcom/android/systemui/controls/controller/UserStructure;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final auxiliaryFile:Ljava/io/File;

.field public final file:Ljava/io/File;

.field public final userContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/systemui/settings/UserFileManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/UserStructure;->userContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    check-cast p3, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v0, "controls_favorites.xml"

    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/UserStructure;->file:Ljava/io/File;

    const-string p1, "aux_controls_favorites.xml"

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/settings/UserFileManagerImpl;->getFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/UserStructure;->auxiliaryFile:Ljava/io/File;

    return-void
.end method
