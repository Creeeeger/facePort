.class public Lcom/samsung/android/multiwindow/DragAndDropHelper;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "DragAndDropHelper"


# instance fields
.field private blacklist mDisplayId:I

.field private final blacklist mInitialDropTargetVisible:Z

.field private blacklist mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

.field private blacklist mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInitialDropTargetVisible(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mInitialDropTargetVisible:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisplayId(Lcom/samsung/android/multiwindow/DragAndDropHelper;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mDisplayId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServerProxy(Lcom/samsung/android/multiwindow/DragAndDropHelper;Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismiss(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->dismiss()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "shellDropTargetVisibility"    # Z

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;-><init>(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mInitialDropTargetVisible:Z

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLcom/samsung/android/multiwindow/DragAndDropHelper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;-><init>(Z)V

    return-void
.end method

.method private blacklist dismiss()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    .line 89
    return-void
.end method


# virtual methods
.method public blacklist getBinder()Landroid/os/IBinder;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist show()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    const-string v1, "DragAndDropHelper"

    if-nez v0, :cond_0

    .line 75
    const-string v0, "Abort to show."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_0
    sget-boolean v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Requested to show"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    iget v2, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mDisplayId:I

    invoke-interface {v0, v2}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;->show(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
