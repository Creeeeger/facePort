.class public Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;
.super Landroid/app/ForegroundServiceTypePolicy;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultForegroundServiceTypePolicy"
.end annotation


# instance fields
.field private final blacklist mForegroundServiceTypePolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/app/ForegroundServiceTypePolicy;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, -0x1

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MANIFEST:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x0

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_NONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x1

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_DATA_SYNC:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x2

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PLAYBACK:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x4

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_PHONE_CALL:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x8

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_LOCATION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x10

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_CONNECTED_DEVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x20

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PROJECTION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x40

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_CAMERA:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x80

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MICROPHONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x100

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_HEALTH:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x200

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_REMOTE_MESSAGING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x400

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SYSTEM_EXEMPTED:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x800

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SHORT_SERVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x2000

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PROCESSING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/high16 v1, 0x40000000    # 2.0f

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SPECIAL_USE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    iget-object v3, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist checkForegroundServiceTypePolicy(Landroid/content/Context;Ljava/lang/String;IIZLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;)I
    .locals 9

    invoke-virtual {p6, p3}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isTypeDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-eqz v1, :cond_1

    iget-object v2, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p2

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    :cond_1
    if-nez v0, :cond_3

    const/4 v1, 0x1

    iget-object v2, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-eqz v2, :cond_2

    iget-object v3, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    move-object v4, p1

    move v5, p3

    move v6, p4

    move-object v7, p2

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    if-eqz v2, :cond_3

    iget-object v3, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    move-object v4, p1

    move v5, p3

    move v6, p4

    move-object v7, p2

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    :cond_3
    if-eqz v0, :cond_5

    iget-boolean v1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    if-eqz v1, :cond_4

    const-wide/32 v1, 0xf2dd77a    # 1.258200034E-315

    invoke-static {v1, v2, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    :goto_0
    return v1

    :cond_5
    invoke-virtual {p6, p3}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isTypeDeprecated(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    return v1

    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
    .locals 4

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid default fgs type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->-$$Nest$mupdatePermissionEnforcementFlagIfNecessary(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
