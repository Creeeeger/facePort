.class public Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
.super Ljava/lang/Object;
.source "ImeOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ImeOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImeOnBackInvokedCallback"
.end annotation


# instance fields
.field private final blacklist mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private final blacklist mId:I

.field private final blacklist mPriority:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I
    .locals 0

    iget p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetId(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I
    .locals 0

    invoke-direct {p0}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->getId()I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/window/IOnBackInvokedCallback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    iput p2, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    iput p3, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mPriority:I

    return-void
.end method

.method private blacklist getId()I
    .locals 1

    iget v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    return v0
.end method


# virtual methods
.method public whitelist onBackCancelled()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-interface {v0}, Landroid/window/IOnBackInvokedCallback;->onBackCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImeBackDispatcher"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist onBackInvoked()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-interface {v0}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImeBackDispatcher"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist onBackProgressed(Landroid/window/BackEvent;)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    new-instance v10, Landroid/window/BackMotionEvent;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v3

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v4

    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v8

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/window/BackMotionEvent;-><init>(FFFFFZILandroid/view/RemoteAnimationTarget;)V

    invoke-interface {v0, v10}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImeBackDispatcher"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist onBackStarted(Landroid/window/BackEvent;)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    new-instance v10, Landroid/window/BackMotionEvent;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v3

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v4

    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v8

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/window/BackMotionEvent;-><init>(FFFFFZILandroid/view/RemoteAnimationTarget;)V

    invoke-interface {v0, v10}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImeBackDispatcher"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImeCallback=ImeOnBackInvokedCallback@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
