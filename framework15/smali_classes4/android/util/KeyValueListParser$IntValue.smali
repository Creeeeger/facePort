.class public Landroid/util/KeyValueListParser$IntValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntValue"
.end annotation


# instance fields
.field private final blacklist mDefaultValue:I

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mValue:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    iput p2, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    iput v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1

    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public blacklist getDefaultValue()I
    .locals 1

    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    return v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()I
    .locals 1

    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    return v0
.end method

.method public blacklist parse(Landroid/util/KeyValueListParser;)V
    .locals 2

    iget-object v0, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    iget v1, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    return-void
.end method

.method public blacklist setValue(I)V
    .locals 0

    iput p1, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    return-void
.end method
