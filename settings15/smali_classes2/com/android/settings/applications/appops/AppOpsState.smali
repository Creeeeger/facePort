.class public final Lcom/android/settings/applications/appops/AppOpsState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LABEL_COMPARATOR:Lcom/android/settings/applications/appops/AppOpsState$2;

.field public static final RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    new-array v4, v4, [Z

    fill-array-data v4, :array_1

    invoke-direct {v0, v5, v4}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    new-instance v4, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v5, 0x8

    const/16 v6, 0x9

    new-array v7, v5, [I

    fill-array-data v7, :array_2

    new-array v5, v5, [Z

    fill-array-data v5, :array_3

    invoke-direct {v4, v7, v5}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    new-instance v5, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v7, 0xf

    const/16 v8, 0xe

    new-array v9, v6, [I

    fill-array-data v9, :array_4

    new-array v6, v6, [Z

    fill-array-data v6, :array_5

    invoke-direct {v5, v9, v6}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    new-instance v6, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    new-array v7, v7, [I

    fill-array-data v7, :array_6

    new-array v8, v8, [Z

    fill-array-data v8, :array_7

    invoke-direct {v6, v7, v8}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    new-instance v7, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    new-array v8, v1, [I

    fill-array-data v8, :array_8

    new-array v1, v1, [Z

    fill-array-data v1, :array_9

    invoke-direct {v7, v8, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    new-instance v8, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0x3f

    filled-new-array {v1}, [I

    move-result-object v1

    new-array v3, v3, [Z

    aput-boolean v2, v3, v2

    invoke-direct {v8, v1, v3}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v8, Lcom/android/settings/applications/appops/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    filled-new-array/range {v0 .. v5}, [Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/AppOpsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->LABEL_COMPARATOR:Lcom/android/settings/applications/appops/AppOpsState$2;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x40
        0x2c
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030021

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    return-void
.end method

.method public static addOp(Ljava/util/List;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 7

    if-eqz p3, :cond_3

    move-object p3, p0

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0, p3}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    iget-object v1, p3, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    if-ne v1, p1, :cond_3

    invoke-virtual {p3}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-ne v1, v0, :cond_3

    iget-object p0, p3, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p4

    invoke-virtual {p1, p4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p4

    invoke-static {p4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p4

    invoke-virtual {p1, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p3, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p1

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    if-nez p0, :cond_2

    iget-object p0, p3, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-static {p0, p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p3

    iget-object v0, p1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    invoke-static {p3}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    if-eqz p3, :cond_5

    iget-object p0, p3, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p4

    invoke-virtual {p1, p4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p4

    invoke-static {p4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p4

    invoke-virtual {p1, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p3, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p1

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    if-nez p0, :cond_4

    iget-object p0, p3, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-static {p0, p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    :cond_4
    return-void

    :cond_5
    new-instance p3, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    invoke-direct {p3, p2, p1, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getAppEntry(Landroidx/fragment/app/FragmentActivity;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    .locals 1

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    if-nez v0, :cond_5

    if-nez p4, :cond_0

    :try_start_0
    iget-object p4, p0, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const v0, 0x400200

    invoke-virtual {p4, p3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to find info for package "

    const-string p1, "AppOpsState"

    invoke-static {p0, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/appops/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    iget-object p0, v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    if-eqz p0, :cond_1

    iget-boolean p0, v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    if-nez p0, :cond_4

    :cond_1
    iget-object p0, v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    iget-object p0, v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    iget-object p0, v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_1
    iput-object p0, v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    :cond_4
    :goto_2
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method
