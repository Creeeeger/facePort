.class public final Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
.super Ljava/lang/Object;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForegroundServiceTypePolicyInfo"
.end annotation


# static fields
.field private static final blacklist INVALID_CHANGE_ID:J


# instance fields
.field final blacklist mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

.field final blacklist mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

.field blacklist mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

.field final blacklist mDeprecationChangeId:J

.field final blacklist mDisabledChangeId:J

.field final blacklist mForegroundOnlyPermission:Z

.field final blacklist mPermissionEnforcementFlag:Ljava/lang/String;

.field final blacklist mPermissionEnforcementFlagDefaultValue:Z

.field volatile blacklist mPermissionEnforcementFlagValue:Z

.field final blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdatePermissionEnforcementFlagIfNecessary(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    iput-wide p2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    iput-wide p4, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    iput-object p6, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    iput-object p7, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    iput-object p8, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    iput-boolean p9, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagDefaultValue:Z

    iput-boolean p9, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    iput-boolean p10, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mForegroundOnlyPermission:Z

    return-void
.end method

.method private blacklist clearOverrideForTest(JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->clearOverrideForTest(JLjava/lang/String;)Z

    return-void
.end method

.method private static blacklist isValidChangeId(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist overrideChangeIdForTest(JZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v3, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v3, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v3}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    nop

    const-string/jumbo v3, "platform_compat"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v3

    invoke-interface {v3, v2, p4}, Lcom/android/internal/compat/IPlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    const-string v0, "all of the permissions "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-eqz v0, :cond_1

    const-string v0, "any of the permissions "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-object p1
.end method

.method private blacklist updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagDefaultValue:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist clearTypeDisabledForTest(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-direct {p0, v0, v1, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->clearOverrideForTest(JLjava/lang/String;)V

    return-void
.end method

.method public blacklist getForegroundServiceType()I
    .locals 1

    iget v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    return v0
.end method

.method public blacklist getPermissionEnforcementFlagForTest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredAllOfPermissionsForTest(Landroid/content/Context;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequiredAnyOfPermissionsForTest(Landroid/content/Context;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasForegroundOnlyPermission()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mForegroundOnlyPermission:Z

    return v0
.end method

.method blacklist isTypeDeprecated(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    invoke-static {v0, v1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isTypeDisabled(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-static {v0, v1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setCustomPermission(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    return-void
.end method

.method public blacklist setTypeDisabledForTest(ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->overrideChangeIdForTest(JZLjava/lang/String;)V

    return-void
.end method

.method public blacklist toPermissionString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " deprecationChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " disabledChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " customPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
