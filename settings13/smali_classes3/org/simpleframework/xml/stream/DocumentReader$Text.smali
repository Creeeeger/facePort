.class Lorg/simpleframework/xml/stream/DocumentReader$Text;
.super Lorg/simpleframework/xml/stream/EventToken;
.source "DocumentReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/DocumentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Text"
.end annotation


# instance fields
.field private final node:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .line 477
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventToken;-><init>()V

    .line 478
    iput-object p1, p0, Lorg/simpleframework/xml/stream/DocumentReader$Text;->node:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    .line 500
    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Text;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isText()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
