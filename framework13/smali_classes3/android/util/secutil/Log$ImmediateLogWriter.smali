.class Landroid/util/secutil/Log$ImmediateLogWriter;
.super Ljava/io/Writer;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/secutil/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateLogWriter"
.end annotation


# instance fields
.field private blacklist bufID:I

.field private blacklist priority:I

.field private blacklist tag:Ljava/lang/String;

.field private blacklist written:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "bufID"    # I
    .param p2, "priority"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 616
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 610
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/secutil/Log$ImmediateLogWriter;->written:I

    .line 617
    iput p1, p0, Landroid/util/secutil/Log$ImmediateLogWriter;->bufID:I

    .line 618
    iput p2, p0, Landroid/util/secutil/Log$ImmediateLogWriter;->priority:I

    .line 619
    iput-object p3, p0, Landroid/util/secutil/Log$ImmediateLogWriter;->tag:Ljava/lang/String;

    .line 620
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    .line 642
    return-void
.end method

.method public whitelist test-api flush()V
    .locals 0

    .line 637
    return-void
.end method

.method public blacklist getWritten()I
    .locals 1

    .line 623
    iget v0, p0, Landroid/util/secutil/Log$ImmediateLogWriter;->written:I

    return v0
.end method

.method public whitelist test-api write([CII)V
    .locals 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 631
    iget v0, p0, Landroid/util/secutil/Log$ImmediateLogWriter;->written:I

    iget v1, p0, Landroid/util/secutil/Log$ImmediateLogWriter;->bufID:I

    iget v2, p0, Landroid/util/secutil/Log$ImmediateLogWriter;->priority:I

    iget-object v3, p0, Landroid/util/secutil/Log$ImmediateLogWriter;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1, v2, v3, v4}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/secutil/Log$ImmediateLogWriter;->written:I

    .line 632
    return-void
.end method
