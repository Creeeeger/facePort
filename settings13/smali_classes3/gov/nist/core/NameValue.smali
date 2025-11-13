.class public Lgov/nist/core/NameValue;
.super Lgov/nist/core/GenericObject;
.source "NameValue.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/core/GenericObject;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x19c7fab1bcbf73beL


# instance fields
.field protected final isFlagParameter:Z

.field protected isQuotedString:Z

.field private name:Ljava/lang/String;

.field private quotes:Ljava/lang/String;

.field private separator:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    const-string v1, "="

    .line 66
    iput-object v1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 82
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    const-string p1, "="

    .line 84
    iput-object p1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    const-string p1, ""

    .line 85
    iput-object p1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 86
    iput-boolean p3, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 213
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    .line 214
    iget-object p0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 215
    invoke-static {p0}, Lgov/nist/core/GenericObject;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    .line 163
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-nez v2, :cond_4

    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    .line 166
    iget-object v1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 168
    iget-object p0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1

    .line 170
    :cond_0
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObjectList;

    .line 172
    iget-object v1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1

    .line 174
    :cond_1
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1

    .line 184
    :cond_2
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1

    .line 188
    :cond_3
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1

    :cond_4
    if-nez v0, :cond_7

    .line 191
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    iget-object p0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast p0, Lgov/nist/core/GenericObject;

    .line 194
    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p1

    .line 196
    :cond_5
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    iget-object p0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast p0, Lgov/nist/core/GenericObjectList;

    .line 198
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1

    .line 201
    :cond_6
    iget-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1

    :cond_7
    if-eqz v0, :cond_9

    .line 204
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_8

    iget-boolean p0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz p0, :cond_9

    .line 205
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 226
    :cond_1
    check-cast p1, Lgov/nist/core/NameValue;

    const/4 v1, 0x1

    if-ne p0, p1, :cond_2

    return v1

    .line 229
    :cond_2
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v3, p1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    iget-object v3, p1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_4
    return v0

    :cond_5
    if-eqz v2, :cond_6

    .line 232
    iget-object v3, p1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6

    return v0

    .line 235
    :cond_6
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v3, :cond_8

    :cond_7
    if-nez v2, :cond_9

    iget-object v3, p1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v3, :cond_9

    :cond_8
    return v0

    .line 238
    :cond_9
    iget-object p1, p1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-ne v2, p1, :cond_a

    return v1

    .line 240
    :cond_a
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 242
    iget-boolean p0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz p0, :cond_b

    .line 243
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 244
    :cond_b
    check-cast v2, Ljava/lang/String;

    .line 245
    check-cast p1, Ljava/lang/String;

    .line 246
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    move v0, v1

    :cond_c
    return v0

    .line 248
    :cond_d
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 257
    iget-object p0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .locals 1

    .line 127
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 282
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public setQuotedValue()V
    .locals 1

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    const-string v0, "\""

    .line 112
    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 275
    :goto_0
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValueAsObject(Ljava/lang/Object;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    return-void
.end method
