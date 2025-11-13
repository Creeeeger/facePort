.class public final synthetic Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->$r8$lambda$VD84sIQt3ejkk9-SF1MzpL04HFk(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->$r8$lambda$PyURNFylWesnFtBP3URsrY4f6G0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
