.class public final Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mNetworkTemplate:Landroid/net/NetworkTemplate;

.field public mRetrieveDetail:Z

.field public final mUids:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;->mUids:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;->mRetrieveDetail:Z

    return-void
.end method
