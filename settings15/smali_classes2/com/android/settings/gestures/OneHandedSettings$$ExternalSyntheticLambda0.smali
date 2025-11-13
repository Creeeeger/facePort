.class public final synthetic Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/gestures/OneHandedSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/OneHandedSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/gestures/OneHandedSettings;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/gestures/OneHandedSettings;

    sget-object v0, Lcom/android/settings/gestures/OneHandedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipType:I

    :cond_0
    return-void
.end method
