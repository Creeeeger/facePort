.class public abstract Landroid/service/autofill/InlineSuggestionRenderService;
.super Landroid/app/Service;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;,
        Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.InlineSuggestionRenderService"

.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionRenderService"


# instance fields
.field private final blacklist mActiveInlineSuggestions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

.field private final blacklist mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveInlineSuggestions(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/util/LruCache;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroySuggestionViews(Landroid/service/autofill/InlineSuggestionRenderService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/InlineSuggestionRenderService;->handleDestroySuggestionViews(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleGetInlineSuggestionsRendererInfo(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/InlineSuggestionRenderService;->handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRenderSuggestion(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/service/autofill/InlineSuggestionRenderService;->handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$1;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/InlineSuggestionRenderService$1;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;I)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    return-void
.end method

.method private blacklist handleDestroySuggestionViews(II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDestroySuggestionViews called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    invoke-static {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmUserId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmSessionId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v3

    if-ne v3, p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->releaseSurfaceControlViewHost()V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRenderService;->onGetInlineSuggestionsRendererInfo()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private blacklist handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    const-string v12, "InlineSuggestionRenderService"

    if-nez v11, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    const-string v1, "RemoteException calling onError()"

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move/from16 v13, p6

    invoke-virtual {v7, v13}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    const/4 v14, 0x0

    move-object/from16 v15, p2

    :try_start_1
    invoke-virtual {v7, v15, v9, v10}, Landroid/service/autofill/InlineSuggestionRenderService;->onRenderSuggestion(Landroid/service/autofill/InlinePresentation;II)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    if-nez v6, :cond_1

    const-string v0, "ExtServices failed to render the inline suggestion view."

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface/range {p1 .. p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onError()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    :try_start_3
    const-string v1, "Null suggestion view returned by renderer"

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v7, v14}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    return-void

    :cond_1
    :try_start_4
    iput-object v8, v7, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v0

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v14, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/autofill/InlineSuggestionRenderService;->measuredSize(Landroid/view/View;IILandroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", measuredSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/service/autofill/InlineSuggestionRoot;

    invoke-direct {v1, v7, v8}, Landroid/service/autofill/InlineSuggestionRoot;-><init>(Landroid/content/Context;Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    move-object v6, v1

    invoke-virtual {v6, v14}, Landroid/service/autofill/InlineSuggestionRoot;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v17

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v18

    const/16 v20, 0x0

    const/16 v21, -0x2

    const/16 v19, 0x2

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object v5, v1

    new-instance v1, Landroid/view/SurfaceControlViewHost;

    invoke-virtual/range {p0 .. p0}, Landroid/service/autofill/InlineSuggestionRenderService;->getDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/window/InputTransferToken;

    invoke-direct {v3, v11}, Landroid/window/InputTransferToken;-><init>(Landroid/os/IBinder;)V

    invoke-direct {v1, v7, v2, v3, v12}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    move-object v12, v1

    invoke-virtual {v12, v6, v5}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/view/View;->setFocusable(Z)V

    new-instance v1, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda0;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    nop

    invoke-virtual {v14}, Landroid/view/View;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    move-object v4, v1

    new-instance v1, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, v4, v8}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v16, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    iget-object v3, v7, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object v3, v12

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    move/from16 v5, p7

    move-object/from16 v19, v6

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/view/SurfaceControlViewHost;Landroid/os/Handler;II)V

    move-object/from16 v1, v16

    iget-object v2, v7, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v7, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda2;

    invoke-direct {v3, v8, v1, v12, v0}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/view/SurfaceControlViewHost;Landroid/util/Size;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    nop

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    throw v0
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$0(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)V
    .locals 3

    :try_start_0
    invoke-interface {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InlineSuggestionRenderService"

    const-string v2, "RemoteException calling onClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$1(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)Z
    .locals 3

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onLongClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InlineSuggestionRenderService"

    const-string v2, "RemoteException calling onLongClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$2(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/view/SurfaceControlViewHost;Landroid/util/Size;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;

    invoke-direct {v0, p1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;-><init>(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v1

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onContent(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InlineSuggestionRenderService"

    const-string v2, "RemoteException calling onContent()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist measuredSize(Landroid/view/View;IILandroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .locals 6

    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    if-eq p3, v0, :cond_0

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v0, :cond_1

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_0
    if-ne p3, v0, :cond_2

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method protected final whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveInlineSuggestions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    invoke-static {v1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmUserId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmSessionId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "ui: [%s] - [%d]  [%d]\n"

    invoke-virtual {p2, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    const-string v0, "android.service.autofill.InlineSuggestionRenderService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$2;

    invoke-direct {v0, p0}, Landroid/service/autofill/InlineSuggestionRenderService$2;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;)V

    invoke-virtual {v0}, Landroid/service/autofill/InlineSuggestionRenderService$2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.autofill.InlineSuggestionRenderService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onGetInlineSuggestionsRendererInfo()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist onRenderSuggestion(Landroid/service/autofill/InlinePresentation;II)Landroid/view/View;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service implementation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not implement onRenderSuggestion()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist startIntentSender(Landroid/content/IntentSender;)V
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onStartIntentSender(Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
