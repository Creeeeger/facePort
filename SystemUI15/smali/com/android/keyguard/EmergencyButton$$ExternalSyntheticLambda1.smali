.class public final synthetic Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButton;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget p1, p0, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/EmergencyButton;

    packed-switch p1, :pswitch_data_0

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButton;->$r8$lambda$U2-ul65dxQZsDCrj1vn5FpgiwWw(Lcom/android/keyguard/EmergencyButton;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0}, Lcom/android/keyguard/EmergencyButton;->$r8$lambda$HEMKmkVNKF-XedRWg2uz8LyJ1f8(Lcom/android/keyguard/EmergencyButton;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
