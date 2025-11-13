.class public final Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSourceBitmapSet:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;->mSourceBitmapSet:Ljava/util/HashMap;

    return-void
.end method
