.class public final synthetic Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment;->contentObserver:Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment$1;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
