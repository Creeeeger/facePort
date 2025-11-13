.class public Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;
.super Ljava/lang/Object;
.source "CameraCutoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/CameraCutoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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

.field public final mOptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPackage:Ljava/lang/String;

.field public mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    return-void
.end method
