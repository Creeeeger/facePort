.class public final Lcom/android/systemui/statusbar/CommandQueue$3;
.super Ljava/lang/Thread;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;

.field public final synthetic val$args:[Ljava/lang/String;

.field public final synthetic val$fd:Ljava/io/FileDescriptor;

.field public final synthetic val$pfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p3, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$fd:Ljava/io/FileDescriptor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$args:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$pfd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$3$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue$3$1;-><init>(Lcom/android/systemui/statusbar/CommandQueue$3;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$fd:Ljava/io/FileDescriptor;

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$args:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/dump/DumpHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    throw v0
.end method
