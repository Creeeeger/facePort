.class Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppRow"
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLabel:Ljava/lang/CharSequence;

.field public mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

.field public mOptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPackage:Ljava/lang/String;

.field public mRatio:F

.field public mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field public mType:I

.field public mUid:I

.field public mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;-><init>()V

    return-void
.end method
