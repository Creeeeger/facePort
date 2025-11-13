.class public final Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mImageList:Ljava/util/List;

.field public final mItemValueList:Ljava/util/List;

.field public mSubTitleList:Ljava/util/List;

.field public mTitleColorList:Ljava/util/List;

.field public final mTitleList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mTitleColorList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mSubTitleList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mImageList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mItemValueList:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mTitleList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/settings/widget/RadioItemDataInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mItemValueList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mTitleList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mItemValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;-><init>(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)V

    return-object v0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "MandatoryLists sizes are different"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Mandatory lists are null"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "validation failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RadioItemDataInfo.Builder"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
