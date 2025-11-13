.class public Lcom/samsung/android/util/CustomizedTextParser;
.super Ljava/lang/Object;
.source "CustomizedTextParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;
    }
.end annotation


# static fields
.field private static final blacklist CSC_XML_FILE_NAME:Ljava/lang/String; = "unique_text.xml"

.field private static final blacklist CSC_XML_FILE_PATH:Ljava/lang/String; = "/system/csc/"

.field static final blacklist PATH_CUSTOM_INFO:Ljava/lang/String; = "CustomizedText"

.field public static final blacklist REPLACE_TAG:Ljava/lang/String; = "cst"

.field private static final blacklist TAG:Ljava/lang/String; = "CustomizedTextParser"

.field static final blacklist TAG_RULE_INFO:Ljava/lang/String; = "Rule"

.field static final blacklist TAG_SOURCE_STRING:Ljava/lang/String; = "source"

.field static final blacklist TAG_TARGET_STRING:Ljava/lang/String; = "target"

.field private static blacklist sInstance:Lcom/samsung/android/util/CustomizedTextParser;


# instance fields
.field private blacklist mDoc:Lorg/w3c/dom/Document;

.field private blacklist mRoot:Lorg/w3c/dom/Node;

.field private blacklist mRuleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 5

    .line 50
    const-string v0, "CustomizedTextParser"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    :try_start_0
    const-string/jumbo v1, "persist.sys.omc_etcpath"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "omcEtcPath":Ljava/lang/String;
    const-string v2, "/system/csc/unique_text.xml"

    .line 55
    .local v2, "pathName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "unique_text.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 59
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "path name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0, v2}, Lcom/samsung/android/util/CustomizedTextParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "omcEtcPath":Ljava/lang/String;
    .end local v2    # "pathName":Ljava/lang/String;
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "feature state : true"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/util/CustomizedTextParser;
    .locals 2

    .line 70
    const-class v0, Lcom/samsung/android/util/CustomizedTextParser;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/samsung/android/util/CustomizedTextParser;->sInstance:Lcom/samsung/android/util/CustomizedTextParser;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/samsung/android/util/CustomizedTextParser;

    invoke-direct {v1}, Lcom/samsung/android/util/CustomizedTextParser;-><init>()V

    sput-object v1, Lcom/samsung/android/util/CustomizedTextParser;->sInstance:Lcom/samsung/android/util/CustomizedTextParser;

    .line 73
    invoke-direct {v1}, Lcom/samsung/android/util/CustomizedTextParser;->initialize()V

    .line 75
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v0, Lcom/samsung/android/util/CustomizedTextParser;->sInstance:Lcom/samsung/android/util/CustomizedTextParser;

    return-object v0

    .line 75
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 148
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 149
    return-object v0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 154
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 155
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "idx":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 160
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 161
    .local v2, "firstChild":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private blacklist initialize()V
    .locals 11

    .line 80
    const-string v0, "CustomizedTextParser"

    const-string v1, "Initialzed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/util/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/util/CustomizedTextParser;->search()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 84
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/util/CustomizedTextParser;->searchList(Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 88
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 89
    const-string v3, "createCscRuleMap:No Rule info"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 94
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 98
    .local v3, "stringSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 99
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 101
    .local v5, "currentNode":Lorg/w3c/dom/Node;
    const-string/jumbo v6, "source"

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/util/CustomizedTextParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 103
    .local v6, "srcTemp":Lorg/w3c/dom/Node;
    const-string/jumbo v7, "target"

    invoke-direct {p0, v5, v7}, Lcom/samsung/android/util/CustomizedTextParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 105
    .local v7, "targetTemp":Lorg/w3c/dom/Node;
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 106
    iget-object v8, p0, Lcom/samsung/android/util/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-direct {p0, v6}, Lcom/samsung/android/util/CustomizedTextParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7}, Lcom/samsung/android/util/CustomizedTextParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createCscRuleMap:src or target is null. srcTemp ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",target="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v6    # "srcTemp":Lorg/w3c/dom/Node;
    .end local v7    # "targetTemp":Lorg/w3c/dom/Node;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    .end local v4    # "i":I
    .end local v5    # "currentNode":Lorg/w3c/dom/Node;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialzed: Finished. size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/util/CustomizedTextParser;->sInstance:Lcom/samsung/android/util/CustomizedTextParser;

    iget-object v5, v5, Lcom/samsung/android/util/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method private blacklist search()Lorg/w3c/dom/Node;
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/samsung/android/util/CustomizedTextParser;->mRoot:Lorg/w3c/dom/Node;

    .line 166
    .local v0, "node":Lorg/w3c/dom/Node;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "CustomizedText"

    const-string v3, "."

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "token":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 172
    const/4 v3, 0x0

    return-object v3

    .line 174
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/util/CustomizedTextParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 175
    .end local v2    # "token":Ljava/lang/String;
    goto :goto_0

    .line 177
    :cond_1
    return-object v0
.end method

.method private blacklist search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "name"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 182
    return-object v0

    .line 184
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 186
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 187
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 189
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 190
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 192
    .local v4, "child":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    return-object v4

    .line 189
    .end local v4    # "child":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method private blacklist searchList(Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;

    .line 202
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 203
    return-object v0

    .line 206
    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;

    invoke-direct {v1, v0}, Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;-><init>(Lcom/samsung/android/util/CustomizedTextParser$CscNodeList-IA;)V

    .line 207
    .local v1, "list":Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 209
    .local v2, "children":Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_2

    .line 210
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 212
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 213
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 215
    .local v5, "child":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Rule"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_1

    .line 217
    :try_start_1
    invoke-virtual {v1, v5}, Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;->appendChild(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    goto :goto_1

    .line 218
    :catch_0
    move-exception v6

    .line 219
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 212
    .end local v5    # "child":Lorg/w3c/dom/Node;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    .end local v3    # "n":I
    .end local v4    # "i":I
    :cond_2
    return-object v1

    .line 225
    .end local v1    # "list":Lcom/samsung/android/util/CustomizedTextParser$CscNodeList;
    .end local v2    # "children":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private blacklist update(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 137
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 138
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, "fe":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/util/CustomizedTextParser;->mDoc:Lorg/w3c/dom/Document;

    .line 141
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/util/CustomizedTextParser;->mRoot:Lorg/w3c/dom/Node;

    goto :goto_0

    .line 143
    :cond_0
    const-string v3, "CustomizedTextParser"

    const-string/jumbo v4, "update : XML file doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getCustomizedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/util/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    const-string v1, "CustomizedTextParser"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/util/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "replaceText":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "trimText":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/util/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    .local v3, "trimReplaceText":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertString replaceText is null. preString= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object p1

    .line 129
    :cond_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .end local v2    # "trimText":Ljava/lang/String;
    .end local v3    # "trimReplaceText":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 116
    .end local v0    # "replaceText":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomizedText Rule is empty. mRuleMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/util/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-object p1
.end method
