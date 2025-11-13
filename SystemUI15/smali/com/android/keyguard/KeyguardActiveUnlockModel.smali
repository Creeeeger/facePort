.class public final Lcom/android/keyguard/KeyguardActiveUnlockModel;
.super Lcom/android/keyguard/KeyguardListenModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TABLE_HEADERS:Ljava/util/List;


# instance fields
.field public final asStringList$delegate:Lkotlin/Lazy;

.field public authInterruptActive:Z

.field public awakeKeyguard:Z

.field public fpLockedOut:Z

.field public listening:Z

.field public primaryAuthRequired:Z

.field public switchingUser:Z

.field public timeMillis:J

.field public triggerActiveUnlockForAssistant:Z

.field public userCanDismissLockScreen:Z

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/keyguard/KeyguardActiveUnlockModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardActiveUnlockModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string/jumbo v11, "triggerActiveUnlockForAssistant"

    const-string/jumbo v12, "userCanDismissLockScreen"

    const-string/jumbo v2, "timestamp"

    const-string/jumbo v3, "time_millis"

    const-string/jumbo v4, "userId"

    const-string v5, "listening"

    const-string v6, "awakeKeyguard"

    const-string v7, "authInterruptActive"

    const-string v8, "fpLockedOut"

    const-string v9, "primaryAuthRequired"

    const-string/jumbo v10, "switchingUser"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->TABLE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x3ff

    const/4 v13, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/keyguard/KeyguardActiveUnlockModel;-><init>(JIZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JIZZZZZZZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardListenModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->timeMillis:J

    iput p3, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userId:I

    iput-boolean p4, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->listening:Z

    iput-boolean p5, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->awakeKeyguard:Z

    iput-boolean p6, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->authInterruptActive:Z

    iput-boolean p7, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->fpLockedOut:Z

    iput-boolean p8, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->primaryAuthRequired:Z

    iput-boolean p9, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->switchingUser:Z

    iput-boolean p10, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->triggerActiveUnlockForAssistant:Z

    iput-boolean p11, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userCanDismissLockScreen:Z

    new-instance p1, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;-><init>(Lcom/android/keyguard/KeyguardActiveUnlockModel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->asStringList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(JIZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move v8, v4

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move v9, v4

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move v10, v4

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    move v11, v4

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v4, p11

    :goto_9
    move-wide p1, v1

    move p3, v3

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v4

    invoke-direct/range {p0 .. p11}, Lcom/android/keyguard/KeyguardActiveUnlockModel;-><init>(JIZZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-wide v3, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->timeMillis:J

    iget-wide v5, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->timeMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userId:I

    iget v3, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->listening:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->listening:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->awakeKeyguard:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->awakeKeyguard:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->authInterruptActive:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->authInterruptActive:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->fpLockedOut:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->fpLockedOut:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->primaryAuthRequired:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->primaryAuthRequired:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->switchingUser:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->switchingUser:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->triggerActiveUnlockForAssistant:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->triggerActiveUnlockForAssistant:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userCanDismissLockScreen:Z

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userCanDismissLockScreen:Z

    if-eq p0, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->timeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->listening:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->awakeKeyguard:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->authInterruptActive:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->fpLockedOut:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->primaryAuthRequired:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->switchingUser:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->triggerActiveUnlockForAssistant:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userCanDismissLockScreen:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->timeMillis:J

    iget v2, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userId:I

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->listening:Z

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->awakeKeyguard:Z

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->authInterruptActive:Z

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->fpLockedOut:Z

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->primaryAuthRequired:Z

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->switchingUser:Z

    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->triggerActiveUnlockForAssistant:Z

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userCanDismissLockScreen:Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "KeyguardActiveUnlockModel(timeMillis="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", userId="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", listening="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", awakeKeyguard="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", authInterruptActive="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fpLockedOut="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", primaryAuthRequired="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", switchingUser="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", triggerActiveUnlockForAssistant="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", userCanDismissLockScreen="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
