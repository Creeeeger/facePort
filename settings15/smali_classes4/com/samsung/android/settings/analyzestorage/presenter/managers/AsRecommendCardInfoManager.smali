.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;

.field public static appList:Ljava/util/ArrayList;

.field public static cloudList:Ljava/util/ArrayList;

.field public static volatile instance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getAsRecommendCardInfo(ILcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;)Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;
    .locals 6

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->fileSizeCard:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->fileTypeCard:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz p2, :cond_4

    iget-object v3, p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->pathCard:Ljava/util/HashMap;

    if-eqz v3, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_4
    const-string v3, ""

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v5, v0, v1, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v4, 0x2

    if-eq v2, v1, :cond_9

    if-eq v2, v4, :cond_8

    const/4 v1, 0x3

    if-eq v2, v1, :cond_7

    const/16 v1, 0x19a

    if-lt v2, v1, :cond_6

    sget v1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->LAST_ARCHIVE_FILE_TYPE:I

    if-gt v2, v1, :cond_6

    const v1, 0x7f140433

    goto :goto_0

    :cond_6
    const v1, 0x7f140423

    goto :goto_0

    :cond_7
    const v1, 0x7f140439

    goto :goto_0

    :cond_8
    const v1, 0x7f140424

    goto :goto_0

    :cond_9
    if-ne p1, v4, :cond_a

    const v1, 0x7f140437

    goto :goto_0

    :cond_a
    const v1, 0x7f140435

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    iget v5, p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->numberApps:I

    :cond_b
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v0, 0x7f14042e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f12000e

    invoke-virtual {p2, v1, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v1, 0x7f140429

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$DeviceFeature;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f14042d

    goto :goto_1

    :cond_c
    const v0, 0x7f14042b

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v0, 0x7f14042c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v1, 0x7f14042a

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v1, 0x7f140426

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_d

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v4, 0x7f140427

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v3, 0x7f140428

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_10

    const/4 v0, 0x6

    if-eq p1, v0, :cond_e

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_3

    :cond_e
    if-ne p1, v0, :cond_f

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->appList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_f
    move-object v0, v1

    goto :goto_3

    :cond_10
    if-ne p1, v0, :cond_f

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->cloudList:Ljava/util/ArrayList;

    :goto_3
    packed-switch p1, :pswitch_data_1

    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v1, 0x7f140431

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v1, 0x7f140425

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :pswitch_a
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v1, 0x7f140430

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :pswitch_b
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->context:Landroid/content/Context;

    const v1, 0x7f14042f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    :pswitch_c
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;

    invoke-direct {p0, p2, v1, p1, v0}, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_8
        :pswitch_c
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
