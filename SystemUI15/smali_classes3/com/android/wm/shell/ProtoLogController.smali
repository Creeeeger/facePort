.class public Lcom/android/wm/shell/ProtoLogController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# instance fields
.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/ProtoLogController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/ProtoLogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/ProtoLogController;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/wm/shell/ProtoLogController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    return-void
.end method


# virtual methods
.method public final onShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/wm/shell/ProtoLogController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/ProtoLogController$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "(Deprecated) legacy command. Use Perfetto commands instead."

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "disable"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "start"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "stop"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "save-for-bugreport"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_5
    const-string v6, "disable-text"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_6
    const-string v6, "enable"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v5, v4

    goto :goto_0

    :sswitch_7
    const-string v6, "enable-text"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move v5, v1

    :goto_0
    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid command: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p2, v1

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/ProtoLogController;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v1

    :pswitch_0
    array-length p1, p2

    invoke-static {p2, v4, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {p0, p1, v0}, Lcom/android/internal/protolog/common/IProtoLog;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result p0

    if-nez p0, :cond_8

    move v1, v4

    :cond_8
    return v1

    :pswitch_1
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    check-cast p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    return v4

    :pswitch_2
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    check-cast p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    return v4

    :pswitch_3
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p0, "(Deprecated) legacy command"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_b
    iget-object p2, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLog;->isProtoEnabled()Z

    move-result p2

    if-nez p2, :cond_c

    const-string p0, "Logging to proto is not enabled for WMShell."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_c
    iget-object p2, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    check-cast p2, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    invoke-virtual {p2, p1, v4}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    check-cast p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    return v4

    :pswitch_4
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    check-cast p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->getStatus()Ljava/lang/String;

    return v4

    :pswitch_5
    array-length v2, p2

    invoke-static {p2, v4, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {p0, p2, v0}, Lcom/android/internal/protolog/common/IProtoLog;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result p0

    if-nez p0, :cond_e

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Stopping logging on groups: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return v4

    :cond_e
    return v1

    :pswitch_6
    array-length p1, p2

    invoke-static {p2, v4, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {p0, p1, v0}, Lcom/android/internal/protolog/common/IProtoLog;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result p0

    if-nez p0, :cond_f

    move v1, v4

    :cond_f
    return v1

    :pswitch_7
    array-length v2, p2

    invoke-static {p2, v4, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {p0, p2, v0}, Lcom/android/internal/protolog/common/IProtoLog;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result p0

    if-nez p0, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Starting logging on groups: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return v4

    :cond_10
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x57eac4c9 -> :sswitch_7
        -0x4d6ada7d -> :sswitch_6
        -0x3d842b0e -> :sswitch_5
        -0x3532300e -> :sswitch_4
        -0x174ab7ac -> :sswitch_3
        0x360802 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    const-string/jumbo p0, "status"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  Get current ProtoLog status."

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p0, "start"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  Start proto logging."

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p0, "stop"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  Stop proto logging and flush to file."

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "enable [group...]"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  Enable proto logging for given groups."

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "disable [group...]"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  Disable proto logging for given groups."

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "enable-text [group...]"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  Enable logcat logging for given groups."

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "disable-text [group...]"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  Disable logcat logging for given groups."

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p0, "save-for-bugreport"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  Flush proto logging to file, only if it\'s enabled."

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
