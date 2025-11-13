.class public final Lcom/android/systemui/edgelighting/utils/AppIconCache;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final KEY_SMALL_ICON:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mIconCache:Landroid/util/LruCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    const-string/jumbo v0, "smallIcon"

    iput-object v0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->KEY_SMALL_ICON:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mContext:Landroid/content/Context;

    return-void
.end method
