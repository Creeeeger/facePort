.class public final synthetic Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/LegacyLockIconViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/LegacyLockIconViewController;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/LegacyLockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/LegacyLockIconViewController;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsActiveDreamLockscreenHosted:Z

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->updateVisibility$1()V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsDozing:Z

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->updateVisibility$1()V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mInterpolatedDarkAmount:F

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
