.class public Lcom/samsung/vekit/Control/VEAnalyzer;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "VEAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;,
        Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;
    }
.end annotation


# instance fields
.field private blacklist analyzedTime:J

.field private final blacklist eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

.field private blacklist info:Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

.field private blacklist isAnalyzing:Z

.field blacklist listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

.field blacklist solutionLoadChecker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/vekit/Common/Type/AnalyzeType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field blacklist status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;Landroid/os/Looper;)V
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ANALYZER:Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "Analyzer"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->TAG:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    invoke-direct {v0, p0, p2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;-><init>(Lcom/samsung/vekit/Control/VEAnalyzer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    :goto_0
    sget-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->INITIALIZED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/vekit/Control/VEAnalyzer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->info:Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist getCurrentAnalyzedPosition()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getCurrentAnalyzedPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    iget-wide v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    return-wide v0
.end method

.method public blacklist getInfo()Lcom/samsung/vekit/Common/Object/AnalyzeInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->info:Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    return-object v0
.end method

.method blacklist isAnalyzing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    return v0
.end method

.method public blacklist isSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->isSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Solution is already loaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->loadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    return-void
.end method

.method public blacklist onEvent(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->eventHandler:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public blacklist pause()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->pauseAnalyze()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    return-void
.end method

.method public blacklist resume()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->resumeAnalyze(J)V

    return-void
.end method

.method public blacklist setInfo(Lcom/samsung/vekit/Common/Object/AnalyzeInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->info:Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    sget-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->INITIALIZED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->setAnalyzeInfo(Lcom/samsung/vekit/Common/Object/AnalyzeInfo;)V

    return-void
.end method

.method public blacklist setListener(Lcom/samsung/vekit/Listener/AnalyzeStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    return-void
.end method

.method public blacklist start()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->analyzedTime:J

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->startAnalyze()V

    return-void
.end method

.method public blacklist stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stopAnalyze()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->isAnalyzing:Z

    return-void
.end method

.method public blacklist unloadSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->isSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Solution is already unloaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->unloadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    return-void
.end method
