.class public Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;
.super Ljava/lang/Object;
.source "OverlayManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/OverlayManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayStateChangeRequest"
.end annotation


# instance fields
.field public blacklist callback:Landroid/content/om/ISamsungOverlayCallback;

.field public blacklist category:I

.field public blacklist opsFlags:I

.field public blacklist paths:[Ljava/lang/String;

.field public blacklist pathsToRemove:[Ljava/lang/String;

.field public blacklist userId:I


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;-><init>([Ljava/lang/String;IIILandroid/content/om/ISamsungOverlayCallback;)V

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;II)V
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;-><init>([Ljava/lang/String;IIILandroid/content/om/ISamsungOverlayCallback;)V

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;IIILandroid/content/om/ISamsungOverlayCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->pathsToRemove:[Ljava/lang/String;

    iput-object p1, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->paths:[Ljava/lang/String;

    iput p2, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->category:I

    iput p3, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->opsFlags:I

    iput p4, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->userId:I

    iput-object p5, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->callback:Landroid/content/om/ISamsungOverlayCallback;

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;IILandroid/content/om/ISamsungOverlayCallback;)V
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;-><init>([Ljava/lang/String;IIILandroid/content/om/ISamsungOverlayCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist addFlag(I)Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;
    .locals 1

    iget v0, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->opsFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->opsFlags:I

    return-object p0
.end method

.method public blacklist addPathsToRemove([Ljava/lang/String;)Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;
    .locals 0

    iput-object p1, p0, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->pathsToRemove:[Ljava/lang/String;

    return-object p0
.end method
