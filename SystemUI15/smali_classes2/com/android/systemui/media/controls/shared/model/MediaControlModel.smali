.class public final Lcom/android/systemui/media/controls/shared/model/MediaControlModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final actionsToShowInCollapsed:Ljava/util/List;

.field public final appIcon:Landroid/graphics/drawable/Icon;

.field public final appName:Ljava/lang/String;

.field public final artistName:Ljava/lang/CharSequence;

.field public final artwork:Landroid/graphics/drawable/Icon;

.field public final clickIntent:Landroid/app/PendingIntent;

.field public final deviceData:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

.field public final instanceId:Lcom/android/internal/logging/InstanceId;

.field public final isDismissible:Z

.field public final isResume:Z

.field public final notificationActionButtons:Ljava/util/List;

.field public final packageName:Ljava/lang/String;

.field public final resumeProgress:Ljava/lang/Double;

.field public final semanticActionButtons:Lcom/android/systemui/media/controls/shared/model/MediaButton;

.field public final showExplicit:Z

.field public final songName:Ljava/lang/CharSequence;

.field public final token:Landroid/media/session/MediaSession$Token;

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;Landroid/media/session/MediaSession$Token;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Icon;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/util/List;Ljava/util/List;ZZLjava/lang/Double;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/internal/logging/InstanceId;",
            "Landroid/media/session/MediaSession$Token;",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Z",
            "Landroid/graphics/drawable/Icon;",
            "Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;",
            "Lcom/android/systemui/media/controls/shared/model/MediaButton;",
            "Ljava/util/List<",
            "Lcom/android/systemui/media/controls/shared/model/MediaAction;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->token:Landroid/media/session/MediaSession$Token;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->clickIntent:Landroid/app/PendingIntent;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appName:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->songName:Ljava/lang/CharSequence;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artistName:Ljava/lang/CharSequence;

    move v1, p10

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->showExplicit:Z

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artwork:Landroid/graphics/drawable/Icon;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->deviceData:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->semanticActionButtons:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->notificationActionButtons:Ljava/util/List;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->actionsToShowInCollapsed:Ljava/util/List;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isDismissible:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isResume:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->resumeProgress:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;Landroid/media/session/MediaSession$Token;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Icon;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/util/List;Ljava/util/List;ZZLjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    and-int/lit8 v0, p19, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    invoke-direct/range {v1 .. v19}, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;-><init>(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;Landroid/media/session/MediaSession$Token;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Icon;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/util/List;Ljava/util/List;ZZLjava/lang/Double;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    iget v3, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->token:Landroid/media/session/MediaSession$Token;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->token:Landroid/media/session/MediaSession$Token;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->clickIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->clickIntent:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->songName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->songName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artistName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artistName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->showExplicit:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->showExplicit:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artwork:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artwork:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->deviceData:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->deviceData:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->semanticActionButtons:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->semanticActionButtons:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->notificationActionButtons:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->notificationActionButtons:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->actionsToShowInCollapsed:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->actionsToShowInCollapsed:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isDismissible:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isDismissible:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isResume:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isResume:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->resumeProgress:Ljava/lang/Double;

    iget-object p1, p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->resumeProgress:Ljava/lang/Double;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceId;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->token:Landroid/media/session/MediaSession$Token;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaSession$Token;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->clickIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appName:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->songName:Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artistName:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->showExplicit:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artwork:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->deviceData:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->semanticActionButtons:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcom/android/systemui/media/controls/shared/model/MediaButton;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->notificationActionButtons:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->actionsToShowInCollapsed:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isDismissible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isResume:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->resumeProgress:Ljava/lang/Double;

    if-nez p0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->token:Landroid/media/session/MediaSession$Token;

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->clickIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->songName:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artistName:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artwork:Landroid/graphics/drawable/Icon;

    iget-object v7, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->notificationActionButtons:Ljava/util/List;

    iget-object v8, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->actionsToShowInCollapsed:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MediaControlModel(uid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", instanceId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", token="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appIcon="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", clickIntent="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", songName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", artistName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showExplicit="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->showExplicit:Z

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", artwork="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", deviceData="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->deviceData:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", semanticActionButtons="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->semanticActionButtons:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", notificationActionButtons="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", actionsToShowInCollapsed="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isDismissible="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isDismissible:Z

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isResume="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isResume:Z

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", resumeProgress="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->resumeProgress:Ljava/lang/Double;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
