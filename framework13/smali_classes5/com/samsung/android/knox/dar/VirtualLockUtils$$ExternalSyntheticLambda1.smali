.class public final synthetic Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:[B

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda1;->f$0:[B

    iput p2, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda1;->f$0:[B

    iget v1, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->lambda$setResetPasswordToken$4([BILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
