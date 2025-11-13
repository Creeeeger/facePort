.class public interface abstract Lcom/samsung/vekit/Listener/AnalyzeStatusListener;
.super Ljava/lang/Object;
.source "AnalyzeStatusListener.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/NativeInterfaceListener;


# virtual methods
.method public abstract blacklist onAnalyzeCompleted()V
.end method

.method public abstract blacklist onAnalyzeFailed()V
.end method

.method public abstract blacklist onAnalyzePaused()V
.end method

.method public abstract blacklist onAnalyzeResumed()V
.end method

.method public abstract blacklist onAnalyzeStarted()V
.end method

.method public abstract blacklist onAnalyzeStopped()V
.end method

.method public abstract blacklist onSolutionError(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;)V
.end method

.method public abstract blacklist onSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
.end method

.method public abstract blacklist onSolutionUnloaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
.end method
