.class public final synthetic Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->lambda$isResetPasswordTokenActive$5(ILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
