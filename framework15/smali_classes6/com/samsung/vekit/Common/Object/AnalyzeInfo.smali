.class public Lcom/samsung/vekit/Common/Object/AnalyzeInfo;
.super Ljava/lang/Object;
.source "AnalyzeInfo.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/AnalyzeStatusListener;


# instance fields
.field private blacklist analyzeType:Lcom/samsung/vekit/Common/Type/AnalyzeType;

.field private blacklist analyzedDataPath:Ljava/lang/String;

.field private blacklist extension:Ljava/lang/String;

.field private blacklist target:Lcom/samsung/vekit/Common/Object/Element;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Content/Content;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzeType:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->target:Lcom/samsung/vekit/Common/Object/Element;

    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzedDataPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->extension:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Item/Item;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzeType:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->target:Lcom/samsung/vekit/Common/Object/Element;

    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzedDataPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->extension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getAnalyzeType()Lcom/samsung/vekit/Common/Type/AnalyzeType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzeType:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    return-object v0
.end method

.method public blacklist getAnalyzedDataPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzedDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTarget()Lcom/samsung/vekit/Common/Object/Element;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->target:Lcom/samsung/vekit/Common/Object/Element;

    return-object v0
.end method

.method public blacklist onAnalyzeCompleted()V
    .locals 0

    return-void
.end method

.method public blacklist onAnalyzeFailed()V
    .locals 0

    return-void
.end method

.method public blacklist onAnalyzePaused()V
    .locals 0

    return-void
.end method

.method public blacklist onAnalyzeResumed()V
    .locals 0

    return-void
.end method

.method public blacklist onAnalyzeStarted()V
    .locals 0

    return-void
.end method

.method public blacklist onAnalyzeStopped()V
    .locals 0

    return-void
.end method

.method public blacklist onSolutionError(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;)V
    .locals 0

    return-void
.end method

.method public blacklist onSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 0

    return-void
.end method

.method public blacklist onSolutionUnloaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 0

    return-void
.end method

.method public blacklist setAnalyzeType(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzeType:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    return-void
.end method

.method public blacklist setAnalyzedDataPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->analyzedDataPath:Ljava/lang/String;

    return-void
.end method

.method public blacklist setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->extension:Ljava/lang/String;

    return-void
.end method

.method public blacklist setTarget(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->target:Lcom/samsung/vekit/Common/Object/Element;

    return-void
.end method
