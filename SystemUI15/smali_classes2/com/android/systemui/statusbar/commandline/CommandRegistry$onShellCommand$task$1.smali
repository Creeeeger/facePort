.class public final Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$task$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $args:[Ljava/lang/String;

.field public final synthetic $command:Lcom/android/systemui/statusbar/commandline/Command;

.field public final synthetic $pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/Command;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$task$1;->$command:Lcom/android/systemui/statusbar/commandline/Command;

    iput-object p2, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$task$1;->$pw:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$task$1;->$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$task$1;->$pw:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$task$1;->$args:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->drop(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$task$1;->$command:Lcom/android/systemui/statusbar/commandline/Command;

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/statusbar/commandline/Command;->execute(Ljava/io/PrintWriter;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
