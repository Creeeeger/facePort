.class public final Lcom/android/systemui/security/data/model/SecurityModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/security/data/model/SecurityModel$Companion;


# instance fields
.field public final deviceAdminIcon:Landroid/graphics/drawable/Drawable;

.field public final deviceOwnerOrganizationName:Ljava/lang/String;

.field public final hasCACertInCurrentUser:Z

.field public final hasCACertInWorkProfile:Z

.field public final hasWorkProfile:Z

.field public final isDeviceManaged:Z

.field public final isNetworkLoggingEnabled:Z

.field public final isParentalControlsEnabled:Z

.field public final isProfileOwnerOfOrganizationOwnedDevice:Z

.field public final isVpnBranded:Z

.field public final isWorkProfileOn:Z

.field public final primaryVpnName:Ljava/lang/String;

.field public final workProfileOrganizationName:Ljava/lang/String;

.field public final workProfileVpnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/security/data/model/SecurityModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/security/data/model/SecurityModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/security/data/model/SecurityModel;->Companion:Lcom/android/systemui/security/data/model/SecurityModel$Companion;

    return-void
.end method

.method public constructor <init>(ZZZZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZZLandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isDeviceManaged:Z

    iput-boolean p2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasWorkProfile:Z

    iput-boolean p3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isWorkProfileOn:Z

    iput-boolean p4, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isProfileOwnerOfOrganizationOwnedDevice:Z

    iput-object p5, p0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceOwnerOrganizationName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileOrganizationName:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isNetworkLoggingEnabled:Z

    iput-boolean p8, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isVpnBranded:Z

    iput-object p9, p0, Lcom/android/systemui/security/data/model/SecurityModel;->primaryVpnName:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileVpnName:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInCurrentUser:Z

    iput-boolean p12, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInWorkProfile:Z

    iput-boolean p13, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isParentalControlsEnabled:Z

    iput-object p14, p0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceAdminIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static final create(Lcom/android/systemui/statusbar/policy/SecurityController;)Lcom/android/systemui/security/data/model/SecurityModel;
    .locals 1

    sget-object v0, Lcom/android/systemui/security/data/model/SecurityModel;->Companion:Lcom/android/systemui/security/data/model/SecurityModel$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/security/data/model/SecurityModel$Companion;->create(Lcom/android/systemui/statusbar/policy/SecurityController;)Lcom/android/systemui/security/data/model/SecurityModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/security/data/model/SecurityModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/security/data/model/SecurityModel;

    iget-boolean v1, p1, Lcom/android/systemui/security/data/model/SecurityModel;->isDeviceManaged:Z

    iget-boolean v3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isDeviceManaged:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasWorkProfile:Z

    iget-boolean v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->hasWorkProfile:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isWorkProfileOn:Z

    iget-boolean v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->isWorkProfileOn:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isProfileOwnerOfOrganizationOwnedDevice:Z

    iget-boolean v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->isProfileOwnerOfOrganizationOwnedDevice:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceOwnerOrganizationName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->deviceOwnerOrganizationName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileOrganizationName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileOrganizationName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isNetworkLoggingEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->isNetworkLoggingEnabled:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isVpnBranded:Z

    iget-boolean v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->isVpnBranded:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->primaryVpnName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->primaryVpnName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileVpnName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileVpnName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInCurrentUser:Z

    iget-boolean v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInCurrentUser:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInWorkProfile:Z

    iget-boolean v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInWorkProfile:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isParentalControlsEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/security/data/model/SecurityModel;->isParentalControlsEnabled:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceAdminIcon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/android/systemui/security/data/model/SecurityModel;->deviceAdminIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isDeviceManaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasWorkProfile:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isWorkProfileOn:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isProfileOwnerOfOrganizationOwnedDevice:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceOwnerOrganizationName:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileOrganizationName:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isNetworkLoggingEnabled:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isVpnBranded:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->primaryVpnName:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileVpnName:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInCurrentUser:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInWorkProfile:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isParentalControlsEnabled:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceAdminIcon:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceAdminIcon:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SecurityModel(isDeviceManaged="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isDeviceManaged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasWorkProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasWorkProfile:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isWorkProfileOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isWorkProfileOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isProfileOwnerOfOrganizationOwnedDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isProfileOwnerOfOrganizationOwnedDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", deviceOwnerOrganizationName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceOwnerOrganizationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", workProfileOrganizationName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileOrganizationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isNetworkLoggingEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isNetworkLoggingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isVpnBranded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isVpnBranded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", primaryVpnName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->primaryVpnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", workProfileVpnName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileVpnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hasCACertInCurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInCurrentUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasCACertInWorkProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInWorkProfile:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isParentalControlsEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/security/data/model/SecurityModel;->isParentalControlsEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", deviceAdminIcon="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
