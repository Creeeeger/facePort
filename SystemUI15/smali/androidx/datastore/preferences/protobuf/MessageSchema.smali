.class public final Landroidx/datastore/preferences/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Schema;


# static fields
.field public static final EMPTY_INT_ARRAY:[I

.field public static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field public final buffer:[I

.field public final checkInitializedCount:I

.field public final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

.field public final extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

.field public final hasExtensions:Z

.field public final intArray:[I

.field public final listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

.field public final lite:Z

.field public final mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

.field public final maxFieldNumber:I

.field public final minFieldNumber:I

.field public final newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

.field public final objects:[Ljava/lang/Object;

.field public final proto3:Z

.field public final repeatedFieldOffsetStart:I

.field public final unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

.field public final useCachedSizeField:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    :try_start_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil$1;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;ZZ[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Landroidx/datastore/preferences/protobuf/MessageLite;",
            "ZZ[III",
            "Landroidx/datastore/preferences/protobuf/NewInstanceSchema;",
            "Landroidx/datastore/preferences/protobuf/ListFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema;",
            "Landroidx/datastore/preferences/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    iput p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->minFieldNumber:I

    iput p4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->maxFieldNumber:I

    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->lite:Z

    iput-boolean p6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->hasExtensions(Landroidx/datastore/preferences/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    iput-boolean p7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    iput-object p8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    iput p9, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    iput p10, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    iput-object p11, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    iput-object p12, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    iput-object p13, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    iput-object p14, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    iput-object p15, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    return-void
.end method

.method public static isMutable(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static newSchema(Landroidx/datastore/preferences/protobuf/MessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;
    .locals 50

    move-object/from16 v0, p0

    instance-of v1, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    const/4 v8, 0x0

    const/4 v10, 0x2

    if-eqz v1, :cond_34

    check-cast v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-result-object v1

    sget-object v12, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO3:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    if-ne v1, v12, :cond_0

    const/16 v19, 0x1

    goto :goto_0

    :cond_0
    move/from16 v19, v8

    :goto_0
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const v14, 0xd800

    if-lt v13, v14, :cond_1

    const/4 v13, 0x1

    :goto_1
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_2

    move v13, v15

    goto :goto_1

    :cond_1
    const/4 v15, 0x1

    :cond_2
    add-int/lit8 v13, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0xd

    if-lt v15, v14, :cond_4

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v17, v16

    :goto_2
    add-int/lit8 v18, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_3

    and-int/lit16 v13, v13, 0x1fff

    shl-int v13, v13, v17

    or-int/2addr v15, v13

    add-int/lit8 v17, v17, 0xd

    move/from16 v13, v18

    goto :goto_2

    :cond_3
    shl-int v13, v13, v17

    or-int/2addr v15, v13

    move/from16 v13, v18

    :cond_4
    if-nez v15, :cond_5

    move-object v7, v2

    move v2, v8

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move/from16 v17, v6

    goto/16 :goto_10

    :cond_5
    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_7

    and-int/lit16 v13, v13, 0x1fff

    move/from16 v15, v16

    :goto_3
    add-int/lit8 v17, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v14, :cond_6

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v15

    or-int/2addr v13, v2

    add-int/lit8 v15, v15, 0xd

    move/from16 v2, v17

    goto :goto_3

    :cond_6
    shl-int/2addr v2, v15

    or-int/2addr v13, v2

    move/from16 v2, v17

    :cond_7
    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v14, :cond_9

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v17, v16

    :goto_4
    add-int/lit8 v18, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v14, :cond_8

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int/2addr v2, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_4

    :cond_8
    shl-int v15, v15, v17

    or-int/2addr v2, v15

    move/from16 v15, v18

    :cond_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v14, :cond_b

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v17

    move/from16 v17, v16

    :goto_5
    add-int/lit8 v20, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v14, :cond_a

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int/2addr v15, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v20

    goto :goto_5

    :cond_a
    shl-int v3, v3, v17

    or-int/2addr v15, v3

    move/from16 v3, v20

    goto :goto_6

    :cond_b
    move/from16 v3, v17

    :goto_6
    add-int/lit8 v17, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v14, :cond_d

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v4, v17

    move/from16 v17, v16

    :goto_7
    add-int/lit8 v21, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v14, :cond_c

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v17

    or-int/2addr v3, v4

    add-int/lit8 v17, v17, 0xd

    move/from16 v4, v21

    goto :goto_7

    :cond_c
    shl-int v4, v4, v17

    or-int/2addr v3, v4

    move/from16 v4, v21

    goto :goto_8

    :cond_d
    move/from16 v4, v17

    :goto_8
    add-int/lit8 v17, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v14, :cond_f

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v6, v17

    move/from16 v17, v16

    :goto_9
    add-int/lit8 v22, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v14, :cond_e

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v17

    or-int/2addr v4, v6

    add-int/lit8 v17, v17, 0xd

    move/from16 v6, v22

    goto :goto_9

    :cond_e
    shl-int v6, v6, v17

    or-int/2addr v4, v6

    move/from16 v6, v22

    goto :goto_a

    :cond_f
    move/from16 v6, v17

    :goto_a
    add-int/lit8 v17, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v14, :cond_11

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v8, v17

    move/from16 v17, v16

    :goto_b
    add-int/lit8 v23, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v14, :cond_10

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v17

    or-int/2addr v6, v8

    add-int/lit8 v17, v17, 0xd

    move/from16 v8, v23

    goto :goto_b

    :cond_10
    shl-int v8, v8, v17

    or-int/2addr v6, v8

    move/from16 v8, v23

    goto :goto_c

    :cond_11
    move/from16 v8, v17

    :goto_c
    add-int/lit8 v17, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v14, :cond_13

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v5, v17

    move/from16 v17, v16

    :goto_d
    add-int/lit8 v24, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v14, :cond_12

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v17

    or-int/2addr v8, v5

    add-int/lit8 v17, v17, 0xd

    move/from16 v5, v24

    goto :goto_d

    :cond_12
    shl-int v5, v5, v17

    or-int/2addr v8, v5

    move/from16 v5, v24

    goto :goto_e

    :cond_13
    move/from16 v5, v17

    :goto_e
    add-int/lit8 v17, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v14, :cond_15

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v7, v17

    move/from16 v17, v16

    :goto_f
    add-int/lit8 v25, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v14, :cond_14

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v17

    or-int/2addr v5, v7

    add-int/lit8 v17, v17, 0xd

    move/from16 v7, v25

    goto :goto_f

    :cond_14
    shl-int v7, v7, v17

    or-int/2addr v5, v7

    move/from16 v17, v25

    :cond_15
    add-int v7, v5, v6

    add-int/2addr v7, v8

    new-array v7, v7, [I

    mul-int/lit8 v8, v13, 0x2

    add-int/2addr v2, v8

    move v8, v13

    move/from16 v13, v17

    move/from16 v17, v3

    move v3, v2

    move v2, v15

    :goto_10
    sget-object v15, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    mul-int/lit8 v9, v4, 0x3

    new-array v9, v9, [I

    mul-int/2addr v4, v10

    new-array v4, v4, [Ljava/lang/Object;

    add-int/2addr v6, v5

    move/from16 v29, v5

    move/from16 v30, v6

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_11
    if-ge v13, v12, :cond_33

    add-int/lit8 v31, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_17

    and-int/lit16 v13, v13, 0x1fff

    move/from16 v10, v31

    move/from16 v31, v16

    :goto_12
    add-int/lit8 v33, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v14, :cond_16

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v31

    or-int/2addr v13, v10

    add-int/lit8 v31, v31, 0xd

    move/from16 v10, v33

    goto :goto_12

    :cond_16
    shl-int v10, v10, v31

    or-int/2addr v13, v10

    move/from16 v10, v33

    goto :goto_13

    :cond_17
    move/from16 v10, v31

    :goto_13
    add-int/lit8 v31, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v14, :cond_19

    and-int/lit16 v10, v10, 0x1fff

    move/from16 v14, v31

    move/from16 v31, v16

    :goto_14
    add-int/lit8 v33, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v34, v12

    const v12, 0xd800

    if-lt v14, v12, :cond_18

    and-int/lit16 v12, v14, 0x1fff

    shl-int v12, v12, v31

    or-int/2addr v10, v12

    add-int/lit8 v31, v31, 0xd

    move/from16 v14, v33

    move/from16 v12, v34

    goto :goto_14

    :cond_18
    shl-int v12, v14, v31

    or-int/2addr v10, v12

    move/from16 v12, v33

    goto :goto_15

    :cond_19
    move/from16 v34, v12

    move/from16 v12, v31

    :goto_15
    and-int/lit16 v14, v10, 0xff

    move/from16 v31, v6

    and-int/lit16 v6, v10, 0x400

    if-eqz v6, :cond_1a

    add-int/lit8 v6, v27, 0x1

    aput v28, v7, v27

    move/from16 v27, v6

    :cond_1a
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    move/from16 v37, v5

    const/16 v5, 0x33

    if-lt v14, v5, :cond_22

    add-int/lit8 v5, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move/from16 v38, v5

    const v5, 0xd800

    if-lt v12, v5, :cond_1c

    and-int/lit16 v12, v12, 0x1fff

    move/from16 v39, v16

    move/from16 v49, v38

    move/from16 v38, v12

    move/from16 v12, v49

    :goto_16
    add-int/lit8 v40, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_1b

    and-int/lit16 v5, v12, 0x1fff

    shl-int v5, v5, v39

    or-int v38, v38, v5

    add-int/lit8 v39, v39, 0xd

    move/from16 v12, v40

    const v5, 0xd800

    goto :goto_16

    :cond_1b
    shl-int v5, v12, v39

    or-int v12, v38, v5

    move/from16 v5, v40

    goto :goto_17

    :cond_1c
    move/from16 v5, v38

    :goto_17
    move/from16 v38, v5

    add-int/lit8 v5, v14, -0x33

    move/from16 v39, v2

    const/16 v2, 0x9

    if-eq v5, v2, :cond_1f

    const/16 v2, 0x11

    if-ne v5, v2, :cond_1d

    goto :goto_18

    :cond_1d
    const/16 v2, 0xc

    if-ne v5, v2, :cond_1e

    if-nez v19, :cond_1e

    div-int/lit8 v2, v28, 0x3

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/lit8 v5, v3, 0x1

    aget-object v3, v6, v3

    aput-object v3, v4, v2

    move v3, v5

    :cond_1e
    const/4 v5, 0x2

    goto :goto_19

    :cond_1f
    :goto_18
    div-int/lit8 v2, v28, 0x3

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    const/16 v25, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v32, v3, 0x1

    aget-object v3, v6, v3

    aput-object v3, v4, v2

    move/from16 v3, v32

    :goto_19
    mul-int/2addr v12, v5

    aget-object v2, v6, v12

    instance-of v5, v2, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_20

    check-cast v2, Ljava/lang/reflect/Field;

    :goto_1a
    move v5, v3

    goto :goto_1b

    :cond_20
    check-cast v2, Ljava/lang/String;

    invoke-static {v11, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v6, v12

    goto :goto_1a

    :goto_1b
    invoke-virtual {v15, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v12, v12, 0x1

    aget-object v3, v6, v12

    move/from16 v33, v2

    instance-of v2, v3, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_21

    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_1c

    :cond_21
    check-cast v3, Ljava/lang/String;

    invoke-static {v11, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v6, v12

    :goto_1c
    invoke-virtual {v15, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object v3, v1

    move v1, v2

    move/from16 v2, v33

    move/from16 v12, v38

    move-object/from16 v38, v0

    move/from16 v33, v5

    const v0, 0xd800

    const/4 v5, 0x0

    goto/16 :goto_29

    :cond_22
    move/from16 v39, v2

    add-int/lit8 v2, v3, 0x1

    aget-object v5, v6, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v11, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object/from16 v38, v0

    const/16 v0, 0x9

    if-eq v14, v0, :cond_23

    const/16 v0, 0x11

    if-ne v14, v0, :cond_24

    :cond_23
    const/16 v25, 0x1

    const/16 v32, 0x2

    goto/16 :goto_21

    :cond_24
    const/16 v0, 0x1b

    if-eq v14, v0, :cond_25

    const/16 v0, 0x31

    if-ne v14, v0, :cond_26

    :cond_25
    const/16 v25, 0x1

    const/16 v32, 0x2

    goto :goto_20

    :cond_26
    const/16 v0, 0xc

    if-eq v14, v0, :cond_2a

    const/16 v0, 0x1e

    if-eq v14, v0, :cond_2a

    const/16 v0, 0x2c

    if-ne v14, v0, :cond_27

    goto :goto_1e

    :cond_27
    const/16 v0, 0x32

    if-ne v14, v0, :cond_28

    add-int/lit8 v0, v29, 0x1

    aput v28, v7, v29

    div-int/lit8 v29, v28, 0x3

    const/16 v32, 0x2

    mul-int/lit8 v29, v29, 0x2

    add-int/lit8 v33, v3, 0x2

    aget-object v2, v6, v2

    aput-object v2, v4, v29

    and-int/lit16 v2, v10, 0x800

    if-eqz v2, :cond_29

    add-int/lit8 v29, v29, 0x1

    add-int/lit8 v2, v3, 0x3

    aget-object v3, v6, v33

    aput-object v3, v4, v29

    move/from16 v29, v0

    :cond_28
    :goto_1d
    move v0, v2

    goto :goto_22

    :cond_29
    move/from16 v29, v0

    move/from16 v0, v33

    goto :goto_22

    :cond_2a
    :goto_1e
    if-nez v19, :cond_2b

    div-int/lit8 v0, v28, 0x3

    const/16 v32, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/16 v25, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v6, v2

    aput-object v2, v4, v0

    :goto_1f
    move v0, v3

    goto :goto_22

    :cond_2b
    const/16 v25, 0x1

    const/16 v32, 0x2

    goto :goto_1d

    :goto_20
    div-int/lit8 v0, v28, 0x3

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v6, v2

    aput-object v2, v4, v0

    goto :goto_1f

    :goto_21
    div-int/lit8 v0, v28, 0x3

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v4, v0

    goto :goto_1d

    :goto_22
    invoke-virtual {v15, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    and-int/lit16 v3, v10, 0x1000

    const/16 v5, 0x1000

    if-ne v3, v5, :cond_2f

    const/16 v3, 0x11

    if-gt v14, v3, :cond_2f

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v12, 0xd800

    if-lt v5, v12, :cond_2d

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v33, v16

    :goto_23
    add-int/lit8 v35, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v12, :cond_2c

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v33

    or-int/2addr v5, v3

    add-int/lit8 v33, v33, 0xd

    move/from16 v3, v35

    goto :goto_23

    :cond_2c
    shl-int v3, v3, v33

    or-int/2addr v5, v3

    :goto_24
    const/4 v3, 0x2

    goto :goto_25

    :cond_2d
    move/from16 v35, v3

    goto :goto_24

    :goto_25
    mul-int/lit8 v33, v8, 0x2

    div-int/lit8 v3, v5, 0x20

    add-int v3, v3, v33

    aget-object v12, v6, v3

    move/from16 v33, v0

    instance-of v0, v12, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2e

    check-cast v12, Ljava/lang/reflect/Field;

    :goto_26
    move-object v3, v1

    goto :goto_27

    :cond_2e
    check-cast v12, Ljava/lang/String;

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v6, v3

    goto :goto_26

    :goto_27
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v1, v5, 0x20

    move v5, v1

    move/from16 v12, v35

    const/16 v6, 0x12

    move v1, v0

    const v0, 0xd800

    goto :goto_28

    :cond_2f
    move/from16 v33, v0

    move-object v3, v1

    const v0, 0xd800

    const v1, 0xfffff

    const/4 v5, 0x0

    const/16 v6, 0x12

    :goto_28
    if-lt v14, v6, :cond_30

    const/16 v6, 0x31

    if-gt v14, v6, :cond_30

    add-int/lit8 v6, v30, 0x1

    aput v2, v7, v30

    move/from16 v30, v6

    :cond_30
    :goto_29
    add-int/lit8 v6, v28, 0x1

    aput v13, v9, v28

    add-int/lit8 v13, v28, 0x2

    and-int/lit16 v0, v10, 0x200

    if-eqz v0, :cond_31

    const/high16 v0, 0x20000000

    goto :goto_2a

    :cond_31
    const/4 v0, 0x0

    :goto_2a
    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_32

    const/high16 v10, 0x10000000

    goto :goto_2b

    :cond_32
    const/4 v10, 0x0

    :goto_2b
    or-int/2addr v0, v10

    shl-int/lit8 v10, v14, 0x14

    or-int/2addr v0, v10

    or-int/2addr v0, v2

    aput v0, v9, v6

    add-int/lit8 v28, v28, 0x3

    shl-int/lit8 v0, v5, 0x14

    or-int/2addr v0, v1

    aput v0, v9, v13

    move-object v1, v3

    move v13, v12

    move/from16 v6, v31

    move/from16 v3, v33

    move/from16 v12, v34

    move/from16 v5, v37

    move-object/from16 v0, v38

    move/from16 v2, v39

    const/4 v10, 0x2

    const v14, 0xd800

    goto/16 :goto_11

    :cond_33
    move-object/from16 v38, v0

    move/from16 v39, v2

    move/from16 v37, v5

    move/from16 v31, v6

    new-instance v0, Landroidx/datastore/preferences/protobuf/MessageSchema;

    const/16 v20, 0x0

    move-object/from16 v1, v38

    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    move-object v13, v0

    move-object v14, v9

    move-object v15, v4

    move/from16 v16, v39

    move-object/from16 v18, v1

    move-object/from16 v21, v7

    move/from16 v22, v37

    move/from16 v23, v31

    move-object/from16 v24, p1

    move-object/from16 v25, p2

    move-object/from16 v26, p3

    move-object/from16 v27, p4

    move-object/from16 v28, p5

    invoke-direct/range {v13 .. v28}, Landroidx/datastore/preferences/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;ZZ[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V

    return-object v0

    :cond_34
    check-cast v0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO3:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    if-ne v3, v1, :cond_35

    const/16 v39, 0x1

    goto :goto_2c

    :cond_35
    const/16 v39, 0x0

    :goto_2c
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->fields:[Landroidx/datastore/preferences/protobuf/FieldInfo;

    array-length v3, v1

    if-nez v3, :cond_36

    const/16 v36, 0x0

    const/16 v37, 0x0

    goto :goto_2d

    :cond_36
    const/4 v3, 0x0

    aget-object v4, v1, v3

    iget v3, v4, Landroidx/datastore/preferences/protobuf/FieldInfo;->fieldNumber:I

    array-length v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v4, v1, v4

    iget v4, v4, Landroidx/datastore/preferences/protobuf/FieldInfo;->fieldNumber:I

    move/from16 v36, v3

    move/from16 v37, v4

    :goto_2d
    array-length v3, v1

    mul-int/lit8 v4, v3, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    mul-int/2addr v3, v5

    new-array v3, v3, [Ljava/lang/Object;

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2e
    if-ge v6, v5, :cond_39

    aget-object v9, v1, v6

    iget-object v10, v9, Landroidx/datastore/preferences/protobuf/FieldInfo;->type:Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType;->MAP:Landroidx/datastore/preferences/protobuf/FieldType;

    if-ne v10, v11, :cond_37

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_37
    invoke-virtual {v10}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v10

    const/16 v11, 0x12

    if-lt v10, v11, :cond_38

    iget-object v9, v9, Landroidx/datastore/preferences/protobuf/FieldInfo;->type:Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v9}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v9

    const/16 v10, 0x31

    if-gt v9, v10, :cond_38

    add-int/lit8 v8, v8, 0x1

    :cond_38
    :goto_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_39
    if-lez v7, :cond_3a

    new-array v6, v7, [I

    goto :goto_30

    :cond_3a
    const/4 v6, 0x0

    :goto_30
    if-lez v8, :cond_3b

    new-array v7, v8, [I

    goto :goto_31

    :cond_3b
    const/4 v7, 0x0

    :goto_31
    iget-object v8, v0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->checkInitialized:[I

    if-nez v8, :cond_3c

    move-object v8, v2

    :cond_3c
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_32
    array-length v14, v1

    if-ge v9, v14, :cond_4c

    aget-object v14, v1, v9

    iget v15, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->fieldNumber:I

    iget-object v5, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->oneof:Landroidx/datastore/preferences/protobuf/OneofInfo;

    if-eqz v5, :cond_3d

    move-object/from16 v16, v1

    iget-object v1, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->type:Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v1

    const/16 v17, 0x33

    add-int/lit8 v1, v1, 0x33

    move/from16 v19, v1

    iget-object v1, v5, Landroidx/datastore/preferences/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    move-object/from16 v26, v2

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v5, Landroidx/datastore/preferences/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    move v5, v1

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    move-object/from16 v27, v0

    const/4 v2, 0x0

    move/from16 v49, v5

    move v5, v1

    move/from16 v1, v19

    move-object/from16 v19, v6

    move/from16 v6, v49

    goto :goto_35

    :cond_3d
    move-object/from16 v16, v1

    move-object/from16 v26, v2

    const/16 v17, 0x33

    iget-object v1, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->type:Landroidx/datastore/preferences/protobuf/FieldType;

    iget-object v2, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v19, v6

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v2, v5

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v5

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldType;->isList()Z

    move-result v6

    if-nez v6, :cond_3f

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldType;->isMap()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_3e

    move v6, v2

    const v1, 0xfffff

    goto :goto_33

    :cond_3e
    move v6, v2

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    :goto_33
    iget v2, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->presenceMask:I

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    move-object/from16 v27, v0

    :goto_34
    move/from16 v49, v5

    move v5, v1

    move/from16 v1, v49

    goto :goto_35

    :cond_3f
    move v6, v2

    iget-object v1, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_40

    move-object/from16 v27, v0

    move v1, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto :goto_35

    :cond_40
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    move-object/from16 v27, v0

    const/4 v2, 0x0

    goto :goto_34

    :goto_35
    iget v0, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->fieldNumber:I

    aput v0, v4, v10

    add-int/lit8 v0, v10, 0x1

    move/from16 v28, v9

    iget-boolean v9, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->enforceUtf8:Z

    move-object/from16 v29, v7

    if-eqz v9, :cond_41

    const/high16 v9, 0x20000000

    goto :goto_36

    :cond_41
    const/4 v9, 0x0

    :goto_36
    iget-boolean v7, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->required:Z

    if-eqz v7, :cond_42

    const/high16 v7, 0x10000000

    goto :goto_37

    :cond_42
    const/4 v7, 0x0

    :goto_37
    or-int/2addr v7, v9

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v1, v7

    or-int/2addr v1, v6

    aput v1, v4, v0

    add-int/lit8 v0, v10, 0x2

    shl-int/lit8 v1, v2, 0x14

    or-int/2addr v1, v5

    aput v1, v4, v0

    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    iget-object v1, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->type:Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_44

    const/4 v1, 0x3

    if-eq v0, v1, :cond_43

    const/4 v1, 0x4

    if-eq v0, v1, :cond_43

    const/4 v0, 0x0

    goto :goto_38

    :cond_43
    iget-object v0, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    goto :goto_38

    :cond_44
    iget-object v0, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_38

    :cond_45
    iget-object v0, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    :goto_38
    iget-object v1, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    if-eqz v1, :cond_47

    div-int/lit8 v2, v10, 0x3

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    aput-object v1, v3, v2

    if-eqz v0, :cond_46

    add-int/lit8 v2, v2, 0x1

    aput-object v0, v3, v2

    :cond_46
    const/4 v2, 0x2

    const/4 v5, 0x1

    goto :goto_39

    :cond_47
    if-eqz v0, :cond_46

    div-int/lit8 v1, v10, 0x3

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    const/4 v5, 0x1

    add-int/2addr v1, v5

    aput-object v0, v3, v1

    :goto_39
    array-length v0, v8

    if-ge v11, v0, :cond_48

    aget v0, v8, v11

    if-ne v0, v15, :cond_48

    add-int/lit8 v0, v11, 0x1

    aput v10, v8, v11

    move v11, v0

    :cond_48
    iget-object v0, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->type:Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->MAP:Landroidx/datastore/preferences/protobuf/FieldType;

    if-ne v0, v1, :cond_4a

    add-int/lit8 v0, v12, 0x1

    aput v10, v19, v12

    move v12, v0

    const/16 v1, 0x12

    :cond_49
    const/16 v6, 0x31

    goto :goto_3a

    :cond_4a
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_49

    iget-object v0, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->type:Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v0

    const/16 v6, 0x31

    if-gt v0, v6, :cond_4b

    add-int/lit8 v0, v13, 0x1

    iget-object v7, v14, Landroidx/datastore/preferences/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v7, v14

    aput v7, v29, v13

    move v13, v0

    :cond_4b
    :goto_3a
    add-int/lit8 v9, v28, 0x1

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v1, v16

    move-object/from16 v6, v19

    move-object/from16 v2, v26

    move-object/from16 v0, v27

    move-object/from16 v7, v29

    goto/16 :goto_32

    :cond_4c
    move-object/from16 v27, v0

    move-object/from16 v26, v2

    move-object/from16 v19, v6

    move-object/from16 v29, v7

    if-nez v19, :cond_4d

    move-object/from16 v6, v26

    goto :goto_3b

    :cond_4d
    move-object/from16 v6, v19

    :goto_3b
    if-nez v29, :cond_4e

    move-object/from16 v2, v26

    goto :goto_3c

    :cond_4e
    move-object/from16 v2, v29

    :goto_3c
    array-length v0, v8

    array-length v1, v6

    add-int/2addr v0, v1

    array-length v1, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, v8

    const/4 v5, 0x0

    invoke-static {v8, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v8

    array-length v7, v6

    invoke-static {v6, v5, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v8

    array-length v7, v6

    add-int/2addr v1, v7

    array-length v7, v2

    invoke-static {v2, v5, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Landroidx/datastore/preferences/protobuf/MessageSchema;

    array-length v2, v8

    array-length v5, v8

    array-length v6, v6

    add-int v43, v5, v6

    move-object/from16 v5, v27

    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    const/16 v40, 0x1

    move-object/from16 v33, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v3

    move-object/from16 v38, v5

    move-object/from16 v41, v0

    move/from16 v42, v2

    move-object/from16 v44, p1

    move-object/from16 v45, p2

    move-object/from16 v46, p3

    move-object/from16 v47, p4

    move-object/from16 v48, p5

    invoke-direct/range {v33 .. v48}, Landroidx/datastore/preferences/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;ZZ[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V

    return-object v1
.end method

.method public static offset(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static oneofIntAt(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static oneofLongAt(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v2, p1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static type(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->output:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {p2, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-ne v9, v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    :goto_1
    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    aget p3, p3, p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    return-void
.end method

.method public final getEnumFieldVerifier(I)V
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public final getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/Schema;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final getSerializedSize(Ljava/lang/Object;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x3f

    iget-boolean v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    iget-boolean v8, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->useCachedSizeField:Z

    const v9, 0xfffff

    iget-object v10, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    const/4 v12, 0x1

    if-eqz v5, :cond_19

    sget-object v5, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v15, v10

    if-ge v13, v15, :cond_18

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v15

    invoke-static {v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v11

    aget v3, v10, v13

    and-int/2addr v15, v9

    move-object/from16 v17, v5

    int-to-long v4, v15

    sget-object v15, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v15}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v15

    if-lt v11, v15, :cond_0

    sget-object v15, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v15}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v15

    if-gt v11, v15, :cond_0

    add-int/lit8 v15, v13, 0x2

    aget v15, v10, v15

    and-int/2addr v15, v9

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    packed-switch v11, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v3

    :goto_2
    add-int/2addr v14, v3

    :cond_1
    :goto_3
    move v12, v13

    move-object/from16 v9, v17

    goto/16 :goto_b

    :pswitch_1
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    shl-long v18, v4, v12

    shr-long/2addr v4, v2

    xor-long v4, v18, v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v4

    :goto_4
    add-int/2addr v4, v3

    add-int/2addr v14, v4

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    shl-int/lit8 v5, v4, 0x1

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v5

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v4

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    invoke-static {v3, v4, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v14

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    invoke-static {v3, v4, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v14

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    goto :goto_4

    :pswitch_6
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    goto :goto_2

    :pswitch_7
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v5, :cond_2

    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v3, v14

    move v14, v3

    goto/16 :goto_3

    :cond_2
    check-cast v4, Ljava/lang/String;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v14

    move v14, v4

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3, v12, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v14

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v4

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v4

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    invoke-static {v3, v4, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v14

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v3, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    invoke-static {v3, v4, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v14

    goto/16 :goto_3

    :pswitch_12
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v7

    check-cast v11, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-virtual {v11, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    sget-object v11, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_3

    const/16 v18, 0x0

    goto :goto_6

    :cond_3
    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_5
    if-ge v15, v11, :cond_4

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-static {v3, v9, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v9

    add-int v18, v9, v18

    add-int/2addr v15, v12

    const v9, 0xfffff

    goto :goto_5

    :cond_4
    :goto_6
    add-int v14, v18, v14

    goto/16 :goto_3

    :pswitch_14
    move-object/from16 v9, v17

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_7

    move/from16 v17, v13

    if-eqz v8, :cond_5

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    :cond_6
    :goto_7
    move/from16 v12, v17

    goto/16 :goto_b

    :cond_7
    move v12, v13

    goto/16 :goto_b

    :pswitch_15
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_8

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto :goto_7

    :pswitch_16
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_9

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_9
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto :goto_7

    :pswitch_17
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_a

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_a
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto :goto_7

    :pswitch_18
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_b

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_b
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto/16 :goto_7

    :pswitch_19
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_c

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_c
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto/16 :goto_7

    :pswitch_1a
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_d

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_d
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto/16 :goto_7

    :pswitch_1b
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_e

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_e
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto/16 :goto_7

    :pswitch_1c
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_f

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_f
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto/16 :goto_7

    :pswitch_1d
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_10

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_10
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto/16 :goto_7

    :pswitch_1e
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_11

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_11
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto/16 :goto_7

    :pswitch_1f
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_12

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_12
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto/16 :goto_7

    :pswitch_20
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_13

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_13
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto/16 :goto_7

    :pswitch_21
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v8, :cond_14

    int-to-long v12, v15

    invoke-virtual {v9, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_14
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v3, v4, v14}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v14

    goto/16 :goto_7

    :pswitch_22
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;)I

    move-result v3

    :goto_8
    add-int/2addr v14, v3

    goto/16 :goto_7

    :pswitch_23
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;)I

    move-result v3

    goto :goto_8

    :pswitch_24
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v3

    goto :goto_8

    :pswitch_25
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v3

    goto :goto_8

    :pswitch_26
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;)I

    move-result v3

    goto :goto_8

    :pswitch_27
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;)I

    move-result v3

    goto :goto_8

    :pswitch_28
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v3

    goto :goto_8

    :pswitch_29
    move-object/from16 v9, v17

    move/from16 v17, v13

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move/from16 v12, v17

    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v3

    :goto_9
    add-int/2addr v14, v3

    goto/16 :goto_b

    :pswitch_2a
    move v12, v13

    move-object/from16 v9, v17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v3

    goto :goto_9

    :pswitch_2b
    move v12, v13

    move-object/from16 v9, v17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_15

    const/4 v3, 0x0

    goto :goto_9

    :cond_15
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    mul-int/2addr v3, v4

    goto :goto_9

    :pswitch_2c
    move v12, v13

    move-object/from16 v9, v17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v3

    goto :goto_9

    :pswitch_2d
    move v12, v13

    move-object/from16 v9, v17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v3

    goto :goto_9

    :pswitch_2e
    move v12, v13

    move-object/from16 v9, v17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;)I

    move-result v3

    goto :goto_9

    :pswitch_2f
    move v12, v13

    move-object/from16 v9, v17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;)I

    move-result v3

    goto :goto_9

    :pswitch_30
    move v12, v13

    move-object/from16 v9, v17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;)I

    move-result v3

    goto :goto_9

    :pswitch_31
    move v12, v13

    move-object/from16 v9, v17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v3

    goto :goto_9

    :pswitch_32
    move v12, v13

    move-object/from16 v9, v17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_9

    :pswitch_33
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_9

    :pswitch_34
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    const/4 v11, 0x1

    shl-long v17, v4, v11

    shr-long/2addr v4, v2

    xor-long v4, v17, v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v4

    :goto_a
    add-int/2addr v4, v3

    add-int/2addr v14, v4

    goto/16 :goto_b

    :pswitch_35
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    const/4 v5, 0x1

    shl-int/lit8 v13, v4, 0x1

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v13

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v4

    goto :goto_a

    :pswitch_36
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v4, 0x8

    invoke-static {v3, v4, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v14

    goto/16 :goto_b

    :pswitch_37
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x4

    invoke-static {v3, v4, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v14

    goto/16 :goto_b

    :pswitch_38
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    goto :goto_a

    :pswitch_39
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    goto/16 :goto_9

    :pswitch_3a
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_9

    :pswitch_3b
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_9

    :pswitch_3c
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v5, :cond_16

    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v3, v14

    move v14, v3

    goto/16 :goto_b

    :cond_16
    check-cast v4, Ljava/lang/String;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v14

    move v14, v4

    goto/16 :goto_b

    :pswitch_3d
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    invoke-static {v3, v4, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v14

    goto/16 :goto_b

    :pswitch_3e
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(I)I

    move-result v3

    goto/16 :goto_9

    :pswitch_3f
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(I)I

    move-result v3

    goto/16 :goto_9

    :pswitch_40
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_41
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v4

    goto/16 :goto_a

    :pswitch_42
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v4

    goto/16 :goto_a

    :pswitch_43
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x4

    invoke-static {v3, v4, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v14

    goto :goto_b

    :pswitch_44
    move v12, v13

    move-object/from16 v9, v17

    invoke-virtual {v0, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v4, 0x8

    invoke-static {v3, v4, v14}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v14

    :cond_17
    :goto_b
    add-int/lit8 v13, v12, 0x3

    move-object v5, v9

    const v9, 0xfffff

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v6, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v14

    goto/16 :goto_26

    :cond_19
    sget-object v3, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v9, 0xfffff

    const/4 v12, 0x0

    :goto_c
    array-length v13, v10

    if-ge v4, v13, :cond_35

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v13

    aget v14, v10, v4

    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v15

    const/16 v11, 0x11

    if-gt v15, v11, :cond_1b

    add-int/lit8 v11, v4, 0x2

    aget v18, v10, v11

    const v11, 0xfffff

    and-int v2, v18, v11

    ushr-int/lit8 v11, v18, 0x14

    const/16 v17, 0x1

    shl-int v21, v17, v11

    if-eq v2, v9, :cond_1a

    int-to-long v11, v2

    invoke-virtual {v3, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v9, v2

    :cond_1a
    move/from16 v2, v18

    const v18, 0xfffff

    goto :goto_e

    :cond_1b
    if-eqz v8, :cond_1c

    sget-object v2, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v2

    if-lt v15, v2, :cond_1c

    sget-object v2, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v2

    if-gt v15, v2, :cond_1c

    add-int/lit8 v2, v4, 0x2

    aget v2, v10, v2

    const v18, 0xfffff

    and-int v2, v2, v18

    :goto_d
    const/16 v21, 0x0

    goto :goto_e

    :cond_1c
    const v18, 0xfffff

    const/4 v2, 0x0

    goto :goto_d

    :goto_e
    and-int v11, v13, v18

    move/from16 v20, v9

    move-object v13, v10

    int-to-long v9, v11

    packed-switch v15, :pswitch_data_1

    goto :goto_10

    :pswitch_45
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-static {v14, v2, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v2

    :goto_f
    add-int/2addr v5, v2

    :cond_1d
    :goto_10
    move v15, v12

    :cond_1e
    :goto_11
    const/4 v2, 0x4

    :goto_12
    const/16 v9, 0x8

    :goto_13
    const/16 v12, 0x3f

    goto/16 :goto_23

    :pswitch_46
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    const/4 v11, 0x1

    shl-long v14, v9, v11

    const/16 v17, 0x3f

    shr-long v9, v9, v17

    xor-long/2addr v9, v14

    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v9

    :goto_14
    add-int/2addr v9, v2

    add-int/2addr v5, v9

    goto :goto_10

    :pswitch_47
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    const/4 v10, 0x1

    shl-int/lit8 v14, v2, 0x1

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v14

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v2

    :goto_15
    add-int/2addr v2, v9

    goto :goto_f

    :pswitch_48
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v2, 0x8

    invoke-static {v14, v2, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    :goto_16
    move v9, v2

    move v15, v12

    const/4 v2, 0x4

    goto :goto_13

    :pswitch_49
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x4

    invoke-static {v14, v2, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    :goto_17
    move v15, v12

    goto :goto_12

    :pswitch_4a
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    goto :goto_15

    :pswitch_4b
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    goto :goto_f

    :pswitch_4c
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v2

    goto/16 :goto_f

    :pswitch_4d
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-static {v14, v2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v2

    goto/16 :goto_f

    :pswitch_4e
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v9, v2, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v9, :cond_1f

    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v2

    :goto_18
    add-int/2addr v2, v5

    move v5, v2

    goto/16 :goto_10

    :cond_1f
    check-cast v2, Ljava/lang/String;

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v9

    goto :goto_18

    :pswitch_4f
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    invoke-static {v14, v2, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto/16 :goto_10

    :pswitch_50
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(I)I

    move-result v2

    goto/16 :goto_f

    :pswitch_51
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(I)I

    move-result v2

    goto/16 :goto_f

    :pswitch_52
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    goto/16 :goto_15

    :pswitch_53
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v9

    goto/16 :goto_14

    :pswitch_54
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v9

    goto/16 :goto_14

    :pswitch_55
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x4

    invoke-static {v14, v2, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto/16 :goto_17

    :pswitch_56
    invoke-virtual {v0, v14, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v2, 0x8

    invoke-static {v14, v2, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto/16 :goto_16

    :pswitch_57
    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v7

    check-cast v10, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-virtual {v10, v14, v2, v9}, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_f

    :pswitch_58
    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_20

    const/16 v17, 0x0

    goto :goto_1a

    :cond_20
    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_19
    if-ge v15, v10, :cond_21

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v11, v21

    check-cast v11, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-static {v14, v11, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v11

    add-int v17, v11, v17

    const/4 v11, 0x1

    add-int/2addr v15, v11

    goto :goto_19

    :cond_21
    :goto_1a
    add-int v5, v17, v5

    goto/16 :goto_10

    :pswitch_59
    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1d

    move v15, v12

    if-eqz v8, :cond_22

    int-to-long v11, v2

    invoke-virtual {v3, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_22
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_5a
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_23

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_23
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_5b
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_24

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_24
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_5c
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_25

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_25
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_5d
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_26

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_26
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_5e
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_27

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_27
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_5f
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_28

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_28
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_60
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_29

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_29
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_61
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_2a

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2a
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_62
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_2b

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2b
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_63
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_2c

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2c
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_64
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_2d

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2d
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_65
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_2e

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2e
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_66
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_1e

    if-eqz v8, :cond_2f

    int-to-long v10, v2

    invoke-virtual {v3, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2f
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v2, v9, v5}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v5

    goto/16 :goto_11

    :pswitch_67
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;)I

    move-result v2

    :goto_1b
    add-int/2addr v5, v2

    goto/16 :goto_11

    :pswitch_68
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;)I

    move-result v2

    goto :goto_1b

    :pswitch_69
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v2

    goto :goto_1b

    :pswitch_6a
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v2

    goto :goto_1b

    :pswitch_6b
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;)I

    move-result v2

    goto :goto_1b

    :pswitch_6c
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;)I

    move-result v2

    goto :goto_1b

    :pswitch_6d
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v2

    goto :goto_1b

    :pswitch_6e
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-static {v14, v2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v2

    goto :goto_1b

    :pswitch_6f
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v2

    goto :goto_1b

    :pswitch_70
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v9, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_30

    const/4 v9, 0x0

    goto :goto_1c

    :cond_30
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    mul-int/2addr v9, v2

    :goto_1c
    add-int/2addr v5, v9

    goto/16 :goto_11

    :pswitch_71
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_72
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_73
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_74
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_75
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_76
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_77
    move v15, v12

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_78
    move v15, v12

    and-int v2, v15, v21

    if-eqz v2, :cond_1e

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-static {v14, v2, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_79
    move v15, v12

    and-int v2, v15, v21

    if-eqz v2, :cond_33

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    const/4 v11, 0x1

    shl-long v21, v9, v11

    const/16 v12, 0x3f

    shr-long/2addr v9, v12

    xor-long v9, v21, v9

    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v9

    :goto_1d
    add-int/2addr v9, v2

    add-int/2addr v5, v9

    :cond_31
    :goto_1e
    const/4 v2, 0x4

    :cond_32
    :goto_1f
    const/16 v9, 0x8

    goto/16 :goto_23

    :cond_33
    const/16 v12, 0x3f

    goto :goto_1e

    :pswitch_7a
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    const/4 v10, 0x1

    shl-int/lit8 v14, v2, 0x1

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v14

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v2

    :goto_20
    add-int/2addr v2, v9

    :goto_21
    add-int/2addr v5, v2

    goto :goto_1e

    :pswitch_7b
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    const/16 v2, 0x8

    invoke-static {v14, v2, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    move v9, v2

    const/4 v2, 0x4

    goto/16 :goto_23

    :pswitch_7c
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    const/4 v2, 0x4

    invoke-static {v14, v2, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto :goto_1f

    :pswitch_7d
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    goto :goto_20

    :pswitch_7e
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    goto :goto_21

    :pswitch_7f
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v2

    goto :goto_21

    :pswitch_80
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-static {v14, v2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v2

    goto :goto_21

    :pswitch_81
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v9, v2, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v9, :cond_34

    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v14, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v2

    :goto_22
    add-int/2addr v2, v5

    move v5, v2

    goto/16 :goto_1e

    :cond_34
    check-cast v2, Ljava/lang/String;

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v9

    goto :goto_22

    :pswitch_82
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    invoke-static {v14, v2, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto/16 :goto_1e

    :pswitch_83
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(I)I

    move-result v2

    goto/16 :goto_21

    :pswitch_84
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(I)I

    move-result v2

    goto/16 :goto_21

    :pswitch_85
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    goto/16 :goto_20

    :pswitch_86
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_87
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    invoke-virtual {v3, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_88
    move v15, v12

    const/16 v12, 0x3f

    and-int v2, v15, v21

    if-eqz v2, :cond_31

    const/4 v2, 0x4

    invoke-static {v14, v2, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    goto/16 :goto_1f

    :pswitch_89
    move v15, v12

    const/4 v2, 0x4

    const/16 v12, 0x3f

    and-int v9, v15, v21

    if-eqz v9, :cond_32

    const/16 v9, 0x8

    invoke-static {v14, v9, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    :goto_23
    add-int/lit8 v4, v4, 0x3

    move v2, v12

    move-object v10, v13

    move v12, v15

    move/from16 v9, v20

    goto/16 :goto_c

    :cond_35
    invoke-virtual {v6, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v5

    iget-boolean v3, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v3, :cond_38

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v16, 0x0

    :goto_24
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/FieldSet;->fields:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_36

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/datastore/preferences/protobuf/FieldSet;->computeFieldSize(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)I

    move-result v3

    add-int v16, v3, v16

    const/4 v4, 0x1

    add-int/2addr v1, v4

    goto :goto_24

    :cond_36
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/datastore/preferences/protobuf/FieldSet;->computeFieldSize(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;)I

    move-result v1

    add-int v16, v1, v16

    goto :goto_25

    :cond_37
    add-int v2, v2, v16

    :cond_38
    move v0, v2

    :goto_26
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 11

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->fields:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method public final isFieldPresent(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_11

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move v5, v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    move v5, v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    move v5, v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    move v5, v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    move v5, v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    move v5, v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :pswitch_8
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    move v5, v6

    :cond_7
    return v5

    :pswitch_9
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_8
    instance-of p1, p0, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz p1, :cond_9

    sget-object p1, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_a

    move v5, v6

    :cond_a
    return v5

    :pswitch_c
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_b

    move v5, v6

    :cond_b
    return v5

    :pswitch_d
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_c

    move v5, v6

    :cond_c
    return v5

    :pswitch_e
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_d

    move v5, v6

    :cond_d
    return v5

    :pswitch_f
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    move v5, v6

    :cond_e
    return v5

    :pswitch_10
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_f

    move v5, v6

    :cond_f
    return v5

    :pswitch_11
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    move v5, v6

    :cond_10
    return v5

    :cond_11
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    move v5, v6

    :cond_12
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
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

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_12

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    aget v5, v5, v2

    iget-object v7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_4

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v5, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v7

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    if-nez v10, :cond_4

    return v1

    :cond_4
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_e

    const/16 v11, 0x11

    if-eq v10, v11, :cond_e

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_b

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_a

    const/16 v6, 0x44

    if-eq v10, v6, :cond_a

    const/16 v6, 0x31

    if-eq v10, v6, :cond_b

    const/16 v6, 0x32

    if-eq v10, v6, :cond_5

    goto/16 :goto_4

    :cond_5
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    check-cast v7, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/MapEntryLite;->metadata:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->getJavaType()Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    move-result-object v5

    sget-object v7, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    if-eq v5, v7, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_9

    sget-object v6, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v6

    :cond_9
    invoke-interface {v6, v7}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    return v1

    :cond_a
    invoke-virtual {p0, v8, v5, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    return v1

    :cond_b
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    move v7, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_11

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    return v1

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_e
    if-ne v3, v0, :cond_f

    invoke-virtual {p0, v5, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_f
    and-int/2addr v7, v4

    if-eqz v7, :cond_10

    goto :goto_3

    :cond_10
    move v6, v1

    :goto_3
    if-eqz v6, :cond_11

    invoke-virtual {p0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    return v1

    :cond_11
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_12
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_13

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_13

    return v1

    :cond_13
    return v6
.end method

.method public final isOneofPresent(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p3, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    iput v1, v0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->memoizedHashCode:I

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->markImmutable()V

    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    int-to-long v4, v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_2

    const/16 v6, 0x44

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v3, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    check-cast v7, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v6

    check-cast v7, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->makeImmutable()V

    invoke-virtual {v3, p1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    invoke-virtual {v3, p1, v4, v5}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->makeImmutableListAt(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_2
    aget v3, v0, v1

    invoke-virtual {p0, v3, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v3

    sget-object v6, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/datastore/preferences/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v3

    sget-object v6, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/datastore/preferences/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeFromHelper(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Mutating immutable message: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    aget v1, v1, v0

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    check-cast v3, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-virtual {v3, v1, v2}, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    invoke-virtual {v1, v6, v7, p1, p2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mergeListsAt(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    sget-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->mergeExtensions(Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Mutating immutable message: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFromHelper(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    iget-object v12, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    iget v13, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    iget v14, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v7, 0x0

    const/16 v16, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v1

    invoke-virtual {v8, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_b

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    :goto_1
    if-ge v14, v13, :cond_1

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v9, v10, v7}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-boolean v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v2, :cond_4

    move-object/from16 v6, p2

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    move-object/from16 v6, p2

    invoke-virtual {v6, v11, v2, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->findExtensionByNumber(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/MessageLite;I)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v1

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_6

    if-nez v16, :cond_5

    invoke-virtual/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v1

    move-object/from16 v16, v1

    :cond_5
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object/from16 v5, v16

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->parseExtension(Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_7

    invoke-virtual {v9, v10}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v7

    :cond_7
    invoke-virtual {v9, v7, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    :goto_3
    if-ge v14, v13, :cond_9

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v9, v10, v7}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_b
    :try_start_2
    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v2
    :try_end_3
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x3

    const v17, 0xfffff

    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    iget-object v15, v8, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    packed-switch v2, :pswitch_data_0

    if-nez v7, :cond_c

    :try_start_4
    invoke-virtual {v9, v10}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v7

    :cond_c
    invoke-virtual {v9, v7, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;)Z

    move-result v1
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_0

    :goto_4
    if-ge v14, v13, :cond_d

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v9, v10, v7}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void

    :pswitch_0
    :try_start_5
    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v3
    :try_end_5
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v0, v2, v3, v11}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    sget-object v3, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4
    :try_end_6
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    and-int v4, v4, v17

    move-object/from16 v22, v7

    int-to-long v6, v4

    :try_start_7
    invoke-virtual {v3, v10, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    :goto_5
    move-object/from16 v7, v22

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v22, v7

    :goto_6
    move-object/from16 v7, v22

    goto/16 :goto_b

    :catch_0
    move-object/from16 v22, v7

    :catch_1
    move-object/from16 v7, v22

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v22, v7

    goto/16 :goto_b

    :catch_2
    move-object/from16 v22, v7

    goto/16 :goto_9

    :pswitch_1
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :pswitch_2
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_5

    :pswitch_3
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-object/from16 v22, v7

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v10, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_6
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_7
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_8
    move-object/from16 v22, v7

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v0, v2, v3, v11}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    sget-object v3, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    and-int v4, v4, v17

    int-to-long v6, v4

    invoke-virtual {v3, v10, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_9
    move-object/from16 v22, v7

    invoke-virtual {v8, v10, v3, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_a
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_b
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_c
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_d
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_e
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_f
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_10
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_11
    move-object/from16 v22, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_12
    move-object/from16 v22, v7

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v5

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;)V
    :try_end_7
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_5

    :pswitch_13
    move-object/from16 v22, v7

    :try_start_8
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v6
    :try_end_8
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move-object/from16 v15, v22

    move-object/from16 v7, p5

    :try_start_9
    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    :try_end_9
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v7, v15

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :goto_7
    move-object v7, v15

    goto/16 :goto_b

    :catch_3
    :goto_8
    move-object v7, v15

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    move-object/from16 v15, v22

    goto :goto_7

    :catch_4
    move-object/from16 v15, v22

    goto :goto_8

    :pswitch_14
    :try_start_a
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSFixed32List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v15, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readEnumList(Ljava/util/List;)V

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    invoke-static {v10, v1, v2, v7, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_19
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSFixed32List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v15, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readEnumList(Ljava/util/List;)V

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    invoke-static {v10, v1, v2, v7, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_27
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBytesList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {v8, v10, v3, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;)V

    goto/16 :goto_0

    :pswitch_2b
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v15, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v2

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v0, v1, v2, v11}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    and-int v3, v3, v17

    int-to-long v3, v3

    invoke-virtual {v2, v10, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_34
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_35
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt32()I

    move-result v3

    invoke-static {v3, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_36
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_37
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed32()I

    move-result v3

    invoke-static {v3, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_39
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    invoke-static {v3, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3a
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v3

    invoke-static {v1, v2, v10, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v0, v1, v2, v11}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v8, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    and-int v3, v3, v17

    int-to-long v3, v3

    invoke-virtual {v2, v10, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual {v8, v10, v3, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3d
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3e
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed32()I

    move-result v3

    invoke-static {v3, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3f
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_40
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-static {v3, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_41
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_42
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_43
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    invoke-virtual {v8, v5, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_44
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    move-result-wide v18

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v20

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    move-object/from16 v2, p3

    move-wide/from16 v3, v18

    move v15, v5

    move-wide/from16 v5, v20

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    invoke-virtual {v8, v15, v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V
    :try_end_a
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catch_5
    :goto_9
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_f

    invoke-virtual {v9, v10}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v1

    move-object v7, v1

    :cond_f
    invoke-virtual {v9, v7, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v1, :cond_0

    :goto_a
    if-ge v14, v13, :cond_10

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v9, v10, v7}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    return-void

    :goto_b
    if-ge v14, v13, :cond_12

    aget v1, v12, v14

    invoke-virtual {v8, v1, v10, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_12
    if-eqz v7, :cond_13

    invoke-virtual {v9, v10, v7}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method public final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;)V
    .locals 8

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    if-nez p2, :cond_0

    move-object p2, p0

    check-cast p2, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/datastore/preferences/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Landroidx/datastore/preferences/protobuf/MapFieldLite;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->mutableCopy()Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v3, p0

    check-cast v3, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p2

    check-cast v4, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->isMutable()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/datastore/preferences/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Landroidx/datastore/preferences/protobuf/MapFieldLite;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->mutableCopy()Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    invoke-static {v0, v1, p1, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v4

    :cond_1
    :goto_0
    check-cast p0, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    iget-object p0, p3, Landroidx/datastore/preferences/protobuf/MapEntryLite;->metadata:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    const/4 p1, 0x2

    invoke-virtual {p5, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p3, p5, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v4, v3

    :goto_1
    :try_start_0
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_7

    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "Unable to parse map entry."

    if-eq v5, v2, :cond_5

    if-eq v5, p1, :cond_4

    :try_start_1
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v5, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-direct {v5, v6}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p5, v5, v7, p4}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readField(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_5
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v7, 0x0

    invoke-virtual {p5, v5, v7, v7}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readField(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-direct {p0, v6}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {p2, v1, v4}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->popLimit(I)V

    return-void

    :goto_3
    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->popLimit(I)V

    throw p0
.end method

.method public final mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    aget v1, v0, p1

    invoke-virtual {p0, v1, p1, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v5}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v1, p0

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    check-cast v0, Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->newMutableInstance$1()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public final positionForFieldNumber(I)I
    .locals 6

    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->minFieldNumber:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_2

    add-int v3, v0, v2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, p0, v4

    if-ne p1, v5, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final readGroupList(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    iget p1, p4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p2, p1, 0x7

    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    :cond_0
    invoke-interface {p5}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-virtual {p4, p2, p5, p6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p5, p2}, Landroidx/datastore/preferences/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p3

    if-nez p3, :cond_2

    iget p3, p4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result p2

    if-eq p2, p1, :cond_0

    iput p2, p4, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final readMessageList(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    invoke-virtual {p0, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    iget p1, p3, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    and-int/lit8 p2, p1, 0x7

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :cond_0
    invoke-interface {p4}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-virtual {p3, p2, p4, p5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p4, p2}, Landroidx/datastore/preferences/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p3, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p3, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result p2

    if-eq p2, p1, :cond_0

    iput p2, p3, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final readString(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;)V
    .locals 4

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    const v2, 0xfffff

    if-eqz v0, :cond_1

    and-int p0, p2, v2

    int-to-long v2, p0

    invoke-virtual {p3, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p0, p3, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p1, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->lite:Z

    if-eqz p0, :cond_2

    and-int p0, p2, v2

    int-to-long v2, p0

    invoke-virtual {p3, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object p0, p3, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p1, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    and-int p0, p2, v2

    int-to-long v0, p0

    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final readStringList(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/CodedInputStreamReader;)V
    .locals 4

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v3, 0xfffff

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    if-eqz v0, :cond_1

    and-int/2addr p2, v3

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    goto :goto_1

    :cond_1
    and-int/2addr p2, v3

    int-to-long v2, p2

    invoke-virtual {p0, p1, v2, v3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    :goto_1
    return-void
.end method

.method public final setFieldPresent(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    const/4 p1, 0x1

    shl-int p0, p1, p0

    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    return-void
.end method

.method public final setOneofPresent(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    return-void
.end method

.method public final typeAndOffsetAt(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    aget p0, p0, p1

    return p0
.end method

.method public final writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    if-eqz v3, :cond_0

    invoke-virtual {v4, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v3

    iget-object v6, v3, Landroidx/datastore/preferences/protobuf/FieldSet;->fields:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v8, v7

    sget-object v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const v13, 0xfffff

    const/4 v14, 0x0

    :goto_1
    if-ge v12, v8, :cond_8

    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v15

    aget v5, v7, v12

    invoke-static {v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v11

    const/16 v10, 0x11

    move-object/from16 v17, v6

    if-gt v11, v10, :cond_2

    add-int/lit8 v10, v12, 0x2

    aget v10, v7, v10

    const v16, 0xfffff

    and-int v6, v10, v16

    if-eq v6, v13, :cond_1

    int-to-long v13, v6

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v14

    move v13, v6

    :cond_1
    ushr-int/lit8 v6, v10, 0x14

    const/4 v10, 0x1

    shl-int v6, v10, v6

    move v10, v6

    move-object/from16 v6, v17

    goto :goto_2

    :cond_2
    move-object/from16 v6, v17

    const/4 v10, 0x0

    :goto_2
    move/from16 v18, v8

    if-eqz v6, :cond_4

    invoke-virtual {v4, v6}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v5, :cond_4

    invoke-virtual {v4, v2, v6}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    move/from16 v8, v18

    goto :goto_2

    :cond_4
    const v8, 0xfffff

    and-int/2addr v15, v8

    move-object/from16 v16, v9

    int-to-long v8, v15

    packed-switch v11, :pswitch_data_0

    :cond_5
    move-object/from16 v11, v16

    :cond_6
    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object/from16 v11, v16

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto :goto_4

    :pswitch_1
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    goto :goto_4

    :pswitch_2
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    goto :goto_4

    :pswitch_3
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    goto :goto_4

    :pswitch_4
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    goto :goto_4

    :pswitch_5
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    goto :goto_4

    :pswitch_6
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    goto :goto_4

    :pswitch_7
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_9
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_a
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    goto/16 :goto_4

    :pswitch_b
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    goto/16 :goto_4

    :pswitch_c
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    goto/16 :goto_4

    :pswitch_d
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    goto/16 :goto_4

    :pswitch_e
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    goto/16 :goto_4

    :pswitch_f
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    goto/16 :goto_4

    :pswitch_10
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2, v8, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    goto/16 :goto_4

    :pswitch_11
    move-object/from16 v11, v16

    invoke-virtual {v0, v5, v12, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v2, v8, v9, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    goto/16 :goto_4

    :pswitch_12
    move-object/from16 v11, v16

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v2, v5, v8, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeMapHelper(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_13
    move-object/from16 v11, v16

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-static {v5, v8, v2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_14
    move-object/from16 v11, v16

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_15
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_16
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_17
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_18
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_19
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1a
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1b
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1c
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1d
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1e
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1f
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_20
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_21
    move-object/from16 v11, v16

    const/4 v10, 0x1

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_22
    move-object/from16 v11, v16

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    :goto_5
    move v15, v10

    goto/16 :goto_6

    :pswitch_23
    move-object/from16 v11, v16

    const/4 v10, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_5

    :pswitch_24
    move-object/from16 v11, v16

    const/4 v10, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_5

    :pswitch_25
    move-object/from16 v11, v16

    const/4 v10, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_5

    :pswitch_26
    move-object/from16 v11, v16

    const/4 v10, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_5

    :pswitch_27
    move-object/from16 v11, v16

    const/4 v10, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_5

    :pswitch_28
    move-object/from16 v11, v16

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_29
    move-object/from16 v11, v16

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-static {v5, v8, v2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_2a
    move-object/from16 v11, v16

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_2b
    move-object/from16 v11, v16

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v5, v8, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_6

    :pswitch_2c
    move-object/from16 v11, v16

    const/4 v15, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_6

    :pswitch_2d
    move-object/from16 v11, v16

    const/4 v15, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_6

    :pswitch_2e
    move-object/from16 v11, v16

    const/4 v15, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_6

    :pswitch_2f
    move-object/from16 v11, v16

    const/4 v15, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_6

    :pswitch_30
    move-object/from16 v11, v16

    const/4 v15, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_6

    :pswitch_31
    move-object/from16 v11, v16

    const/4 v15, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_6

    :pswitch_32
    move-object/from16 v11, v16

    const/4 v15, 0x0

    aget v5, v7, v12

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v5, v8, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_6

    :pswitch_33
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_6

    :pswitch_34
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    goto/16 :goto_6

    :pswitch_35
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    goto/16 :goto_6

    :pswitch_36
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    goto/16 :goto_6

    :pswitch_37
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    goto/16 :goto_6

    :pswitch_38
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    goto/16 :goto_6

    :pswitch_39
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    goto/16 :goto_6

    :pswitch_3a
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_6

    :pswitch_3b
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v9

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_6

    :pswitch_3c
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_6

    :pswitch_3d
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    sget-object v10, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    goto/16 :goto_6

    :pswitch_3e
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    goto :goto_6

    :pswitch_3f
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    goto :goto_6

    :pswitch_40
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    goto :goto_6

    :pswitch_41
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    goto :goto_6

    :pswitch_42
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    goto :goto_6

    :pswitch_43
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    sget-object v10, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v8

    invoke-virtual {v2, v8, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    goto :goto_6

    :pswitch_44
    move-object/from16 v11, v16

    const/4 v15, 0x0

    and-int/2addr v10, v14

    if-eqz v10, :cond_7

    sget-object v10, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v1, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    :cond_7
    :goto_6
    add-int/lit8 v12, v12, 0x3

    move-object v9, v11

    move/from16 v8, v18

    goto/16 :goto_1

    :cond_8
    move-object/from16 v17, v6

    :goto_7
    if-eqz v6, :cond_a

    invoke-virtual {v4, v2, v6}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v6, v5

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method public final writeMapHelper(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p4

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    check-cast p0, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    iget-object p4, p4, Landroidx/datastore/preferences/protobuf/MapEntryLite;->metadata:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->output:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4, v0, v1}, Landroidx/datastore/preferences/protobuf/MapEntryLite;->computeSerializedSize(Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    iget-object v1, p4, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/FieldSet;->writeElement(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    iget-object v0, p4, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/FieldSet;->writeElement(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->ASCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    sget-object v4, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->DESCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->extensionSchema:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    iget-boolean v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->hasExtensions:Z

    iget-object v8, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    const/4 v9, 0x0

    const v10, 0xfffff

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v3, v4, :cond_9

    invoke-virtual {v8, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v3

    invoke-virtual {v8, v3, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    if-eqz v7, :cond_3

    invoke-virtual {v6, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v3

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/FieldSet;->fields:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v3, Landroidx/datastore/preferences/protobuf/FieldSet;->hasLazyField:Z

    iget-object v3, v3, Landroidx/datastore/preferences/protobuf/FieldSet;->fields:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    if-eqz v4, :cond_1

    new-instance v4, Landroidx/datastore/preferences/protobuf/LazyField$LazyIterator;

    iget-object v7, v3, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    if-nez v7, :cond_0

    new-instance v7, Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-direct {v7, v3, v9}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Landroidx/datastore/preferences/protobuf/SmallSortedMap;Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;)V

    iput-object v7, v3, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    :cond_0
    iget-object v3, v3, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v4, v3}, Landroidx/datastore/preferences/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_1
    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    if-nez v4, :cond_2

    new-instance v4, Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-direct {v4, v3, v9}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Landroidx/datastore/preferences/protobuf/SmallSortedMap;Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;)V

    iput-object v4, v3, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    :cond_2
    iget-object v3, v3, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_3
    move-object v3, v9

    move-object v4, v3

    :goto_1
    array-length v7, v5

    add-int/lit8 v7, v7, -0x3

    :goto_2
    if-ltz v7, :cond_7

    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v8

    aget v13, v5, v7

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v6, v3}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v14

    if-le v14, v13, :cond_5

    invoke-virtual {v6, v2, v3}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_4
    move-object v3, v9

    goto :goto_3

    :cond_5
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    invoke-virtual {v2, v13, v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-virtual {v2, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-virtual {v2, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    goto/16 :goto_4

    :pswitch_5
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    invoke-virtual {v2, v13, v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v13, v8, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    goto/16 :goto_4

    :pswitch_c
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-virtual {v2, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    goto/16 :goto_4

    :pswitch_d
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-virtual {v2, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-virtual {v2, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2, v8, v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    goto/16 :goto_4

    :pswitch_11
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v2, v14, v15, v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    goto/16 :goto_4

    :pswitch_12
    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v2, v13, v8, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeMapHelper(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_13
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    invoke-static {v13, v8, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_14
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_15
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_16
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_17
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_18
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_19
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1a
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1b
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1c
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1d
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1e
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_1f
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_20
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_21
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_22
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_23
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_24
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_25
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_26
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_27
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_28
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_29
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    invoke-static {v13, v8, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_2a
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_2b
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_2c
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_2d
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_2e
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_2f
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_30
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_31
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_32
    aget v13, v5, v7

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v13, v8, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    invoke-virtual {v2, v13, v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_34
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-virtual {v2, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    goto/16 :goto_4

    :pswitch_35
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    goto/16 :goto_4

    :pswitch_36
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-virtual {v2, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    goto/16 :goto_4

    :pswitch_37
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    goto/16 :goto_4

    :pswitch_38
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    goto/16 :goto_4

    :pswitch_39
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    goto/16 :goto_4

    :pswitch_3a
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_3b
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    invoke-virtual {v2, v13, v8, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_3c
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v13, v8, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_4

    :pswitch_3d
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    sget-object v8, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v8, v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    goto :goto_4

    :pswitch_3f
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-virtual {v2, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    goto :goto_4

    :pswitch_40
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v13, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    goto :goto_4

    :pswitch_41
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-virtual {v2, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    goto :goto_4

    :pswitch_42
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-virtual {v2, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    goto :goto_4

    :pswitch_43
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    sget-object v8, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v8, v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v8

    invoke-virtual {v2, v8, v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    goto :goto_4

    :pswitch_44
    invoke-virtual {v0, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/2addr v8, v10

    int-to-long v14, v8

    sget-object v8, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v8, v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v14

    invoke-virtual {v2, v14, v15, v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_2

    :cond_7
    :goto_5
    if-eqz v3, :cond_15

    invoke-virtual {v6, v2, v3}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    goto :goto_5

    :cond_8
    move-object v3, v9

    goto :goto_5

    :cond_9
    iget-boolean v3, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-eqz v3, :cond_14

    if-eqz v7, :cond_a

    invoke-virtual {v6, v1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object v3

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/FieldSet;->fields:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_6

    :cond_a
    move-object v3, v9

    move-object v4, v3

    :goto_6
    array-length v7, v5

    move v13, v12

    :goto_7
    if-ge v13, v7, :cond_11

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v14

    aget v15, v5, v13

    :goto_8
    if-eqz v4, :cond_c

    invoke-virtual {v6, v4}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v15, :cond_c

    invoke-virtual {v6, v2, v4}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    :goto_9
    const/4 v9, 0x0

    goto :goto_8

    :cond_c
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v9

    packed-switch v9, :pswitch_data_1

    :cond_d
    move v9, v10

    move v12, v11

    goto/16 :goto_d

    :pswitch_45
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v11

    invoke-virtual {v2, v15, v9, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    :cond_e
    :goto_a
    move v9, v10

    const/4 v12, 0x1

    goto/16 :goto_d

    :pswitch_46
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v2, v15, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    goto :goto_a

    :pswitch_47
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {v2, v15, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    goto :goto_a

    :pswitch_48
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v2, v15, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    goto :goto_a

    :pswitch_49
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {v2, v15, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    goto :goto_a

    :pswitch_4a
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {v2, v15, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    goto :goto_a

    :pswitch_4b
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {v2, v15, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    goto :goto_a

    :pswitch_4c
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v2, v15, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_a

    :pswitch_4d
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v11

    invoke-virtual {v2, v15, v9, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_a

    :pswitch_4e
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v15, v9, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_a

    :pswitch_4f
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v2, v15, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    goto/16 :goto_a

    :pswitch_50
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {v2, v15, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    goto/16 :goto_a

    :pswitch_51
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v2, v15, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    goto/16 :goto_a

    :pswitch_52
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {v2, v15, v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    goto/16 :goto_a

    :pswitch_53
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v2, v15, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    goto/16 :goto_a

    :pswitch_54
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v2, v15, v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    goto/16 :goto_a

    :pswitch_55
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v2, v9, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    goto/16 :goto_a

    :pswitch_56
    invoke-virtual {v0, v15, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v2, v11, v12, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    goto/16 :goto_a

    :pswitch_57
    and-int v9, v14, v10

    int-to-long v11, v9

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v2, v15, v9, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeMapHelper(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;ILjava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_58
    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v11, v11

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v12

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_a

    :pswitch_59
    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v11, v11

    invoke-static {v1, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v12, 0x1

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    :goto_b
    move v9, v10

    goto/16 :goto_d

    :pswitch_5a
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_b

    :pswitch_5b
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_b

    :pswitch_5c
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_b

    :pswitch_5d
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_b

    :pswitch_5e
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_b

    :pswitch_5f
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_b

    :pswitch_60
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_b

    :pswitch_61
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_b

    :pswitch_62
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_b

    :pswitch_63
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_b

    :pswitch_64
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_b

    :pswitch_65
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_b

    :pswitch_66
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2, v12}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_b

    :pswitch_67
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v9, v11, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_b

    :pswitch_68
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    :cond_f
    :goto_c
    const v9, 0xfffff

    goto/16 :goto_d

    :pswitch_69
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_c

    :pswitch_6a
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_c

    :pswitch_6b
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_c

    :pswitch_6c
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto :goto_c

    :pswitch_6d
    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_b

    :pswitch_6e
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    invoke-static {v9, v11, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_b

    :pswitch_6f
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v9, v11, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_b

    :pswitch_70
    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v14, v11

    invoke-static {v1, v14, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v9, v11, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_b

    :pswitch_71
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_c

    :pswitch_72
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_c

    :pswitch_73
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_c

    :pswitch_74
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_c

    :pswitch_75
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_c

    :pswitch_76
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_c

    :pswitch_77
    move v15, v12

    move v12, v11

    aget v9, v5, v13

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v10, v11

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Z)V

    goto/16 :goto_c

    :pswitch_78
    move v9, v12

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const v10, 0xfffff

    and-int v11, v14, v10

    int-to-long v9, v11

    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    invoke-virtual {v2, v15, v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_c

    :pswitch_79
    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const v9, 0xfffff

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt64(IJ)V

    goto/16 :goto_d

    :pswitch_7a
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v15, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSInt32(II)V

    goto/16 :goto_d

    :pswitch_7b
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed64(IJ)V

    goto/16 :goto_d

    :pswitch_7c
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v15, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeSFixed32(II)V

    goto/16 :goto_d

    :pswitch_7d
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v15, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeEnum(II)V

    goto/16 :goto_d

    :pswitch_7e
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v15, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt32(II)V

    goto/16 :goto_d

    :pswitch_7f
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v2, v15, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_d

    :pswitch_80
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v11

    invoke-virtual {v2, v15, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_d

    :pswitch_81
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v15, v10, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto/16 :goto_d

    :pswitch_82
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    sget-object v14, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v14, v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v10

    invoke-virtual {v2, v15, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeBool(IZ)V

    goto/16 :goto_d

    :pswitch_83
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v15, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed32(II)V

    goto/16 :goto_d

    :pswitch_84
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFixed64(IJ)V

    goto/16 :goto_d

    :pswitch_85
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v2, v15, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt32(II)V

    goto :goto_d

    :pswitch_86
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeUInt64(IJ)V

    goto :goto_d

    :pswitch_87
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v15, v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeInt64(IJ)V

    goto :goto_d

    :pswitch_88
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    sget-object v14, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v14, v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v10

    invoke-virtual {v2, v10, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeFloat(FI)V

    goto :goto_d

    :pswitch_89
    move v9, v10

    move v12, v11

    invoke-virtual {v0, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    and-int v10, v14, v9

    int-to-long v10, v10

    sget-object v14, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v14, v1, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-virtual {v2, v10, v11, v15}, Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;->writeDouble(DI)V

    :cond_10
    :goto_d
    add-int/lit8 v13, v13, 0x3

    move v10, v9

    move v11, v12

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_11
    :goto_e
    if-eqz v4, :cond_13

    invoke-virtual {v6, v2, v4}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->serializeExtension(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    goto :goto_e

    :cond_12
    const/4 v4, 0x0

    goto :goto_e

    :cond_13
    invoke-virtual {v8, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v8, v0, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    goto :goto_f

    :cond_14
    invoke-virtual/range {p0 .. p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;)V

    :cond_15
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method
