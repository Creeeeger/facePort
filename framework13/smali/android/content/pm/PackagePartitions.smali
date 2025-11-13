.class public Landroid/content/pm/PackagePartitions;
.super Ljava/lang/Object;
.source "PackagePartitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;,
        Landroid/content/pm/PackagePartitions$SystemPartition;,
        Landroid/content/pm/PackagePartitions$PartitionType;
    }
.end annotation


# static fields
.field public static final blacklist FINGERPRINT:Ljava/lang/String;

.field public static final blacklist PARTITION_ODM:I = 0x2

.field public static final blacklist PARTITION_OEM:I = 0x3

.field public static final blacklist PARTITION_PRODUCT:I = 0x4

.field public static final blacklist PARTITION_SYSTEM:I = 0x0

.field public static final blacklist PARTITION_SYSTEM_EXT:I = 0x5

.field public static final blacklist PARTITION_VENDOR:I = 0x1

.field private static final blacklist SYSTEM_PARTITIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Landroid/content/pm/PackagePartitions;->canonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 17

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/content/pm/PackagePartitions$SystemPartition;

    new-instance v9, Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 70
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "system"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 73
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x1

    const-string/jumbo v13, "vendor"

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 76
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x2

    const-string/jumbo v7, "odm"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 79
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x3

    const-string/jumbo v7, "oem"

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 82
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x4

    const-string/jumbo v7, "product"

    const/4 v8, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    new-instance v5, Ljava/io/File;

    const-string v3, "/prism"

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string/jumbo v7, "prism"

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    new-instance v5, Ljava/io/File;

    .line 88
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "carrier"

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, "carrier"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 92
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x5

    const-string/jumbo v7, "system_ext"

    const/4 v9, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 69
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/pm/PackagePartitions;->SYSTEM_PARTITIONS:Ljava/util/ArrayList;

    .line 102
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist canonicalize(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    return-object p0
.end method

.method private static blacklist getFingerprint()Ljava/lang/String;
    .locals 5

    .line 136
    sget-object v0, Landroid/content/pm/PackagePartitions;->SYSTEM_PARTITIONS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 137
    .local v0, "digestProperties":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/PackagePartitions;->SYSTEM_PARTITIONS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 138
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-virtual {v2}, Landroid/content/pm/PackagePartitions$SystemPartition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "partitionName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ro."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".build.fingerprint"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 137
    .end local v2    # "partitionName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "ro.build.fingerprint"

    aput-object v2, v0, v1

    .line 142
    invoke-static {v0}, Landroid/os/SystemProperties;->digestOf([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 110
    .local p0, "producer":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/pm/PackagePartitions$SystemPartition;TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v2, Landroid/content/pm/PackagePartitions;->SYSTEM_PARTITIONS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 112
    sget-object v3, Landroid/content/pm/PackagePartitions;->SYSTEM_PARTITIONS:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-interface {p0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 113
    .local v3, "v":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-object v0
.end method
