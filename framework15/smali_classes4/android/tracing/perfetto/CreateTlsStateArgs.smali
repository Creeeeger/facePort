.class public Landroid/tracing/perfetto/CreateTlsStateArgs;
.super Ljava/lang/Object;
.source "CreateTlsStateArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataSourceInstanceType:",
        "Landroid/tracing/perfetto/DataSourceInstance;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mDataSource:Landroid/tracing/perfetto/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/tracing/perfetto/DataSource<",
            "TDataSourceInstanceType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInstanceIndex:I


# direct methods
.method constructor blacklist <init>(Landroid/tracing/perfetto/DataSource;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/tracing/perfetto/CreateTlsStateArgs;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iput p2, p0, Landroid/tracing/perfetto/CreateTlsStateArgs;->mInstanceIndex:I

    return-void
.end method


# virtual methods
.method public blacklist getDataSourceInstanceLocked()Landroid/tracing/perfetto/DataSourceInstance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDataSourceInstanceType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/tracing/perfetto/CreateTlsStateArgs;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget v1, p0, Landroid/tracing/perfetto/CreateTlsStateArgs;->mInstanceIndex:I

    invoke-virtual {v0, v1}, Landroid/tracing/perfetto/DataSource;->getDataSourceInstanceLocked(I)Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object v0

    return-object v0
.end method
