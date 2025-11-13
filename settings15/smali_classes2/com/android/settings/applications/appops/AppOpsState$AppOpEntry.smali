.class public final Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

.field public final mOps:Ljava/util/ArrayList;

.field public mOverriddenPrimaryMode:I

.field public final mSwitchOps:Ljava/util/ArrayList;

.field public final mSwitchOrder:I


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOverriddenPrimaryMode:I

    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    iget-object v1, p2, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p2, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {p2, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getTime()J
    .locals 2

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    return-object p0
.end method
