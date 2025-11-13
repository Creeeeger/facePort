.class public final Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSize:Ljava/lang/Long;

.field public final mType:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;->mType:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;->mSize:Ljava/lang/Long;

    return-void
.end method
