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
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DragAndDropHelper"


# instance fields
.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mDisplayId:I

.field private final blacklist mHiddenDropTargetArea:Landroid/graphics/Rect;

.field private final blacklist mInitialDropTargetVisible:Z

.field private blacklist mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

.field private blacklist mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHiddenDropTargetArea(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    return-object p0
.end method

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

.method private constructor blacklist <init>(ZLandroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    new-instance v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;-><init>(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;-><init>(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mInitialDropTargetVisible:Z

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/graphics/Rect;Lcom/samsung/android/multiwindow/DragAndDropHelper-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/DragAndDropHelper;-><init>(ZLandroid/graphics/Rect;)V

    return-void
.end method

.method private blacklist dismiss()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    return-void
.end method


# virtual methods
.method public blacklist getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist show()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    const-string v1, "DragAndDropHelper"

    if-nez v0, :cond_0

    const-string v0, "Abort to show."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    iget v2, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mDisplayId:I

    invoke-interface {v0, v2}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;->show(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    :goto_0
    return-void
.end method
