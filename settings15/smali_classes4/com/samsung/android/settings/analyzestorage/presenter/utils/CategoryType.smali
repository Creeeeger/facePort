.class public final enum Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\r\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;",
        "",
        "Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;",
        "pageType",
        "Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;",
        "getPageType",
        "()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;",
        "",
        "path",
        "Ljava/lang/String;",
        "getPath",
        "()Ljava/lang/String;",
        "Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;",
        "overViewItem",
        "Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;",
        "getOverViewItem",
        "()Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;",
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
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

.field public static final enum APK:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

.field public static final enum AUDIO:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

.field public static final enum COMPRESSED:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType$Companion;

.field public static final enum DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

.field public static final enum DOWNLOADS:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

.field public static final enum IMAGES:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

.field public static final enum NONE:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

.field public static final enum VIDEOS:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;


# instance fields
.field private final overViewItem:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field private final pageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const-string v1, "IMAGES"

    const/4 v2, 0x0

    const-string v4, "/Image"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V

    sput-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    sget-object v10, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v12, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const-string v8, "AUDIO"

    const/4 v9, 0x1

    const-string v11, "/Audio"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    sget-object v16, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v18, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const-string v14, "VIDEOS"

    const/4 v15, 0x2

    const-string v17, "/Video"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    sget-object v10, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v12, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const-string v8, "DOCUMENTS"

    const/4 v9, 0x3

    const-string v11, "/Document"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V

    sput-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    sget-object v16, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->DOWNLOADS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v12, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->INVALID_ITEM:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const-string v14, "DOWNLOADS"

    const/4 v15, 0x4

    const-string v17, "/Downloads"

    move-object v13, v4

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V

    sput-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->DOWNLOADS:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    sget-object v21, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->APK:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v23, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APK:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const-string v19, "APK"

    const/16 v20, 0x5

    const-string v22, "/Apk"

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v23}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V

    sput-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->APK:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    new-instance v19, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    sget-object v10, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->NONE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v18, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->COMPRESSED:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const-string v14, "COMPRESSED"

    const/4 v15, 0x6

    const-string v17, "/Compressed"

    move-object/from16 v13, v19

    move-object/from16 v16, v10

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V

    sput-object v19, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->COMPRESSED:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    new-instance v13, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    const-string v11, "/Blank"

    const-string v8, "NONE"

    const/4 v9, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V

    sput-object v13, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->NONE:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    move-object v0, v6

    move-object/from16 v6, v19

    move-object v7, v13

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->pageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->path:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->overViewItem:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    return-void
.end method

.method public static final getTypeFromOverViewItem(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->NONE:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->COMPRESSED:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->APK:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    return-object v0
.end method


# virtual methods
.method public final getOverViewItem()Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->overViewItem:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    return-object p0
.end method
