.class public final synthetic Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/protolog/common/ILogger;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda3;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final blacklist log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda3;->f$0:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->lambda$onShellCommand$2(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
