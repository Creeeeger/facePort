.class public final synthetic Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;ZZLjava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;

    iput-boolean p2, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$5:Landroidx/preference/PreferenceViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference$$ExternalSyntheticLambda1;->f$5:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->newActivityStart(Landroid/view/View;Landroidx/preference/PreferenceViewHolder;)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    const/4 p1, 0x0

    invoke-static {p0, v3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
