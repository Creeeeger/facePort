.class public final synthetic Lcom/android/settings/notification/modes/ZenModesListItemPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModesListItemPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModesListItemPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModesListItemPreference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModesListItemPreference;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v1, 0x1010429

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
