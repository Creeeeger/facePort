.class public abstract Lcom/android/modules/utils/BasicShellCommandHandler;
.super Ljava/lang/Object;
.source "BasicShellCommandHandler.java"


# static fields
.field protected static final blacklist DEBUG:Z = false

.field protected static final blacklist TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private blacklist mArgPos:I

.field private blacklist mArgs:[Ljava/lang/String;

.field private blacklist mCmd:Ljava/lang/String;

.field private blacklist mCurArgData:Ljava/lang/String;

.field private blacklist mErr:Ljava/io/FileDescriptor;

.field private blacklist mErrPrintWriter:Ljava/io/PrintWriter;

.field private blacklist mFileErr:Ljava/io/FileOutputStream;

.field private blacklist mFileIn:Ljava/io/FileInputStream;

.field private blacklist mFileOut:Ljava/io/FileOutputStream;

.field private blacklist mIn:Ljava/io/FileDescriptor;

.field private blacklist mInputStream:Ljava/io/InputStream;

.field private blacklist mOut:Ljava/io/FileDescriptor;

.field private blacklist mOutPrintWriter:Ljava/io/PrintWriter;

.field private blacklist mTarget:Landroid/os/Binder;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I
    .locals 9

    if-eqz p5, :cond_0

    array-length v0, p5

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p5, v0

    const/4 v1, 0x1

    move v8, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/modules/utils/BasicShellCommandHandler;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/modules/utils/BasicShellCommandHandler;->onCommand(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while executing \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    :cond_2
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v1

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    :cond_4
    iget-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    :cond_5
    throw v2
.end method

.method public blacklist getAllArgs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBufferedInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public blacklist getErrFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getErrPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawErrorStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    :cond_1
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public blacklist getInFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getNextArg()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public blacklist getNextArgRequired()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getNextOption()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    aget-object v0, v0, v2

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    iput-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_4
    iput-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No argument expected after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getOutFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public blacklist getRawErrorStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public blacklist getRawInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public blacklist getRawOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public blacklist getRemainingArgsCount()I
    .locals 2

    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getTarget()Landroid/os/Binder;
    .locals 1

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    return-object v0
.end method

.method public blacklist handleDefaultCommands(Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_1

    const-string/jumbo v0, "help"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->onHelp()V

    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    iput-object p2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    iput-object p3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    iput-object p4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    iput-object p5, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    iput p6, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public abstract blacklist onCommand(Ljava/lang/String;)I
.end method

.method public abstract blacklist onHelp()V
.end method

.method public blacklist peekNextArg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist peekRemainingArgs()[Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRemainingArgsCount()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    :goto_0
    iget-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int v3, v2, v3

    iget-object v4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
