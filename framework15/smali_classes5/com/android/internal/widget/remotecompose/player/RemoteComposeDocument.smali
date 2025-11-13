.class public Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
.super Ljava/lang/Object;
.source "RemoteComposeDocument.java"


# instance fields
.field blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->fromInputStream(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->initFromBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    return-void
.end method


# virtual methods
.method public blacklist canBeDisplayed(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->canBeDisplayed(IIJ)Z

    move-result v0

    return v0
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-object v0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getWidth()I

    move-result v0

    return v0
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    return-void
.end method

.method public blacklist needsRepaint()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    move-result v0

    return v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Document{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
