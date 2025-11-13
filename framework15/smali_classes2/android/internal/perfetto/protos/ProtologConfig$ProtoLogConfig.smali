.class public final Landroid/internal/perfetto/protos/ProtologConfig$ProtoLogConfig;
.super Ljava/lang/Object;
.source "ProtologConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/ProtologConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProtoLogConfig"
.end annotation


# static fields
.field public static final blacklist DEFAULT:I = 0x0

.field public static final blacklist ENABLE_ALL:I = 0x1

.field public static final blacklist GROUP_OVERRIDES:J = 0x20b00000001L

.field public static final blacklist TRACING_MODE:J = 0x10e00000002L


# instance fields
.field final synthetic blacklist this$0:Landroid/internal/perfetto/protos/ProtologConfig;


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/ProtologConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/internal/perfetto/protos/ProtologConfig$ProtoLogConfig;->this$0:Landroid/internal/perfetto/protos/ProtologConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
