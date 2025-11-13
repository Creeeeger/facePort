.class public final synthetic Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:[B

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda3;->f$1:[B

    iput p3, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda3;->f$1:[B

    iget v2, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda3;->f$2:I

    check-cast p1, Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->lambda$resetPasswordWithToken$7(Ljava/lang/String;[BILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
