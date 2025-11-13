.class public final Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final baseIntentComponent:Landroid/content/ComponentName;

.field public final colorBackground:Ljava/lang/Integer;

.field public final displayId:I

.field public final isForegroundTask:Z

.field public final splitBounds:Lcom/android/wm/shell/util/SplitBounds;

.field public final taskId:I

.field public final topActivityComponent:Landroid/content/ComponentName;

.field public final userId:I

.field public final userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;


# direct methods
.method public constructor <init>(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/Integer;ZLcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Lcom/android/wm/shell/util/SplitBounds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->taskId:I

    iput p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->displayId:I

    iput p3, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userId:I

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->topActivityComponent:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->baseIntentComponent:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->colorBackground:Ljava/lang/Integer;

    iput-boolean p7, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->isForegroundTask:Z

    iput-object p8, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    iput-object p9, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->splitBounds:Lcom/android/wm/shell/util/SplitBounds;

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager$RecentTaskInfo;ZLcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Lcom/android/wm/shell/util/SplitBounds;)V
    .locals 10

    iget v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iget v2, p1, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    iget v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iget-object v4, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v5

    :goto_1
    move-object v0, p0

    move-object v5, v6

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;-><init>(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/Integer;ZLcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Lcom/android/wm/shell/util/SplitBounds;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/ActivityManager$RecentTaskInfo;ZLcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Lcom/android/wm/shell/util/SplitBounds;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;-><init>(Landroid/app/ActivityManager$RecentTaskInfo;ZLcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Lcom/android/wm/shell/util/SplitBounds;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget v1, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->taskId:I

    iget v3, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->taskId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->displayId:I

    iget v3, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->displayId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userId:I

    iget v3, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->topActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->topActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->baseIntentComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->baseIntentComponent:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->colorBackground:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->colorBackground:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->isForegroundTask:Z

    iget-boolean v3, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->isForegroundTask:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    iget-object v3, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->splitBounds:Lcom/android/wm/shell/util/SplitBounds;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->splitBounds:Lcom/android/wm/shell/util/SplitBounds;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->displayId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->topActivityComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->baseIntentComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->colorBackground:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->isForegroundTask:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->splitBounds:Lcom/android/wm/shell/util/SplitBounds;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/util/SplitBounds;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->topActivityComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->baseIntentComponent:Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RecentTask(taskId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", topActivityComponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", baseIntentComponent="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", colorBackground="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->colorBackground:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isForegroundTask="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->isForegroundTask:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", userType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", splitBounds="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->splitBounds:Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
