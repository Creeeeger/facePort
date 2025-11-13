.class public final synthetic Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;

    iget p0, p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->TAG:Ljava/lang/String;

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->handleAppRatioUpdated(I)V

    return p1

    :pswitch_0
    sget-object p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->TAG:Ljava/lang/String;

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->handleAppRatioUpdated(I)V

    return p1

    :pswitch_1
    sget-object p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->handleAppRatioUpdated(I)V

    return p1

    :pswitch_2
    sget-object p0, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->TAG:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/applications/appinfo/SecAppAspectRatioDetails;->handleAppRatioUpdated(I)V

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
