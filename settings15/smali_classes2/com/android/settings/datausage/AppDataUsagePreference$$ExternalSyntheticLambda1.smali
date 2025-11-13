.class public final synthetic Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/AppDataUsagePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
