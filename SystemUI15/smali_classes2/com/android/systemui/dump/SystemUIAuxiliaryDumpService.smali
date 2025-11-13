.class public Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDumpHandler:Lcom/android/systemui/dump/DumpHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    const-string p3, "--dump-priority"

    const-string v0, "NORMAL"

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
