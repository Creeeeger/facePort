.class public Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;
.super Ljava/lang/Object;
.source "RadioItemDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/widget/RadioItemDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmImageList(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mImageList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemValueList(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mItemValueList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubTitleList(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mSubTitleList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitleList(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mTitleList:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RadioItemDataInfo.Builder"

    .line 41
    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mSubTitleList:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mImageList:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mItemValueList:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mTitleList:Ljava/util/List;

    return-void
.end method

.method private validateDataInfo(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mItemValueList:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mTitleList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mItemValueList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p1, p0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "MandatoryLists sizes are different"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Mandatory lists are null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/widget/RadioItemDataInfo;
    .locals 3

    const/4 v0, 0x0

    .line 71
    :try_start_0
    invoke-direct {p0, p0}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->validateDataInfo(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    new-instance v1, Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;-><init>(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;Lcom/samsung/android/settings/widget/RadioItemDataInfo-IA;)V

    return-object v1

    :catch_0
    move-exception p0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validation failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RadioItemDataInfo.Builder"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public setImageList(Ljava/util/List;)Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mImageList:Ljava/util/List;

    return-object p0
.end method

.method public setSubTitleList(Ljava/util/List;)Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mSubTitleList:Ljava/util/List;

    return-object p0
.end method
