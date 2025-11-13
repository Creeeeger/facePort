.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppList:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DetailsResultListener;

.field public final mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public mTotalSizeInfo:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;Ljava/util/List;Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$listener$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mAppList:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DetailsResultListener;

    return-void
.end method
