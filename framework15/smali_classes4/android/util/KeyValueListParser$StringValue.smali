.class public Landroid/util/KeyValueListParser$StringValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringValue"
.end annotation


# instance fields
.field private final blacklist mDefaultValue:Ljava/lang/String;

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    iput-object p2, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist getDefaultValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist parse(Landroid/util/KeyValueListParser;)V
    .locals 2

    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    iget-object v1, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    return-void
.end method

.method public blacklist setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    return-void
.end method
