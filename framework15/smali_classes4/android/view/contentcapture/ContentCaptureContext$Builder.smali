.class public final Landroid/view/contentcapture/ContentCaptureContext$Builder;
.super Ljava/lang/Object;
.source "ContentCaptureContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDestroyed:Z

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mId:Landroid/content/LocusId;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/content/LocusId;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext$Builder;->mId:Landroid/content/LocusId;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/LocusId;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext$Builder;->mId:Landroid/content/LocusId;

    return-void
.end method

.method private blacklist throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext$Builder;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Already called #build()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/contentcapture/ContentCaptureContext;
    .locals 2

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext$Builder;->mDestroyed:Z

    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;Landroid/view/contentcapture/ContentCaptureContext-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/contentcapture/ContentCaptureContext$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->throwIfDestroyed()V

    return-object p0
.end method
