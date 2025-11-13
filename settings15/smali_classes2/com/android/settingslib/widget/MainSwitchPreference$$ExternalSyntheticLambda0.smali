.class public final synthetic Lcom/android/settingslib/widget/MainSwitchPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/widget/MainSwitchPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/widget/MainSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/MainSwitchPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/widget/MainSwitchPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/widget/MainSwitchPreference;

    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method
