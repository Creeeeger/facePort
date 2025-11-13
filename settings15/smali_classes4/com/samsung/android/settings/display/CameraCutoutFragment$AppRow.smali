.class public final Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAdapter:Landroid/widget/ArrayAdapter;

.field public mLabel:Ljava/lang/CharSequence;

.field public mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

.field public final mOptionList:Ljava/util/ArrayList;

.field public mPackage:Ljava/lang/String;

.field public mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    return-void
.end method
