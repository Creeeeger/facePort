.class public final synthetic Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $tmp0:Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;->$tmp0:Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;->$tmp0:Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;->navController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavController;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()V

    return-void

    :pswitch_0
    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;->$tmp0:Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;->navController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavController;

    const p1, 0x7f0a0083

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    return-void

    :pswitch_1
    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;->$tmp0:Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;->navController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavController;

    const p1, 0x7f0a0083

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
