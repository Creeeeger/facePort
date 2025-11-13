.class public final Lcom/samsung/android/settings/knox/KnoxUtils$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$preference:Landroidx/preference/Preference;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxUtils$1;->val$preference:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/KnoxUtils$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/settings/knox/KnoxUtils$1;->val$userId:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxUtils$1;->val$preference:Landroidx/preference/Preference;

    check-cast p2, Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "sf_reset_with_samsung_account"

    iget p0, p0, Lcom/samsung/android/settings/knox/KnoxUtils$1;->val$userId:I

    invoke-static {p2, v1, v0, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
