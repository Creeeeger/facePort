.class public final Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mNames:Landroid/util/SparseArray;

.field public final mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;->mNames:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;->mRes:Landroid/content/res/Resources;

    return-void
.end method
