.class public final synthetic Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/SettingsHelper;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/SettingsHelper;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/android/systemui/util/SettingsHelper;->$r8$lambda$HGj36fZMjn2fhBrTeEUShnysQ0s(Lcom/android/systemui/util/SettingsHelper;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/android/systemui/util/SettingsHelper;->$r8$lambda$oxIOuAqg6_whVb_fOChBGjF_knA(Lcom/android/systemui/util/SettingsHelper;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
