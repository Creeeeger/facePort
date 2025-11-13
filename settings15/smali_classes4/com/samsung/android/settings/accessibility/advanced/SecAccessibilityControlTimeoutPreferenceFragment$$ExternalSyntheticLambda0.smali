.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/SecAccessibilityControlTimeoutPreferenceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/SecAccessibilityControlTimeoutPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/SecAccessibilityControlTimeoutPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
