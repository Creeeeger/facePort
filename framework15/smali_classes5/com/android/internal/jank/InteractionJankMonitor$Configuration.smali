.class public Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCujType:I

.field private final blacklist mDeferMonitor:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mSessionName:Ljava/lang/String;

.field private final blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceOnly:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mTimeout:J

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeout(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    return-object p0
.end method

.method private constructor blacklist <init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    iput-object p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->generateSessionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSessionName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    iput-boolean p6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz p7, :cond_0

    move-object v0, p7

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-boolean p9, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mDeferMonitor:Z

    invoke-direct {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->validate()V

    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLcom/android/internal/jank/InteractionJankMonitor$Configuration-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;-><init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;Z)V

    return-void
.end method

.method public static blacklist generateSessionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    add-int/lit8 v2, v1, -0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "J<%s::%s>"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "J<%s>"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private blacklist validate()V
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    const-string v2, "Invalid tag; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v0, 0x1

    const-string v2, "Invalid timeout value; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    const/4 v0, 0x1

    const-string v2, "Must pass in a context if only instrument surface; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_3
    const/4 v0, 0x1

    const-string v2, "Must pass in a valid surface control if only instrument surface; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->hasValidView()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iget-object v5, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    move v5, v6

    goto :goto_0

    :cond_5
    move v5, v7

    :goto_0
    move v3, v5

    iget-object v5, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    move v6, v7

    :goto_1
    move v4, v6

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid view: view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", attached="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasViewRoot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasRenderer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist getCujType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    return v0
.end method

.method public blacklist getDisplayId()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist getPerfettoTrigger()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.android.telemetry.interaction-jank-monitor-%d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSessionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSessionName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStatsdInteractionType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    invoke-static {v0}, Lcom/android/internal/jank/Cuj;->getStatsdInteractionType(I)I

    move-result v0

    return v0
.end method

.method public blacklist getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    return-object v0
.end method

.method blacklist hasValidView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isSurfaceOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    return v0
.end method

.method public blacklist logToStatsd()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    invoke-static {v0}, Lcom/android/internal/jank/Cuj;->logToStatsd(I)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldDeferMonitor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mDeferMonitor:Z

    return v0
.end method
