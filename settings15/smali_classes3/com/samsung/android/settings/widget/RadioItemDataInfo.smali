.class public final Lcom/samsung/android/settings/widget/RadioItemDataInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mImageList:Ljava/util/List;

.field public final mItemValueList:Ljava/util/List;

.field public final mSubTitleList:Ljava/util/List;

.field public final mTitleColorList:Ljava/util/List;

.field public final mTitleList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mSubTitleList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mSubTitleList:Ljava/util/List;

    iget-object v0, p1, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mItemValueList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mItemValueList:Ljava/util/List;

    iget-object v0, p1, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mTitleList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mTitleList:Ljava/util/List;

    iget-object v0, p1, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mImageList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mImageList:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mTitleColorList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mTitleColorList:Ljava/util/List;

    return-void
.end method
