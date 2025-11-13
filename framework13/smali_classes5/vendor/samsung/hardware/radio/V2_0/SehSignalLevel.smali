.class public final Lvendor/samsung/hardware/radio/V2_0/SehSignalLevel;
.super Ljava/lang/Object;
.source "SehSignalLevel.java"


# static fields
.field public static final blacklist EXCELLLENT:I = 0x5

.field public static final blacklist GOOD:I = 0x3

.field public static final blacklist GREAT:I = 0x4

.field public static final blacklist MODERATE:I = 0x2

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist POOR:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 54
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 56
    const-string v2, "POOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    or-int/lit8 v1, v1, 0x1

    .line 59
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 60
    const-string v2, "MODERATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    or-int/lit8 v1, v1, 0x2

    .line 63
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 64
    const-string v2, "GOOD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/lit8 v1, v1, 0x3

    .line 67
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 68
    const-string v2, "GREAT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    or-int/lit8 v1, v1, 0x4

    .line 71
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 72
    const-string v2, "EXCELLLENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    or-int/lit8 v1, v1, 0x5

    .line 75
    :cond_4
    if-eq p0, v1, :cond_5

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_5
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 30
    if-nez p0, :cond_0

    .line 31
    const-string v0, "NONE"

    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 34
    const-string v0, "POOR"

    return-object v0

    .line 36
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 37
    const-string v0, "MODERATE"

    return-object v0

    .line 39
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 40
    const-string v0, "GOOD"

    return-object v0

    .line 42
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 43
    const-string v0, "GREAT"

    return-object v0

    .line 45
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 46
    const-string v0, "EXCELLLENT"

    return-object v0

    .line 48
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
