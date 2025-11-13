.class public abstract Landroid/view/contentcapture/ContentCaptureSession;
.super Ljava/lang/Object;
.source "ContentCaptureSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureSession$FlushReason;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_BINDER:Ljava/lang/String; = "binder"

.field public static final blacklist EXTRA_ENABLED_STATE:Ljava/lang/String; = "enabled"

.field public static final blacklist FLUSH_REASON_FORCE_FLUSH:I = 0x8

.field public static final blacklist FLUSH_REASON_FULL:I = 0x1

.field public static final blacklist FLUSH_REASON_IDLE_TIMEOUT:I = 0x5

.field public static final blacklist FLUSH_REASON_SESSION_CONNECTED:I = 0x7

.field public static final blacklist FLUSH_REASON_SESSION_FINISHED:I = 0x4

.field public static final blacklist FLUSH_REASON_SESSION_STARTED:I = 0x3

.field public static final blacklist FLUSH_REASON_TEXT_CHANGE_TIMEOUT:I = 0x6

.field public static final blacklist FLUSH_REASON_VIEW_ROOT_ENTERED:I = 0x2

.field public static final blacklist FLUSH_REASON_VIEW_TREE_APPEARED:I = 0xa

.field public static final blacklist FLUSH_REASON_VIEW_TREE_APPEARING:I = 0x9

.field private static final blacklist ID_GENERATOR:Ljava/security/SecureRandom;

.field private static final blacklist INITIAL_CHILDREN_CAPACITY:I = 0x5

.field static final blacklist NOTIFY_NODES_DISAPPEAR_NOW_SENDS_TREE_EVENTS:J = 0xf6d5e61L

.field public static final blacklist STATE_ACTIVE:I = 0x2

.field public static final blacklist STATE_BY_APP:I = 0x40

.field public static final blacklist STATE_DISABLED:I = 0x4

.field public static final blacklist STATE_DUPLICATED_ID:I = 0x8

.field public static final blacklist STATE_FLAG_SECURE:I = 0x20

.field public static final blacklist STATE_INTERNAL_ERROR:I = 0x100

.field public static final blacklist STATE_NOT_WHITELISTED:I = 0x200

.field public static final blacklist STATE_NO_RESPONSE:I = 0x80

.field public static final blacklist STATE_NO_SERVICE:I = 0x10

.field public static final blacklist STATE_SERVICE_DIED:I = 0x400

.field public static final blacklist STATE_SERVICE_RESURRECTED:I = 0x1000

.field public static final blacklist STATE_SERVICE_UPDATING:I = 0x800

.field public static final blacklist STATE_WAITING_FOR_SERVER:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNKNOWN_STATE:I


# instance fields
.field private blacklist mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/contentcapture/ContentCaptureSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

.field private blacklist mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

.field private blacklist mDestroyed:Z

.field protected final blacklist mId:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSession;->ID_GENERATOR:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 1

    invoke-static {}, Landroid/view/contentcapture/ContentCaptureSession;->getRandomSessionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mState:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureContext;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    return-void
.end method

.method public static blacklist getFlushReasonAsString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "VIEW_TREE_APPEARED"

    return-object v0

    :pswitch_1
    const-string v0, "VIEW_TREE_APPEARING"

    return-object v0

    :pswitch_2
    const-string v0, "FORCE_FLUSH"

    return-object v0

    :pswitch_3
    const-string v0, "CONNECTED"

    return-object v0

    :pswitch_4
    const-string v0, "TEXT_CHANGE"

    return-object v0

    :pswitch_5
    const-string v0, "IDLE"

    return-object v0

    :pswitch_6
    const-string v0, "FINISHED"

    return-object v0

    :pswitch_7
    const-string v0, "STARTED"

    return-object v0

    :pswitch_8
    const-string v0, "VIEW_ROOT"

    return-object v0

    :pswitch_9
    const-string v0, "FULL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getRandomSessionId()I
    .locals 1

    nop

    :cond_0
    sget-object v0, Landroid/view/contentcapture/ContentCaptureSession;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    if-eqz v0, :cond_0

    return v0
.end method

.method protected static blacklist getStateAsString(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_0

    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string v1, "STATE_"

    int-to-long v2, p0

    const-class v4, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-static {v4, v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V

    return-void
.end method

.method public final whitelist createContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContentCaptureSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", child="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    :cond_1
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final whitelist destroy()V
    .locals 8

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): already destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mState:I

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " children first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/contentcapture/ContentCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    sget-object v5, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception destroying child session #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->onDestroy()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "destroyed: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "number children: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract blacklist flush(I)V
.end method

.method public final whitelist getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    return-object v0
.end method

.method public final whitelist getContentCaptureSessionId()Landroid/view/contentcapture/ContentCaptureSessionId;
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    return v0
.end method

.method abstract blacklist getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;
.end method

.method abstract blacklist internalNotifyChildSessionFinished(II)V
.end method

.method abstract blacklist internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V
.end method

.method abstract blacklist internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V
.end method

.method abstract blacklist internalNotifySessionPaused()V
.end method

.method abstract blacklist internalNotifySessionResumed()V
.end method

.method abstract blacklist internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
.end method

.method abstract blacklist internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V
.end method

.method abstract blacklist internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V
.end method

.method abstract blacklist internalNotifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
.end method

.method abstract blacklist internalNotifyViewTreeEvent(IZ)V
.end method

.method blacklist isContentCaptureEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract blacklist isDisabled()Z
.end method

.method public whitelist newAutofillId(Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    const-string v1, "hostId cannot be virtual: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/view/autofill/AutofillId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    return-object v0
.end method

.method abstract blacklist newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
.end method

.method public final whitelist newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;
    .locals 1

    new-instance v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final whitelist newVirtualViewStructure(Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;
    .locals 2

    new-instance v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;-><init>(Landroid/view/autofill/AutofillId;JI)V

    return-object v0
.end method

.method public abstract blacklist notifyContentCaptureEvents(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public final whitelist notifySessionPaused()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionPaused()V

    return-void
.end method

.method public final whitelist notifySessionResumed()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionResumed()V

    return-void
.end method

.method public final whitelist notifyViewAppeared(Landroid/view/ViewStructure;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    move-object v1, p1

    check-cast v1, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public final whitelist notifyViewInsetsChanged(Landroid/graphics/Insets;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    return-void
.end method

.method public final whitelist notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist notifyViewTreeEvent(Z)V
    .locals 1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    return-void
.end method

.method public final whitelist notifyViewsAppeared(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/ViewStructure;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appearedNodes"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStructure;

    instance-of v2, v1, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStructure;

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    move-object v3, v1

    check-cast v3, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-virtual {p0, v2, v3}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    return-void
.end method

.method public final whitelist notifyViewsDisappeared(Landroid/view/autofill/AutofillId;[J)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    const-string v1, "hostId cannot be virtual: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "virtual ids cannot be empty"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v2, 0xf6d5e61

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    aget-wide v5, p2, v4

    iget v7, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    new-instance v8, Landroid/view/autofill/AutofillId;

    iget v9, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v8, p1, v5, v6, v9}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    invoke-virtual {p0, v7, v8}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    :cond_3
    return-void
.end method

.method public abstract blacklist notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V
.end method

.method abstract blacklist onDestroy()V
.end method

.method public final whitelist setContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V

    return-void
.end method

.method abstract blacklist setDisabled(Z)Z
.end method

.method abstract blacklist start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
.end method
