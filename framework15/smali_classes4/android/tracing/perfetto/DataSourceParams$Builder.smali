.class public final Landroid/tracing/perfetto/DataSourceParams$Builder;
.super Ljava/lang/Object;
.source "DataSourceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tracing/perfetto/DataSourceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBufferExhaustedPolicy:I

.field private blacklist mNoFlush:Z

.field private blacklist mWillNotifyOnStop:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/tracing/perfetto/DataSourceParams$Builder;->mBufferExhaustedPolicy:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/tracing/perfetto/DataSourceParams$Builder;->mWillNotifyOnStop:Z

    iput-boolean v0, p0, Landroid/tracing/perfetto/DataSourceParams$Builder;->mNoFlush:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/tracing/perfetto/DataSourceParams;
    .locals 5

    new-instance v0, Landroid/tracing/perfetto/DataSourceParams;

    iget v1, p0, Landroid/tracing/perfetto/DataSourceParams$Builder;->mBufferExhaustedPolicy:I

    iget-boolean v2, p0, Landroid/tracing/perfetto/DataSourceParams$Builder;->mWillNotifyOnStop:Z

    iget-boolean v3, p0, Landroid/tracing/perfetto/DataSourceParams$Builder;->mNoFlush:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/tracing/perfetto/DataSourceParams;-><init>(IZZLandroid/tracing/perfetto/DataSourceParams-IA;)V

    return-object v0
.end method

.method public blacklist setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;
    .locals 0

    iput p1, p0, Landroid/tracing/perfetto/DataSourceParams$Builder;->mBufferExhaustedPolicy:I

    return-object p0
.end method

.method public blacklist setNoFlush(Z)Landroid/tracing/perfetto/DataSourceParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/tracing/perfetto/DataSourceParams$Builder;->mNoFlush:Z

    return-object p0
.end method

.method public blacklist setWillNotifyOnStop(Z)Landroid/tracing/perfetto/DataSourceParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/tracing/perfetto/DataSourceParams$Builder;->mWillNotifyOnStop:Z

    return-object p0
.end method
