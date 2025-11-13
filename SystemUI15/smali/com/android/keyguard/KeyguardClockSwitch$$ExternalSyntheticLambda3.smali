.class public final synthetic Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardClockSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardClockSwitch;

    packed-switch v2, :pswitch_data_0

    sget v0, Lcom/android/keyguard/KeyguardClockSwitch;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockTargetRegions()V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mAnimateOnLayout:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockViews(ZZ)V

    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mAnimateOnLayout:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockViews(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
