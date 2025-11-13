.class public final synthetic Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->$r8$lambda$tfPv9WbAoegsRTeFhYeXmlxopi4(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/android/settings/network/telephony/NetworkSelectRepository$NetworkRegistrationAndForbiddenInfo;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->$r8$lambda$0aBWKhkuEkt0yMeFm8zJT4rO1l4(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/settings/network/telephony/NetworkSelectRepository$NetworkRegistrationAndForbiddenInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
