.class final Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardFingerprintListenModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/keyguard/KeyguardListenModelKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-wide v2, v2, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-wide v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->timeMillis:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->listening:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->allowOnCurrentOccludingActivity:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->alternateBouncerShowing:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricEnabledForUser:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->biometricPromptShowing:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->bouncerIsOrWillShow:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->canSkipBouncer:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->credentialAttempted:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->deviceInteractive:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->dreaming:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintDisabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->fingerprintLockedOut:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v17

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->goingToSleep:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v18

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardGoingAway:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardIsVisible:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->keyguardOccluded:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->occludingAppRequestingFp:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->shouldListenForFingerprintAssistant:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->strongerAuthRequired:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v24

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->switchingUser:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v25

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->systemUser:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v26

    iget-object v1, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardFingerprintListenModel;->udfps:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v27

    iget-object v0, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardFingerprintListenModel;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardFingerprintListenModel;->userDoesNotHaveTrust:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v28

    filled-new-array/range {v3 .. v28}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
