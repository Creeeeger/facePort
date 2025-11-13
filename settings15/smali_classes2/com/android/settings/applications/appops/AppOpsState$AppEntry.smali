.class public final Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mApkFile:Ljava/io/File;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public final mInfo:Landroid/content/pm/ApplicationInfo;

.field public mLabel:Ljava/lang/String;

.field public mMounted:Z

.field public final mOpSwitches:Landroid/util/SparseArray;

.field public final mOps:Landroid/util/SparseArray;

.field public final mState:Lcom/android/settings/applications/appops/AppOpsState;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appops/AppOpsState;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    new-instance p1, Ljava/io/File;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    return-object p0
.end method
