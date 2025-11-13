.class public final synthetic Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda2;->$r8$classId:I

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->$r8$clinit:I

    return-object p1

    :pswitch_0
    sget p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->$r8$clinit:I

    iget-object p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
