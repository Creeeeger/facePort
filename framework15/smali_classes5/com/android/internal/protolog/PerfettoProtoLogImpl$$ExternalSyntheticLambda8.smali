.class public final synthetic Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist getInputStream()Landroid/util/proto/ProtoInputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$new$0(Ljava/lang/String;)Landroid/util/proto/ProtoInputStream;

    move-result-object v0

    return-object v0
.end method
