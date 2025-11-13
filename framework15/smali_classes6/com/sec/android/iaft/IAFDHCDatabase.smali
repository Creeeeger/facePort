.class public Lcom/sec/android/iaft/IAFDHCDatabase;
.super Ljava/lang/Object;
.source "IAFDHCDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDHCDatabase$IAFDHCDatabaseHolder;
    }
.end annotation


# static fields
.field private static final blacklist IAFDHCDBVersion:I = 0x5


# instance fields
.field private blacklist mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/sec/android/iaft/IAFDHCDatabase-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDHCDatabase;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;
    .locals 1

    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase$IAFDHCDatabaseHolder;->-$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    return-object v0
.end method

.method public blacklist getHCDBversion()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method blacklist init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 38

    move-object/from16 v0, p0

    const/4 v10, 0x0

    new-instance v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-direct {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;-><init>()V

    iput-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    new-instance v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/16 v18, 0x100

    const/16 v19, 0x200

    const/4 v12, 0x1

    const/16 v13, 0x800

    const-string v14, "at "

    const/16 v15, 0x400

    const/16 v16, 0x400

    const-string v17, "#00 pc "

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;-><init>(ZILjava/lang/String;IILjava/lang/String;II)V

    iput-object v2, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setDBVersion(I)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v1, 0x1c

    new-array v12, v1, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v5, "ClassCastException"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v13

    move-object v4, v15

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v16, 0x0

    aput-object v13, v12, v16

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x1c

    const-string v5, "TransactionTooLargeException"

    const-string v7, "supportFlag>,<3"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    aput-object v13, v12, v14

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v3, 0x2

    const-string v5, "IndexOutOfBoundsException"

    const/4 v7, 0x0

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v17, 0x2

    aput-object v13, v12, v17

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const-string v5, "ArrayIndexOutOfBoundsException"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v18, 0x3

    aput-object v13, v12, v18

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const-string v5, "StringIndexOutOfBoundsException"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v19, 0x4

    aput-object v13, v12, v19

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v3, 0x7

    const-string v5, "ClassNotFoundException"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    aput-object v13, v12, v11

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const-string v5, "NoClassDefFoundError"

    const-string v7, "supportFlag>,<3"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v20, 0x6

    aput-object v13, v12, v20

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x8

    const-string v5, "ArithmeticException"

    const/4 v7, 0x0

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v21, 0x7

    aput-object v13, v12, v21

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x1a

    const-string v5, "JNI_ERR"

    const-string v6, ""

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v22, 0x8

    aput-object v13, v12, v22

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0xc

    const-string v5, "ExceptionInInitializerError"

    const/4 v6, 0x0

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v23, 0x9

    aput-object v13, v12, v23

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0xd

    const-string v5, "InternalError"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v24, 0xa

    aput-object v13, v12, v24

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0xe

    const-string v5, "StackOverflowError"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v25, 0xb

    aput-object v13, v12, v25

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0xf

    const-string v5, "android.content.res.Resources$NotFoundException"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v26, 0xc

    aput-object v13, v12, v26

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x14

    const-string v5, "IllegalArgumentException"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v27, 0xd

    aput-object v13, v12, v27

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const-string v5, "InvalidParameterException"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v28, 0xe

    aput-object v13, v12, v28

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x1d

    const-string v5, "SuperNotCalledException"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v9, 0xf

    aput-object v13, v12, v9

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v3, 0x4

    const-string v5, "IllegalStateException"

    move-object v1, v13

    move-object/from16 v29, v8

    move v8, v10

    move-object/from16 v9, v29

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v9, 0x10

    aput-object v13, v12, v9

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v3, 0x6

    const-string v5, "NumberFormatException"

    move-object v1, v13

    move-object/from16 v29, v8

    move v8, v10

    move v11, v9

    move-object/from16 v9, v29

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v29, 0x11

    aput-object v13, v12, v29

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x9

    const-string v5, "NoSuchMethodException"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v31, 0x12

    aput-object v13, v12, v31

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0xb

    const-string v5, "PackageManager$NameNotFoundException"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v32, 0x13

    aput-object v13, v12, v32

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v3, 0x3

    const-string v5, "ActivityNotFoundException"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v9, 0x14

    aput-object v13, v12, v9

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x13

    const-string v5, "MissingWebViewPackageException"

    const-string v6, "libs>,<Failed to load WebView provider: No WebView installed"

    const-string v7, "supportFlag>,<3"

    move-object v1, v13

    move-object/from16 v33, v8

    move v8, v10

    move-object/from16 v9, v33

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v1, 0x15

    aput-object v13, v12, v1

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v3, 0x5

    const-string v5, "SecurityException"

    const-string v6, "libs>,<no longer supported>,<not exported from uid"

    const/4 v7, 0x0

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v1, 0x16

    aput-object v13, v12, v1

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x10

    const-string v5, "InflateException"

    const/4 v6, 0x0

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v1, 0x17

    aput-object v13, v12, v1

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x16

    const-string v5, "invocationtargetexception"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v1, 0x18

    aput-object v13, v12, v1

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x22

    const-string v5, "SQLiteFullException"

    const-string v6, "libs>,<database or disk is full"

    const-string v7, "supportFlag>,<3"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v1, 0x19

    aput-object v13, v12, v1

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/16 v3, 0x19

    const-string v5, "OutOfMemoryError"

    const-string v6, "32bit"

    const/4 v7, 0x0

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v1, 0x1a

    aput-object v13, v12, v1

    new-instance v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    add-int/2addr v10, v14

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v3, 0x0

    const-string v5, "NullPointerException"

    const-string v6, "pkgName"

    move-object v1, v13

    move v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    const/16 v1, 0x1b

    aput-object v13, v12, v1

    move-object v8, v12

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v8, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v2, "/data/app/"

    invoke-virtual {v1, v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setreMovableAppPaths(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v2, "com.google.android.webview"

    invoke-virtual {v1, v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setwebView_pkgName(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v2, "0"

    const-string v3, "CHZ>,<CHN>,<CHM>,<CHU>,<CTC>,<CHC>,<BNZ>,<CBK"

    move-object/from16 v9, p2

    invoke-virtual {v1, v2, v3, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v2, "android.app.stubs>,<com.android.cts>,<com.android.test>,<com.android.app1>,<com.android.app2>,<com.android.app3"

    const-string v3, "1"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setWhiteList(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v2, "Repair>,<CHNONLY"

    move/from16 v12, p3

    invoke-virtual {v1, v3, v2, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setIAFDDBControlFeature(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v2, "pairlinks>,<1400403000>,<null>,</tips->,<-321-0.html>,<zh>,<27_NoCheckUpdate_NoOneKey_onejump>,<1500170>,<1500170>,<34_NoCheckUpdate_NoOneKey_onejump>,<1490506>,<1490506>,<35_onekey_NoCheckUpdate>,<1500223>,<1500223"

    invoke-virtual {v1, v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocApp(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v2, "OnlyShowList>,<1400701000>,<com.csii.qujing.mobilebank>,<1614570>,<1614570>,<cn.com.nxy.mbank.hlj>,<1655654>,<1655654>,<com.nxy.mobilebank.hlj>,<1655654>,<1655654>,<com.nxy.mobilebank.hunan>,<1655659>,<1655659>,<cn.com.nxy.mbank.shanxi>,<1720535>,<1720535>,<com.cn.froad.mobileplatform>,<1720398>,<1720398>,<com.yitong.mbank.g>,<1720485>,<1720485>,<cn.com.nxy.mbank.hebei>,<1720498>,<1720498>,<com.sxnxs.mbank>,<1721309>,<1721309>,<io.github.nekoinverter.ehviewer>,<1721428>,<1721428>,<com.ss.android.ugc.aweme:;Only32bit>,<1720427>,<1720427>,<com.chinatelecom.chongqing.iworkhelp>,<1721484>,<1721484>,<com.mobile.boe>,<1721487>,<1721487>,<com.buybal.buybalpay.nxy.jkepay>,<1721497>,<1721497>,<com.citicbank.comb>,<1721512>,<1721512"

    invoke-virtual {v1, v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocAppOnlyShow(Ljava/lang/String;)V

    new-array v13, v11, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v6, 0x0

    const/4 v2, 0x3

    const/16 v3, 0xa

    const-string v5, "did not then call Service"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v16

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "Not allowed to"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v14

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v3, 0x17

    const-string v5, "libjiagu.so"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v17

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "libDexHelper"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v18

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "libSecShell.so"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v19

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "Anonymous-DexFile@"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v33, v13, v1

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "com.secneo.apkwrapper"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v20

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "32bit"

    const/16 v3, 0x19

    const-string v5, "OutOfMemoryError"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v21

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<android.provider.Settings"

    const-string v7, "supportFlag>,<3"

    const/16 v3, 0x23

    const-string v5, "Unable to get provider com.google.android.gsf.gservices.GservicesProvider"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v22

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<android.provider.Settings"

    const-string v7, "supportFlag>,<3"

    const-string v5, "Attempt to invoke interface method \'android.os.Bundle android.content.IContentProvider.call(android.content.AttributionSource, java.lang.String, java.lang.String, java.lang.String, android.os.Bundle)\' on a null object reference"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v23

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v3, 0x11

    const-string v5, "Unable to start activity"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v24

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v3, 0x12

    const-string v5, "dlopen failed: library"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v25

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<Failed to load WebView provider: No WebView installed"

    const-string v7, "supportFlag>,<3"

    const/16 v3, 0x13

    const-string v5, "MissingWebViewPackageException"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v26

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<has no access to content://media/external/images/media"

    const-string v7, "supportFlag>,<3"

    const/16 v3, 0x1b

    const-string v5, "SecurityException"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v27

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<has no access to content://media/external/images/media"

    const-string v7, "supportFlag>,<3"

    const-string v5, "RecoverableSecurityException"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v33, v13, v28

    new-instance v33, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "pkgName"

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v5, "NullPointerException"

    move-object/from16 v1, v33

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xf

    aput-object v33, v13, v7

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-array v6, v7, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/4 v2, 0x4

    const/16 v3, 0x17

    const-string v5, "libjiagu.so"

    move-object/from16 v1, v30

    move-object/from16 v36, v6

    move-object/from16 v6, v33

    move/from16 v33, v7

    move-object/from16 v7, v35

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v16

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "libDexHelper"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v14

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "libSecShell.so"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v17

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "Anonymous-DexFile@"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v18

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "com.secneo.apkwrapper"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v19

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v3, 0x12

    const-string v5, "dlopen failed: library"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v30, v36, v1

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string v7, "supportFlag>,<3"

    const/16 v3, 0x13

    const-string v5, "com.google.android.webview"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v20

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string v7, "supportFlag>,<3"

    const-string v5, "WebViewGoogle.apk"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v21

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string v7, "supportFlag>,<3"

    const-string v5, "com.google.android.trichromelibrary"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v22

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<Failed to load WebView provider: No WebView installed"

    const-string v7, "supportFlag>,<3"

    const-string v5, "MissingWebViewPackageException"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v23

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v6, 0x0

    const-string v7, "supportFlag>,<3"

    const-string v5, "chromium-SystemWebViewGoogle"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v24

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v7, "supportFlag>,<3"

    const-string v5, "chromium-TrichromeWebViewGoogle"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v25

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v7, "supportFlag>,<3"

    const/16 v3, 0x22

    const-string v5, "ENOSPC (No space left on device)"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v26

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "pkgName"

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v5, "null pointer"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v27

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "pkgName"

    const/16 v3, 0x18

    const-string v5, "fault addr"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v36, v28

    move-object/from16 v7, v36

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v7, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v1, 0x5

    new-array v6, v1, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v35, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string v36, "supportFlag>,<3"

    const/4 v2, 0x5

    const/16 v3, 0x13

    const-string v5, "com.google.android.webview"

    move-object/from16 v1, v30

    move-object/from16 v37, v6

    move-object/from16 v6, v35

    move-object/from16 v35, v7

    move-object/from16 v7, v36

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v37, v16

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string v7, "supportFlag>,<3"

    const-string v5, "WebViewGoogle.apk"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v37, v14

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<libmonochrome.so>,<libmonochrome_64.so>,<libwebviewchromium"

    const-string v7, "supportFlag>,<3"

    const-string v5, "com.google.android.trichromelibrary"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v37, v17

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v6, 0x0

    const-string v7, "supportFlag>,<3"

    const/16 v3, 0x22

    const-string v5, "ENOSPC (No space left on device)"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v37, v18

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "libs>,<android.provider.Settings"

    const-string v7, "supportFlag>,<3"

    const/16 v3, 0x23

    const-string v5, "Unable to get provider com.google.android.gsf.gservices.GservicesProvider"

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v37, v19

    move-object/from16 v7, v37

    iget-object v1, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v7, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v1, 0x14

    new-array v6, v1, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    new-instance v30, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/4 v2, 0x6

    const/16 v3, 0x17

    const-string v5, "libjiagu.so"

    move-object/from16 v1, v30

    move-object/from16 v37, v6

    move-object/from16 v6, v34

    move-object/from16 v34, v7

    move-object/from16 v7, v36

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v37, v16

    new-instance v16, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "libDexHelper"

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v16, v37, v14

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "libSecShell.so"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v17

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "Anonymous-DexFile@"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v18

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "com.secneo.apkwrapper"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v19

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v3, 0xe

    const-string v5, "stack corruption"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v14, v37, v1

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "stack overflow"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v20

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/16 v3, 0x15

    const-string v5, "overflow_error"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v21

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "32bit"

    const/16 v3, 0x19

    const-string v5, "OutOfMemoryError"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v22

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "32bit"

    const-string v5, "GL errors"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v23

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "32bit"

    const-string v5, "GL_OUT_OF_MEMORY"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v24

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "32bit"

    const-string v5, "bad_alloc"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v25

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v6, 0x0

    const/16 v3, 0x1a

    const-string v5, "JNI DETECTED ERROR"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v26

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "JNI_ERR"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v27

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v7, "supportFlag>,<3"

    const/4 v3, 0x7

    const-string v5, "NoClassDefFoundError"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v28

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v7, 0x0

    const/16 v3, 0x14

    const-string v5, "invalid_argument"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v33

    new-instance v14, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v3, 0x2

    const-string v5, "out_of_range"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v37, v11

    new-instance v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v5, "length_error"

    move-object v1, v11

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v37, v29

    new-instance v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "pkgName"

    const/4 v3, 0x0

    const-string v5, "null pointer"

    move-object v1, v11

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v37, v31

    new-instance v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const-string v6, "pkgName"

    const/16 v3, 0x18

    const-string v5, "fault addr"

    move-object v1, v11

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v37, v32

    move-object/from16 v1, v37

    iget-object v2, v0, Lcom/sec/android/iaft/IAFDHCDatabase;->mIafdHCDatabase:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v1, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    return-void
.end method
