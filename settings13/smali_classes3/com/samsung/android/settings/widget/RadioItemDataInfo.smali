.class public Lcom/samsung/android/settings/widget/RadioItemDataInfo;
.super Ljava/lang/Object;
.source "RadioItemDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;
    }
.end annotation


# instance fields
.field private final mImageList:Ljava/util/List;
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

.field private final mSubTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->-$$Nest$fgetmSubTitleList(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mSubTitleList:Ljava/util/List;

    .line 35
    invoke-static {p1}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->-$$Nest$fgetmItemValueList(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mItemValueList:Ljava/util/List;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->-$$Nest$fgetmTitleList(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mTitleList:Ljava/util/List;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->-$$Nest$fgetmImageList(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mImageList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;Lcom/samsung/android/settings/widget/RadioItemDataInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;-><init>(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public getImageList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mImageList:Ljava/util/List;

    return-object p0
.end method

.method public getItemValueList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mItemValueList:Ljava/util/List;

    return-object p0
.end method

.method public getSubTitleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mSubTitleList:Ljava/util/List;

    return-object p0
.end method

.method public getTitleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mTitleList:Ljava/util/List;

    return-object p0
.end method
