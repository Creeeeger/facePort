.class public final Lcom/android/systemui/shared/navigationbar/NavBarEvents;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/android/systemui/shared/navigationbar/NavBarEvents$CREATOR;


# instance fields
.field public appearance:I

.field public eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

.field public hiddenByKnox:Z

.field public iconBitmapBundle:Landroid/os/Bundle;

.field public final iconType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

.field public insetsBundle:Landroid/os/Bundle;

.field public final orderDefault:Z

.field public pluginBundle:Landroid/os/Bundle;

.field public final position:I

.field public remoteViewBundle:Landroid/os/Bundle;

.field public rotationLocked:Z

.field public transientShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->CREATOR:Lcom/android/systemui/shared/navigationbar/NavBarEvents$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->valueOf(Ljava/lang/String;)Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;->valueOf(Ljava/lang/String;)Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    move-result-object v1

    :cond_1
    move-object v4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v7, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v14

    move-object v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    iput-object p3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->remoteViewBundle:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconBitmapBundle:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->orderDefault:Z

    iput p6, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->position:I

    iput-boolean p7, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->rotationLocked:Z

    iput-boolean p8, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->transientShowing:Z

    iput p9, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->appearance:I

    iput-object p10, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->pluginBundle:Landroid/os/Bundle;

    iput-boolean p11, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->hiddenByKnox:Z

    iput-object p12, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->insetsBundle:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    move v7, v8

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move v9, v8

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move v10, v8

    goto :goto_7

    :cond_7
    move/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    move v11, v8

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    move-object v12, v2

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v8, p11

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v2, p12

    :goto_b
    move-object p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v11

    move-object/from16 p10, v12

    move/from16 p11, v8

    move-object/from16 p12, v2

    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iget-object v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    iget-object v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->remoteViewBundle:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->remoteViewBundle:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconBitmapBundle:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconBitmapBundle:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->orderDefault:Z

    iget-boolean v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->orderDefault:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->position:I

    iget v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->position:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->rotationLocked:Z

    iget-boolean v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->rotationLocked:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->transientShowing:Z

    iget-boolean v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->transientShowing:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->appearance:I

    iget v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->appearance:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->pluginBundle:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->pluginBundle:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->hiddenByKnox:Z

    iget-boolean v3, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->hiddenByKnox:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->insetsBundle:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->insetsBundle:Landroid/os/Bundle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->remoteViewBundle:Landroid/os/Bundle;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/os/Bundle;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconBitmapBundle:Landroid/os/Bundle;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Landroid/os/Bundle;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->orderDefault:Z

    invoke-static {v0, v2, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->position:I

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->rotationLocked:Z

    invoke-static {v0, v2, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->transientShowing:Z

    invoke-static {v0, v2, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->appearance:I

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->pluginBundle:Landroid/os/Bundle;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Landroid/os/Bundle;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->hiddenByKnox:Z

    invoke-static {v0, v2, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->insetsBundle:Landroid/os/Bundle;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Landroid/os/Bundle;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    iget-object v2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->remoteViewBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconBitmapBundle:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->orderDefault:Z

    iget v5, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->position:I

    iget-boolean v6, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->rotationLocked:Z

    iget-boolean v7, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->transientShowing:Z

    iget v8, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->appearance:I

    iget-object v9, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->pluginBundle:Landroid/os/Bundle;

    iget-boolean v10, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->hiddenByKnox:Z

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->insetsBundle:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "NavBarEvents(eventType="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", iconType="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", remoteViewBundle="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", iconBitmapBundle="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", orderDefault="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", position="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rotationLocked="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", transientShowing="

    const-string v1, ", appearance="

    invoke-static {v11, v6, v0, v7, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pluginBundle="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hiddenByKnox="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", insetsBundle="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->remoteViewBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconBitmapBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->orderDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->rotationLocked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->transientShowing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->appearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->pluginBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->hiddenByKnox:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->insetsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
