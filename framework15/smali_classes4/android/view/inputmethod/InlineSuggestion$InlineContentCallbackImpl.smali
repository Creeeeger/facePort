.class final Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
.super Ljava/lang/Object;
.source "InlineSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InlineSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineContentCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mFirstContentReceived:Z

.field private final blacklist mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

.field private blacklist mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

.field private final blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private blacklist mSurfacePackageConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mView:Landroid/widget/inline/InlineContentView;


# direct methods
.method public static synthetic blacklist $r8$lambda$F6aU5UcDmToAqoeSDpD20bB6gZc(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$onLongClick$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Qz6bE-wbGOpxURv5FX7bSlD4hsQ(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$onContent$0(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UMqF0Nt-D5fxDLbf8vzhkmFfrwo(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$handleOnFirstContentReceived$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WIFfudgTCUYowel5YK_mrQltMOg(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$handleOnFirstContentReceived$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ieo1mTRFSWdMq6JP-8W91M-WOic(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$onClick$3()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlineTooltipUi(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Lcom/android/internal/view/inline/InlineTooltipUi;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Landroid/widget/inline/InlineContentView;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleGetSurfacePackage(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleGetSurfacePackage(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnSurfacePackageReleased(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnSurfacePackageReleased()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/view/inline/IInlineContentProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/view/inline/IInlineContentProvider;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;",
            "Lcom/android/internal/view/inline/InlineTooltipUi;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mFirstContentReceived:Z

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    iput-object p5, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-void
.end method

.method private blacklist getSurfacePackageUpdater()Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;
    .locals 1

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    return-object v0
.end method

.method private blacklist handleGetSurfacePackage(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentProvider;->requestSurfacePackage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling getSurfacePackage(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestion"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    :goto_0
    return-void
.end method

.method private blacklist handleOnContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mFirstContentReceived:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnFirstContentReceived(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mFirstContentReceived:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    :goto_0
    return-void
.end method

.method private blacklist handleOnFirstContentReceived(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 2

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/inline/InlineContentView;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/inline/InlineContentView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/inline/InlineContentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->getSurfacePackageUpdater()Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/inline/InlineContentView;->setChildSurfacePackageUpdater(Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;)V

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private blacklist handleOnSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentProvider;->onSurfacePackageReleased()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling onSurfacePackageReleased(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestion"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private blacklist handleOnSurfacePackageReleased()V
    .locals 4

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentProvider;->onSurfacePackageReleased()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling onSurfacePackageReleased(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InlineSuggestion"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    :cond_0
    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method private synthetic blacklist lambda$handleOnFirstContentReceived$1()V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleOnFirstContentReceived$2()V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$onClick$3()V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->callOnClick()Z

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onContent$0(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onLongClick$4()V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->hasOnLongClickListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->performLongClick()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist onClick()V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onLongClick()V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
