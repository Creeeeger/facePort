.class Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;
.super Landroid/database/MatrixCursor;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/FileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectoryCursor"
.end annotation


# instance fields
.field private final blacklist mFile:Ljava/io/File;

.field final synthetic blacklist this$0:Lcom/android/internal/content/FileSystemProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/content/FileSystemProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->this$0:Lcom/android/internal/content/FileSystemProvider;

    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/android/internal/content/FileSystemProvider;->buildNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentResolver;->getUserId()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;IZ)V

    iput-object p4, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->mFile:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->mFile:Ljava/io/File;

    invoke-static {p1, v2, v0, p0}, Lcom/android/internal/content/FileSystemProvider;->-$$Nest$mstartObserving(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    invoke-super {p0}, Landroid/database/MatrixCursor;->close()V

    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->this$0:Lcom/android/internal/content/FileSystemProvider;

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->mFile:Ljava/io/File;

    invoke-static {v0, v1, p0}, Lcom/android/internal/content/FileSystemProvider;->-$$Nest$mstopObserving(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V

    return-void
.end method

.method public blacklist notifyChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->onChange(Z)V

    return-void
.end method
