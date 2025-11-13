.class public final enum Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000cR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\t\u0010\u0007R\u0017\u0010\n\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0005\u001a\u0004\u0008\u000b\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "com/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType",
        "",
        "Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;",
        "",
        "type",
        "I",
        "getType",
        "()I",
        "titleResId",
        "getTitleResId",
        "colorResId",
        "getColorResId",
        "Companion",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum APK:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum AUDIO:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum COMPRESSED:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType$Companion;

.field public static final enum DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum GOOGLE_APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum IMAGES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum INVALID_ITEM:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum OTHER_FILES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum OTHER_PROFILE:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum SECURE_FOLDER:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum SYSTEM:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum TOTAL:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum TRASH:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum VIDEOS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static final enum WORK_PROFILE:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;


# instance fields
.field private final colorResId:I

.field private final titleResId:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v5, "IMAGES"

    const v3, 0x7f140406

    const v4, 0x7f060045

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string v12, "VIDEOS"

    const v10, 0x7f140447

    const v11, 0x7f060068

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/4 v14, 0x2

    const/4 v15, 0x2

    const-string v18, "AUDIO"

    const v16, 0x7f1403ea

    const v17, 0x7f06004b

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/4 v8, 0x3

    const/4 v9, 0x3

    const-string v12, "DOCUMENTS"

    const v10, 0x7f1403fe

    const v11, 0x7f060040

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/4 v14, 0x4

    const/4 v15, 0x4

    const-string v18, "APK"

    const v16, 0x7f140408

    const v17, 0x7f060046

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APK:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/4 v8, 0x5

    const/4 v9, 0x5

    const-string v12, "COMPRESSED"

    const v10, 0x7f1403f0

    const v11, 0x7f06003d

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->COMPRESSED:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/4 v14, 0x6

    const/16 v15, 0xa

    const-string v18, "APPS"

    const v16, 0x7f14040d

    const v17, 0x7f06002d

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/4 v9, 0x7

    const/16 v10, 0xb

    const-string v13, "SYSTEM"

    const v11, 0x7f140412

    const v12, 0x7f06005a

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v14, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->SYSTEM:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v16, 0x8

    const/16 v17, 0xc

    const-string v20, "OTHER_FILES"

    const v18, 0x7f140421

    const v19, 0x7f06004f

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->OTHER_FILES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v9, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v22, 0x9

    const/16 v23, 0xd

    const-string v26, "TRASH"

    const v24, 0x7f140413

    const v25, 0x7f060067

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->TRASH:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v10, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v16, 0xa

    const/16 v17, 0x14

    const-string v20, "SECURE_FOLDER"

    const v18, 0x7f14043b

    const v19, 0x7f060055

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->SECURE_FOLDER:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v11, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v22, 0xb

    const/16 v23, 0x15

    const-string v26, "WORK_PROFILE"

    const v24, 0x7f140449

    const v25, 0x7f06006a

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->WORK_PROFILE:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v12, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v16, 0xc

    const/16 v17, 0x16

    const-string v20, "OTHER_PROFILE"

    const v18, 0x7f140420

    const v19, 0x7f060050

    move-object v15, v12

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->OTHER_PROFILE:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v13, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v22, 0xd

    const/16 v23, 0x1e

    const-string v26, "GOOGLE_APPS"

    const v24, 0x7f140404

    const v25, 0x7f06002e

    move-object/from16 v21, v13

    invoke-direct/range {v21 .. v26}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->GOOGLE_APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v21, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v16, 0xe

    const/16 v17, 0x64

    const-string v20, "TOTAL"

    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v15, v21

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v21, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->TOTAL:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v23, 0xf

    const/16 v24, 0x65

    const-string v27, "OTHERS_SUMMARY"

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    new-instance v16, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v29, 0x10

    const/16 v30, -0x1

    const-string v33, "INVALID_ITEM"

    const/16 v31, -0x1

    const/16 v32, -0x1

    move-object/from16 v28, v16

    invoke-direct/range {v28 .. v33}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;-><init>(IIIILjava/lang/String;)V

    sput-object v16, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->INVALID_ITEM:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-object v0, v6

    move-object v6, v7

    move-object v7, v14

    move-object/from16 v14, v21

    filled-new-array/range {v0 .. v16}, [Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->Companion:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType$Companion;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p5, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->type:I

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->titleResId:I

    iput p4, p0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->colorResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    return-object v0
.end method


# virtual methods
.method public final getColorResId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->colorResId:I

    return p0
.end method

.method public final getTitleResId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->titleResId:I

    return p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->type:I

    return p0
.end method
