.class final Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;
.super Ljava/lang/Object;
.source "CustomizedTextParser.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/util/CustomizedTextParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CscNodeList"
.end annotation


# instance fields
.field private blacklist children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;->children:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/util/CustomizedTextParser$CscNodeList-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist appendChild(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "newChild"    # Lorg/w3c/dom/Node;

    .line 234
    iget-object v0, p0, Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public whitelist test-api getLength()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "index"    # I

    .line 244
    iget-object v0, p0, Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method
