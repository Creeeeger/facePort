.class public final Lcom/samsung/android/settings/notification/RadioPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/notification/RadioPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/RadioPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/RadioPreference$1;->this$0:Lcom/samsung/android/settings/notification/RadioPreference;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/notification/RadioPreference$1;->this$0:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    if-eq v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method
