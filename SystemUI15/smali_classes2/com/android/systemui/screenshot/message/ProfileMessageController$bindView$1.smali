.class public final Lcom/android/systemui/screenshot/message/ProfileMessageController$bindView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $animateOut:Lkotlin/jvm/functions/Function0;

.field public final synthetic $data:Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;

.field public final synthetic this$0:Lcom/android/systemui/screenshot/message/ProfileMessageController;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/screenshot/message/ProfileMessageController;Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lcom/android/systemui/screenshot/message/ProfileMessageController;",
            "Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController$bindView$1;->$animateOut:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController$bindView$1;->this$0:Lcom/android/systemui/screenshot/message/ProfileMessageController;

    iput-object p3, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController$bindView$1;->$data:Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController$bindView$1;->$animateOut:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController$bindView$1;->this$0:Lcom/android/systemui/screenshot/message/ProfileMessageController;

    iget-object p1, p1, Lcom/android/systemui/screenshot/message/ProfileMessageController;->firstRunSettings:Lcom/android/systemui/screenshot/message/ProfileFirstRunSettings;

    iget-object p0, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController$bindView$1;->$data:Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;

    iget-object p0, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;->profileType:Lcom/android/systemui/screenshot/message/ProfileMessageController$FirstRunProfile;

    check-cast p1, Lcom/android/systemui/screenshot/message/ProfileFirstRunSettingsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/screenshot/message/ProfileFirstRunSettingsImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const-string p0, "private_profile_first_run"

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string/jumbo p0, "work_profile_first_run"

    :goto_0
    iget-object p1, p1, Lcom/android/systemui/screenshot/message/ProfileFirstRunSettingsImpl;->context:Landroid/content/Context;

    const-string v1, "com.android.systemui.screenshot"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
