.class public final Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mEndItems:Ljava/util/List;

.field public final mEndLoads:Ljava/util/List;

.field public final mEndTypes:Ljava/util/List;

.field public mHasDefaultToggle:Z

.field public mInputAction:Landroid/app/PendingIntent;

.field public mMax:I

.field public mMin:I

.field public mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field public mSubtitle:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public mTitleImageMode:I

.field public mTitleItemLoading:Z

.field public mValue:I

.field public mValueSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    const/16 v1, 0x64

    iput v1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndTypes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndLoads:Ljava/util/List;

    return-void
.end method
