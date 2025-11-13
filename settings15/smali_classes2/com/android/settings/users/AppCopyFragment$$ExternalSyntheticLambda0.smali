.class public final synthetic Lcom/android/settings/users/AppCopyFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/AppCopyFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/AppCopyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/AppCopyFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/users/AppCopyFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    sget v0, Lcom/android/settings/users/AppCopyFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/users/AppCopyFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/users/AppCopyFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/AppCopyFragment;->mHelper:Lcom/android/settingslib/users/AppCopyHelper;

    if-eqz p2, :cond_1

    iget-object p2, v0, Lcom/android/settingslib/users/AppCopyHelper;->mSelectedPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lcom/android/settingslib/users/AppCopyHelper;->mSelectedPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/users/AppCopyFragment;->mAppListChanged:Z

    move p0, p1

    :goto_1
    return p0
.end method
