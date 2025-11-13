.class public final synthetic Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Landroid/content/pm/UserInfo;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result p0

    return p0

    :pswitch_1
    sget-object p0, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
