.class final Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;
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
.field final synthetic this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardActiveUnlockModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    sget-object v0, Lcom/android/keyguard/KeyguardListenModelKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-wide v1, v1, Lcom/android/keyguard/KeyguardActiveUnlockModel;->timeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-wide v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->timeMillis:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->listening:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->awakeKeyguard:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->authInterruptActive:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->fpLockedOut:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->primaryAuthRequired:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->switchingUser:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->triggerActiveUnlockForAssistant:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    iget-object p0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$asStringList$2;->this$0:Lcom/android/keyguard/KeyguardActiveUnlockModel;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel;->userCanDismissLockScreen:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
