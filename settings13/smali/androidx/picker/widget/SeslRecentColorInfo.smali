.class public Landroidx/picker/widget/SeslRecentColorInfo;
.super Ljava/lang/Object;
.source "SeslRecentColorInfo.java"


# instance fields
.field private mCurrentColor:Ljava/lang/Integer;

.field private mNewColor:Ljava/lang/Integer;

.field private mRecentColorInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedColor:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mSelectedColor:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method getRecentColorInfo()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    return-object p0
.end method
