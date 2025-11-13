.class public Landroid/util/KeyValueListParser$LongValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongValue"
.end annotation


# instance fields
.field private final blacklist mDefaultValue:J

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mValue:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/KeyValueListParser$LongValue;->mKey:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/KeyValueListParser$LongValue;->mDefaultValue:J

    iget-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mDefaultValue:J

    iput-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/KeyValueListParser$LongValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2

    iget-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    return-void
.end method

.method public blacklist getDefaultValue()J
    .locals 2

    iget-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mDefaultValue:J

    return-wide v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/KeyValueListParser$LongValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()J
    .locals 2

    iget-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    return-wide v0
.end method

.method public blacklist parse(Landroid/util/KeyValueListParser;)V
    .locals 3

    iget-object v0, p0, Landroid/util/KeyValueListParser$LongValue;->mKey:Ljava/lang/String;

    iget-wide v1, p0, Landroid/util/KeyValueListParser$LongValue;->mDefaultValue:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    return-void
.end method

.method public blacklist setValue(J)V
    .locals 0

    iput-wide p1, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    return-void
.end method
