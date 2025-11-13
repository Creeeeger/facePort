.class public Lcom/android/internal/protolog/ProtoLogDataSource$Instance;
.super Landroid/tracing/perfetto/DataSourceInstance;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# instance fields
.field private final blacklist mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

.field private final blacklist mOnFlush:Ljava/lang/Runnable;

.field private final blacklist mOnStart:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnStop:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfig(Lcom/android/internal/protolog/ProtoLogDataSource$Instance;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/tracing/perfetto/DataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Ljava/util/function/Consumer;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/DataSource<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;I",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/tracing/perfetto/DataSourceInstance;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    iput-object p4, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStart:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnFlush:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStop:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    return-void
.end method


# virtual methods
.method public blacklist onFlush(Landroid/tracing/perfetto/FlushCallbackArguments;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnFlush:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public blacklist onStart(Landroid/tracing/perfetto/StartCallbackArguments;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStart:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onStop(Landroid/tracing/perfetto/StopCallbackArguments;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStop:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
