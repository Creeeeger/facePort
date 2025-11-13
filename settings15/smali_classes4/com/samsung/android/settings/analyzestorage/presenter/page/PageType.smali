.class public final enum Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum ANALYZE_STORAGE_CACHED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum ANALYZE_STORAGE_DEVICE_CARE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum ANALYZE_STORAGE_DUPLICATED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum ANALYZE_STORAGE_LARGE_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum ANALYZE_STORAGE_SUB_USER_USAGE_DETAIL:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum APK:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum AUDIO:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum DOWNLOADS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum GOOGLE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum IMAGES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum LOCAL_APP_CLONE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum LOCAL_INTERNAL:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum LOCAL_SDCARD:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum LOCAL_SDCARD_UNMOUNT:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum LOCAL_USB:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum LOCAL_USB_UNMOUNT:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum NONE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum ONE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum SEARCH:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public static final enum VIDEOS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;


# instance fields
.field private final mScreenIdForSA:Ljava/lang/String;

.field private final mSelectionScreenIdForSA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v1, "HOME"

    const/4 v2, 0x0

    const-string v3, "101"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v2, "BLANK"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v3, "111"

    const-string v4, "IMAGES"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v4, "113"

    const-string v5, "AUDIO"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v5, "115"

    const-string v6, "VIDEOS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v6, "117"

    const-string v7, "DOCUMENTS"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v7, "119"

    const-string v8, "DOWNLOADS"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->DOWNLOADS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v8, "233"

    const-string v9, "VIEW_DOWNLOADS"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v9, "121"

    const-string v10, "APK"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->APK:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v9, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v10, "131"

    const-string v11, "LOCAL_INTERNAL"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_INTERNAL:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v10, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v11, "138"

    const-string v12, "LOCAL_APP_CLONE"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_APP_CLONE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v11, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "133"

    const-string v13, "LOCAL_SDCARD"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_SDCARD:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v12, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v13, "153"

    const-string v14, "LOCAL_SDCARD_UNMOUNT"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_SDCARD_UNMOUNT:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v13, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v14, "135"

    const-string v15, "LOCAL_USB"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_USB:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "154"

    const-string v15, "LOCAL_USB_UNMOUNT"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_USB_UNMOUNT:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "145"

    const-string v13, "GOOGLE_DRIVE"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->GOOGLE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "148"

    const-string v13, "ONE_DRIVE"

    move-object/from16 v19, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ONE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "151"

    const-string v13, "SEARCH_RESULT"

    move-object/from16 v20, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "155"

    const-string v13, "SEARCH"

    move-object/from16 v21, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->SEARCH:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "8801"

    const-string v13, "ANALYZE_STORAGE_HOME"

    move-object/from16 v22, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "200"

    const-string v13, "ANALYZE_STORAGE_DUPLICATED_FILES"

    move-object/from16 v23, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_DUPLICATED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "203"

    const-string v13, "ANALYZE_STORAGE_LARGE_FILES"

    move-object/from16 v24, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_LARGE_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "205"

    const-string v13, "ANALYZE_STORAGE_CACHED_FILES"

    move-object/from16 v25, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_CACHED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "8803"

    const-string v13, "ANALYZE_STORAGE_UNUSED_APPS"

    move-object/from16 v26, v14

    const/16 v14, 0x17

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "8802"

    const-string v13, "ANALYZE_STORAGE_APP_CACHE"

    move-object/from16 v27, v15

    const/16 v15, 0x18

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "ANALYZE_STORAGE_SUB_USER_USAGE_DETAIL"

    const/16 v13, 0x19

    move-object/from16 v28, v14

    const-string v14, ""

    invoke-direct {v15, v12, v13, v14}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_SUB_USER_USAGE_DETAIL:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v13, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v12, "241"

    move-object/from16 v29, v15

    const-string v15, "ANALYZE_STORAGE_DEVICE_CARE"

    move-object/from16 v30, v11

    const/16 v11, 0x1a

    invoke-direct {v13, v15, v11, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_DEVICE_CARE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v11, "SEARCH_SETTINGS"

    const/16 v12, 0x1b

    invoke-direct {v15, v11, v12, v14}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v11, "NONE"

    move-object/from16 v31, v13

    const/16 v13, 0x1c

    invoke-direct {v12, v11, v13, v14}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->NONE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    move-object/from16 v11, v30

    move-object/from16 v30, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v16, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v14, v18

    move-object/from16 v28, v15

    move-object/from16 v17, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v15, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v31

    move-object/from16 v27, v28

    move-object/from16 v28, v30

    filled-new-array/range {v0 .. v28}, [Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->mScreenIdForSA:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->mSelectionScreenIdForSA:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    return-object v0
.end method


# virtual methods
.method public final getScreenIdForSA()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->mScreenIdForSA:Ljava/lang/String;

    return-object p0
.end method
