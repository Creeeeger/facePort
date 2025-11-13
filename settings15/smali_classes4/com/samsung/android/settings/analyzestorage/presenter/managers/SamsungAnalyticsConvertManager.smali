.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sCardConfirmFolderToSAEventId:Landroid/util/SparseArray;

.field public static final sCardConfirmToSAEventId:Landroid/util/SparseArray;

.field public static final sCardFolderToSAEventId:Landroid/util/SparseArray;

.field public static final sCardNotNowFolderToSAEventId:Landroid/util/SparseArray;

.field public static final sCardNotNowToSAEventId:Landroid/util/SparseArray;

.field public static final sCardToSAEventId:Landroid/util/SparseArray;

.field public static final sOverViewGoogleCloudCollapseToSAEventId:Landroid/util/SparseArray;

.field public static final sOverViewGoogleCloudExpandToSAEventId:Ljava/util/EnumMap;

.field public static final sOverViewInternalCollapseToSAEventId:Landroid/util/SparseArray;

.field public static final sOverViewInternalExpandToSAEventId:Ljava/util/EnumMap;

.field public static final sOverViewOnedriveCloudCollapseToSAEventId:Landroid/util/SparseArray;

.field public static final sOverViewOnedriveCloudExpandToSAEventId:Ljava/util/EnumMap;

.field public static final sOverViewSdCardCollapseToSAEventId:Landroid/util/SparseArray;

.field public static final sOverViewSdCardExpandToSAEventId:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewInternalExpandToSAEventId:Ljava/util/EnumMap;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewInternalCollapseToSAEventId:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewSdCardExpandToSAEventId:Ljava/util/EnumMap;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewSdCardCollapseToSAEventId:Landroid/util/SparseArray;

    new-instance v5, Ljava/util/EnumMap;

    invoke-direct {v5, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewGoogleCloudExpandToSAEventId:Ljava/util/EnumMap;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    sput-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewGoogleCloudCollapseToSAEventId:Landroid/util/SparseArray;

    new-instance v7, Ljava/util/EnumMap;

    invoke-direct {v7, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewOnedriveCloudExpandToSAEventId:Ljava/util/EnumMap;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewOnedriveCloudCollapseToSAEventId:Landroid/util/SparseArray;

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    sput-object v8, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardNotNowToSAEventId:Landroid/util/SparseArray;

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    sput-object v9, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardNotNowFolderToSAEventId:Landroid/util/SparseArray;

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    sput-object v10, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardConfirmToSAEventId:Landroid/util/SparseArray;

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    sput-object v11, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardConfirmFolderToSAEventId:Landroid/util/SparseArray;

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    sput-object v12, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardToSAEventId:Landroid/util/SparseArray;

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    sput-object v13, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardFolderToSAEventId:Landroid/util/SparseArray;

    sget-object v14, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v15, 0x227e

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v16, 0x227f

    move-object/from16 v17, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v15, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v16, 0x2280

    move-object/from16 v18, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v13, v12}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v16, 0x2281

    move-object/from16 v19, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v12, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APK:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v16, 0x2282

    move-object/from16 v20, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v11, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v16, 0x2283

    move-object/from16 v21, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->SECURE_FOLDER:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v10, 0x2284

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->WORK_PROFILE:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/16 v10, 0x2285

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x226b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x226c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x226d

    const/4 v10, 0x2

    const/16 v9, 0x2278

    move-object/from16 v22, v8

    const/4 v8, 0x3

    invoke-static {v0, v2, v10, v9, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x228d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v14, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x228e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x228f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v13, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2290

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2291

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v11, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2289

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x228a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x228b

    const/16 v2, 0x2296

    invoke-static {v0, v4, v10, v2, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22b5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22b6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v15, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22b7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v13, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22b8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v12, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22b9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22b1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22b2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v6, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22b3

    const/16 v2, 0x22c1

    invoke-static {v0, v6, v10, v2, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22a1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22a2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v15, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22a3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22a4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22a5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x229d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x229e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x229f

    const/16 v2, 0x22a7

    invoke-static {v0, v1, v10, v2, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22c8

    const/16 v1, 0xb

    const/16 v2, 0x22d4

    const/16 v3, 0xc

    move-object/from16 v4, v22

    invoke-static {v0, v4, v1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22ce

    const/16 v2, 0xd

    const/16 v5, 0x22e0

    const/16 v6, 0x15

    invoke-static {v0, v4, v2, v5, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22da

    const/16 v5, 0x16

    const/16 v7, 0x22e6

    invoke-static {v0, v4, v5, v7, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22f1

    const/4 v7, 0x5

    const/16 v9, 0x22f6

    const/4 v11, 0x6

    invoke-static {v0, v4, v7, v9, v11}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x4

    invoke-virtual {v4, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22c9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v21

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22d5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22cf

    const/16 v12, 0x22e1

    invoke-static {v0, v4, v2, v12, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22db

    const/16 v12, 0x22e7

    invoke-static {v0, v4, v5, v12, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22f7

    const/16 v12, 0x22ed

    invoke-static {v0, v4, v11, v12, v9}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22c5

    const/16 v4, 0x22d1

    move-object/from16 v12, v20

    invoke-static {v0, v12, v1, v4, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22cb

    const/16 v4, 0x22dd

    invoke-static {v0, v12, v2, v4, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22d7

    const/16 v4, 0x22e3

    invoke-static {v0, v12, v5, v4, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22c6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v19

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22d2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22cc

    const/16 v12, 0x22de

    invoke-static {v0, v4, v2, v12, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22d8

    const/16 v12, 0x22e4

    invoke-static {v0, v4, v5, v12, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22c7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v18

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22d3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22cd

    const/16 v12, 0x22df

    invoke-static {v0, v4, v2, v12, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22d9

    const/16 v12, 0x22e5

    invoke-static {v0, v4, v5, v12, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22ee

    const/16 v12, 0x22f2

    invoke-static {v0, v4, v7, v12, v11}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v17

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22ca

    const/16 v1, 0x22dc

    invoke-static {v0, v4, v2, v1, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22d6

    const/16 v1, 0x22e2

    invoke-static {v0, v4, v5, v1, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager$$ExternalSyntheticOutline0;->m(ILandroid/util/SparseArray;III)V

    const/16 v0, 0x22e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static convertCardToSAEventId(IIZI)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_5

    :cond_0
    if-eq p1, v0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/16 p0, 0x19a

    if-lt p1, p0, :cond_1

    sget p0, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->LAST_ARCHIVE_FILE_TYPE:I

    if-gt p1, p0, :cond_1

    const/16 p0, 0x15

    goto :goto_0

    :cond_1
    const/16 p0, 0x16

    goto :goto_0

    :cond_2
    const/16 p0, 0xd

    goto :goto_0

    :cond_3
    const/16 p0, 0xc

    goto :goto_0

    :cond_4
    const/16 p0, 0xb

    :cond_5
    :goto_0
    if-eqz p3, :cond_9

    if-eq p3, v0, :cond_7

    if-eqz p2, :cond_6

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardConfirmToSAEventId:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardConfirmFolderToSAEventId:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_1
    return-object p0

    :cond_7
    if-eqz p2, :cond_8

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardNotNowToSAEventId:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardNotNowFolderToSAEventId:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_2
    return-object p0

    :cond_9
    if-eqz p2, :cond_a

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardToSAEventId:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_3

    :cond_a
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sCardFolderToSAEventId:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_3
    return-object p0
.end method
