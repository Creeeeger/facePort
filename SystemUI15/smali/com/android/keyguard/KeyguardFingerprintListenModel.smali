.class public final Lcom/android/keyguard/KeyguardFingerprintListenModel;
.super Lcom/android/keyguard/KeyguardListenModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TABLE_HEADERS:Ljava/util/List;


# instance fields
.field public allowOnCurrentOccludingActivity:Z

.field public alternateBouncerShowing:Z

.field public final asStringList$delegate:Lkotlin/Lazy;

.field public biometricEnabledForUser:Z

.field public biometricPromptShowing:Z

.field public bouncerIsOrWillShow:Z

.field public canSkipBouncer:Z

.field public credentialAttempted:Z

.field public deviceInteractive:Z

.field public dreaming:Z

.field public fingerprintDisabled:Z

.field public fingerprintLockedOut:Z

.field public goingToSleep:Z

.field public keyguardGoingAway:Z

.field public keyguardIsVisible:Z

.field public keyguardOccluded:Z

.field public listening:Z

.field public occludingAppRequestingFp:Z

.field public shouldListenForFingerprintAssistant:Z

.field public strongerAuthRequired:Z

.field public switchingUser:Z

.field public systemUser:Z

.field public timeMillis:J

.field public udfps:Z

.field public userDoesNotHaveTrust:Z

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardFingerprintListenModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string/jumbo v27, "underDisplayFingerprint"

    const-string/jumbo v28, "userDoesNotHaveTrust"

    const-string/jumbo v2, "timestamp"

    const-string/jumbo v3, "time_millis"

    const-string/jumbo v4, "userId"

    const-string v5, "listening"

    const-string v6, "allowOnCurrentOccludingActivity"

    const-string v7, "alternateBouncerShowing"

    const-string v8, "biometricAllowedForUser"

    const-string v9, "biometricPromptShowing"

    const-string v10, "bouncerIsOrWillShow"

    const-string v11, "canSkipBouncer"

    const-string v12, "credentialAttempted"

    const-string v13, "deviceInteractive"

    const-string v14, "dreaming"

    const-string v15, "fingerprintDisabled"

    const-string v16, "fingerprintLockedOut"

    const-string v17, "goingToSleep"

    const-string v18, "keyguardGoingAway"

    const-string v19, "keyguardIsVisible"

    const-string v20, "keyguardOccluded"

    const-string v21, "occludingAppRequestingFp"

    const-string v22, "shouldListenSidFingerprintState"

    const-string v23, "shouldListenForFingerprintAssistant"

    const-string/jumbo v24, "strongAuthRequired"

    const-string/jumbo v25, "switchingUser"

    const-string/jumbo v26, "systemUser"

    filled-new-array/range {v2 .. v28}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->TABLE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 29

    move-object/from16 v0, p0

    const v27, 0x1ffffff

    const/16 v28, 0x0

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

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/android/keyguard/KeyguardFingerprintListenModel;-><init>(JIZZZZZZZZZZZZZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JIZZZZZZZZZZZZZZZZZZZZZZZ)V
    .locals 3

    move-object v0, p0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardListenModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    move v1, p3

    iput v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    move v1, p4

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->allowOnCurrentOccludingActivity:Z

    move v1, p6

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    move v1, p7

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricPromptShowing:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    new-instance v1, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;-><init>(Lcom/android/keyguard/KeyguardFingerprintListenModel;)V

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->asStringList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(JIZZZZZZZZZZZZZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 26

    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    goto :goto_d

    :cond_d
    move/from16 v4, p15

    :goto_d
    move/from16 p15, v4

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_e

    :cond_e
    move/from16 v4, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move/from16 v16, p17

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move/from16 v17, p18

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move/from16 v18, p19

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move/from16 v19, p20

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move/from16 v20, p21

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move/from16 v21, p22

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move/from16 v22, p23

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move/from16 v23, p24

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move/from16 v24, p25

    :goto_17
    const/high16 v25, 0x1000000

    and-int v0, v0, v25

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto :goto_18

    :cond_18
    move/from16 v0, p26

    :goto_18
    move-wide/from16 p1, v1

    move/from16 p3, v3

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move/from16 p16, v4

    move/from16 p17, v16

    move/from16 p18, v17

    move/from16 p19, v18

    move/from16 p20, v19

    move/from16 p21, v20

    move/from16 p22, v21

    move/from16 p23, v22

    move/from16 p24, v23

    move/from16 p25, v24

    move/from16 p26, v0

    invoke-direct/range {p0 .. p26}, Lcom/android/keyguard/KeyguardFingerprintListenModel;-><init>(JIZZZZZZZZZZZZZZZZZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-wide v3, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    iget-wide v5, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    iget v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->allowOnCurrentOccludingActivity:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->allowOnCurrentOccludingActivity:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricPromptShowing:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricPromptShowing:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->allowOnCurrentOccludingActivity:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricPromptShowing:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    iget v3, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->allowOnCurrentOccludingActivity:Z

    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    iget-boolean v8, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricPromptShowing:Z

    iget-boolean v9, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    iget-boolean v10, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    iget-boolean v11, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    iget-boolean v13, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    iget-boolean v14, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    move/from16 v16, v15

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    move/from16 v17, v15

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    move/from16 v18, v15

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    move/from16 v19, v15

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    move/from16 v20, v15

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    move/from16 v21, v15

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    move/from16 v22, v15

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    move/from16 v23, v15

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    move/from16 v24, v15

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    move/from16 v25, v15

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    move/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v26, v15

    const-string v15, "KeyguardFingerprintListenModel(timeMillis="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowOnCurrentOccludingActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alternateBouncerShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", biometricEnabledForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", biometricPromptShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bouncerIsOrWillShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canSkipBouncer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", credentialAttempted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceInteractive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dreaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprintDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprintLockedOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", goingToSleep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardGoingAway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardIsVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardOccluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", occludingAppRequestingFp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldListenForFingerprintAssistant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", strongerAuthRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", switchingUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", systemUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", udfps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userDoesNotHaveTrust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
