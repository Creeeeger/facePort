.class public final Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Section;


# instance fields
.field public final list:Ljava/util/List;

.field public final scanner:Lorg/simpleframework/xml/core/Scanner;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Scanner;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;->list:Ljava/util/List;

    iput-object p1, p0, Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;->scanner:Lorg/simpleframework/xml/core/Scanner;

    return-void
.end method


# virtual methods
.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAttributes()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    return-object v0
.end method

.method public final getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getElements()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    return-object v0
.end method

.method public final getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getText()Lorg/simpleframework/xml/core/Label;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
