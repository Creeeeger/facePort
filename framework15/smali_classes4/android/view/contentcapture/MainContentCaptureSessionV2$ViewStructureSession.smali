.class final Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;
.super Ljava/lang/Object;
.source "MainContentCaptureSessionV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/MainContentCaptureSessionV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewStructureSession"
.end annotation


# instance fields
.field private blacklist mSession:Landroid/view/contentcapture/ContentCaptureSession;

.field private blacklist mStructure:Landroid/view/ViewStructure;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist notifyViewAppeared()V
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;->mSession:Landroid/view/contentcapture/ContentCaptureSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;->mStructure:Landroid/view/ViewStructure;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;->mSession:Landroid/view/contentcapture/ContentCaptureSession;

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;->mStructure:Landroid/view/ViewStructure;

    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewAppeared(Landroid/view/ViewStructure;)V

    :cond_0
    return-void
.end method

.method blacklist setSession(Landroid/view/contentcapture/ContentCaptureSession;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;->mSession:Landroid/view/contentcapture/ContentCaptureSession;

    return-void
.end method

.method blacklist setStructure(Landroid/view/ViewStructure;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;->mStructure:Landroid/view/ViewStructure;

    return-void
.end method
