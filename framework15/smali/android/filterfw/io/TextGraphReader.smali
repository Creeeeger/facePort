.class public Landroid/filterfw/io/TextGraphReader;
.super Landroid/filterfw/io/GraphReader;
.source "TextGraphReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;,
        Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;,
        Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$InitFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$ConnectCommand;,
        Landroid/filterfw/io/TextGraphReader$Command;
    }
.end annotation


# instance fields
.field private blacklist mBoundReferences:Landroid/filterfw/core/KeyValueMap;

.field private blacklist mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/filterfw/io/TextGraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentFilter:Landroid/filterfw/core/Filter;

.field private blacklist mCurrentGraph:Landroid/filterfw/core/FilterGraph;

.field private blacklist mFactory:Landroid/filterfw/core/FilterFactory;

.field private blacklist mSettings:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentFilter(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentGraph(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFactory(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentFilter(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)V
    .locals 0

    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/filterfw/io/GraphReader;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist applySettings()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "autoBranch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-class v3, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string/jumbo v3, "synced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "unsynced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown autobranch setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v3, "discardUnconnectedOutputs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-class v3, Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setDiscardUnconnectedOutputs(Z)V

    :goto_1
    goto/16 :goto_0

    :cond_4
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown @setting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method private blacklist bindExternal(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    return-void

    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown external variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'! You must add a reference to this external in the host program using addReference(...)!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkReferences()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host program specifies reference to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', which is not declared @external in graph file!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private blacklist executeCommands()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/io/TextGraphReader$Command;

    invoke-interface {v1, p0}, Landroid/filterfw/io/TextGraphReader$Command;->execute(Landroid/filterfw/io/TextGraphReader;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must have a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but found a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist parseString(Ljava/lang/String;)V
    .locals 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    move-object/from16 v6, p0

    const-string v0, "@[a-zA-Z]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v0, "\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const-string v0, "\\{"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    const-string v0, "(\\s+|//[^\\n]*\\n)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string v0, "[a-zA-Z\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    const-string v0, "[a-zA-Z\\./:]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    const-string v0, "\\[[a-zA-Z0-9\\-_]+\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const-string v14, "=>"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    const-string v5, ";"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v0, "[a-zA-Z0-9\\-_]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x5

    const/16 v22, 0x6

    const/16 v23, 0x7

    const/16 v24, 0x8

    const/16 v25, 0x9

    const/16 v26, 0xa

    const/16 v27, 0xb

    const/16 v28, 0xc

    const/16 v29, 0xd

    const/16 v30, 0xe

    const/16 v31, 0xf

    const/16 v32, 0x10

    const/4 v0, 0x0

    new-instance v1, Landroid/filterfw/io/PatternScanner;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v10}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v46, v33

    move-object/from16 v33, v10

    move-object/from16 v10, v46

    :goto_0
    invoke-virtual {v1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v38

    if-nez v38, :cond_7

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v1, v4, v5}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {v6, v1, v4}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v2

    move/from16 v38, v0

    iget-object v0, v6, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, v2}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    const/16 v0, 0x10

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_1

    :pswitch_2
    move/from16 v38, v0

    const-string v0, "<external-identifier>"

    invoke-virtual {v1, v3, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/filterfw/io/TextGraphReader;->bindExternal(Ljava/lang/String;)V

    const/16 v2, 0x10

    move v0, v2

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_1

    :pswitch_3
    move/from16 v38, v0

    invoke-direct {v6, v1, v4}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    const/16 v2, 0x10

    move v0, v2

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_1

    :pswitch_4
    move/from16 v38, v0

    const-string v0, "[<target-port-name>]"

    invoke-virtual {v1, v13, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v40, v1

    add-int/lit8 v1, v39, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v1, Landroid/filterfw/io/TextGraphReader$ConnectCommand;

    move/from16 v41, v38

    move-object/from16 v38, v0

    move-object v0, v1

    move-object/from16 v39, v7

    move-object/from16 v7, v40

    move-object/from16 v40, v11

    move-object v11, v1

    move-object/from16 v1, p0

    move-object/from16 v42, v12

    move-object v12, v2

    move-object/from16 v2, v34

    move-object/from16 v43, v10

    move-object v10, v3

    move-object/from16 v3, v35

    move-object/from16 v44, v4

    move-object/from16 v4, v36

    move-object/from16 v45, v5

    move-object/from16 v5, v37

    invoke-direct/range {v0 .. v5}, Landroid/filterfw/io/TextGraphReader$ConnectCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x10

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    :pswitch_5
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string v0, "<target-filter-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    move-object/from16 v36, v0

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    :pswitch_6
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    invoke-virtual {v7, v15, v14}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0xb

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    :pswitch_7
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string v0, "[<source-port-name>]"

    invoke-virtual {v7, v13, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    move-object/from16 v35, v1

    move v0, v2

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    :pswitch_8
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string v0, "<source-filter-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    move-object/from16 v34, v0

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    :pswitch_9
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string/jumbo v0, "}"

    invoke-virtual {v7, v8, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    :pswitch_a
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    invoke-direct {v6, v7, v8}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v2, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;

    invoke-direct {v2, v6, v0}, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    :pswitch_b
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string/jumbo v0, "{"

    invoke-virtual {v7, v9, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x6

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    :pswitch_c
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string v0, "<filter-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v2, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;

    move-object/from16 v3, v43

    invoke-direct {v2, v6, v3, v0}, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    goto/16 :goto_1

    :pswitch_d
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    const-string v0, "<class-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    move-object v3, v0

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    goto/16 :goto_1

    :pswitch_e
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    const-string v0, "<library-name>"

    move-object/from16 v1, v42

    invoke-virtual {v7, v1, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;

    invoke-direct {v4, v6, v0}, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x10

    move v0, v2

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    goto/16 :goto_1

    :pswitch_f
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    const-string v0, "<package-name>"

    move-object/from16 v2, v40

    invoke-virtual {v7, v2, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v5, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;

    invoke-direct {v5, v6, v0}, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x10

    move v0, v4

    move-object/from16 v4, v39

    goto/16 :goto_1

    :pswitch_10
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    const-string v0, "<command>"

    move-object/from16 v4, v39

    invoke-virtual {v7, v4, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "@import"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_1

    :cond_0
    const-string v5, "@library"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    move v0, v5

    goto :goto_1

    :cond_1
    const-string v5, "@filter"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    move v0, v5

    goto :goto_1

    :cond_2
    const-string v5, "@connect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    move v0, v5

    goto :goto_1

    :cond_3
    const-string v5, "@set"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0xd

    move v0, v5

    goto :goto_1

    :cond_4
    const-string v5, "@external"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xe

    move v0, v5

    goto :goto_1

    :cond_5
    const-string v5, "@setting"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xf

    move v0, v5

    goto :goto_1

    :cond_6
    new-instance v5, Landroid/filterfw/io/GraphIOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown command \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v5

    :goto_1
    move-object v12, v1

    move-object v11, v2

    move-object v1, v7

    move-object/from16 v5, v45

    move-object/from16 v2, p1

    move-object v7, v4

    move-object/from16 v4, v44

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_0

    :cond_7
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    const/16 v0, 0x10

    move/from16 v5, v41

    if-eq v5, v0, :cond_9

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v11, "Unexpected end of input!"

    invoke-direct {v0, v11}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-string v6, "="

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, ";"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    const-string v10, "[a-zA-Z]+[a-zA-Z0-9]*"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string v11, "\'[^\']*\'|\\\"[^\\\"]*\\\""

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    const-string v12, "[0-9]+"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    const-string v13, "[0-9]*\\.[0-9]+f?"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const-string v14, "\\$[a-zA-Z]+[a-zA-Z0-9]"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    const-string/jumbo v15, "true|false"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Landroid/filterfw/core/KeyValueMap;

    invoke-direct/range {v17 .. v17}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    move-object/from16 v18, v17

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v20, v2

    move/from16 v2, v16

    move/from16 v16, v3

    move-object/from16 v3, v17

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v17

    if-nez v17, :cond_9

    if-eqz p2, :cond_1

    invoke-virtual/range {p1 .. p2}, Landroid/filterfw/io/PatternScanner;->peek(Ljava/util/regex/Pattern;)Z

    move-result v17

    if-nez v17, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    goto/16 :goto_5

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v17, v8

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v1, v9, v8}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v17, v8

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v1, v11}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v19, v17

    move/from16 v21, v4

    const/4 v4, 0x1

    if-eqz v17, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v22, v5

    add-int/lit8 v5, v17, -0x1

    move-object/from16 v17, v8

    move-object/from16 v8, v19

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-virtual {v5, v3, v4}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v9

    goto/16 :goto_3

    :cond_2
    move/from16 v22, v5

    move-object/from16 v17, v8

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    invoke-virtual {v1, v14}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v8, v18

    if-eqz v18, :cond_5

    move-object/from16 v18, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    if-eqz v9, :cond_3

    iget-object v9, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v9, v4}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    nop

    if-eqz v9, :cond_4

    invoke-virtual {v5, v3, v9}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v8

    goto :goto_3

    :cond_4
    new-instance v6, Landroid/filterfw/io/GraphIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v8

    const-string v8, "Unknown object reference to \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\'!"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    move-object/from16 v19, v8

    move-object/from16 v18, v9

    invoke-virtual {v1, v15}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    if-eqz v0, :cond_6

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v13}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    if-eqz v0, :cond_7

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v12}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    if-eqz v0, :cond_8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const/4 v0, 0x3

    move v2, v0

    goto :goto_4

    :cond_8
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v4, "<value>"

    invoke-virtual {v1, v4}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v17, v8

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    invoke-virtual {v1, v7, v6}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    move v2, v0

    goto :goto_4

    :pswitch_3
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v17, v8

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    const-string v0, "<identifier>"

    invoke-virtual {v1, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    move-object v3, v0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v4, v21

    move-object/from16 v18, v5

    move/from16 v5, v22

    goto/16 :goto_0

    :cond_9
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    :goto_5
    if-eqz v2, :cond_b

    const/4 v0, 0x3

    if-ne v2, v0, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected end of assignments on line "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->lineNo()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_6
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    new-instance v0, Landroid/filterfw/core/FilterFactory;

    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-void
.end method


# virtual methods
.method public blacklist readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    new-instance v0, Landroid/filterfw/core/FilterGraph;

    invoke-direct {v0}, Landroid/filterfw/core/FilterGraph;-><init>()V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    invoke-direct {p0, p1}, Landroid/filterfw/io/TextGraphReader;->parseString(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->applySettings()V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->executeCommands()V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    return-object v0
.end method

.method public blacklist readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Landroid/filterfw/io/PatternScanner;

    invoke-direct {v1, p1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v2

    return-object v2
.end method
